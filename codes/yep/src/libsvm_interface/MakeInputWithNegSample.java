package libsvm_interface;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

import data.AllData;
import data.Outcome;

public class MakeInputWithNegSample {

	static ArrayList<String> map = new ArrayList<String>();
	static AllData data;

	public static void main(String[] args) throws Exception {
		if (args.length != 2) {
			System.err.println("Usage: [conf identify] [output dir]");
			System.exit(1);
		}

		BufferedReader map_reader = new BufferedReader(new FileReader(
				"./data/projectIDMapping"));
		String temp = null;
		int count = 0;
		while ((temp = map_reader.readLine()) != null) {
			String[] arr = temp.split(" ");
			if (arr.length != 2) {
				map_reader.close();
				throw new Exception("field number not equal to 2 in map file!");
			}
			String projectid = arr[0];
			int newid = Integer.parseInt(arr[1]);
			if (newid != count) {
				map_reader.close();
				throw new Exception("newid not continuous!");
			}
			map.add(projectid);
			count++;
		}
		map_reader.close();
		System.out.println("map reading ok: " + count);

		data = AllData.getInstance(null, "projects,outcomes");

		String conf_id = args[0];
		LinkedList<String> tt = new LinkedList<String>();
		tt.add("train");
		tt.add("test");

		for (String t : tt) {
			LinkedList<SVMLine> lines = new LinkedList<SVMLine>();
			BufferedReader reader = new BufferedReader(new FileReader(t
					+ ".txt"));
			temp = null;
			while ((temp = reader.readLine()) != null) {
				String[] arr = temp.split(" ");
				double label = Double.parseDouble(arr[2]);
				int newid = Integer.parseInt(arr[1]);
				SVMLine newLine = new SVMLine(label);
				newLine.projectId = newid;
				lines.add(newLine);
			}
			reader.close();
			System.out.println(t + " lines: " + lines.size());

			BufferedReader conf_reader = new BufferedReader(new FileReader(
					"./T.buf/" + conf_id + ".conf"));
			PrintStream fmap_outp = new PrintStream("xgboost_run/" + conf_id
					+ "/fmap.txt");
			temp = null;
			int f_count = 0;
			while ((temp = conf_reader.readLine()) != null) {
				if (temp.startsWith("#") || temp.startsWith("-")
						|| temp.equals(""))
					continue;
				String feature_name = temp.trim();

				reader = new BufferedReader(new FileReader("features/" + t
						+ ".txt." + feature_name));
				String feature_line = reader.readLine();
				int feature_num = Integer.parseInt(feature_line);

				for (int i = 0; i < feature_num; i++) {
					fmap_outp
							.println((f_count + i + 1) + " " + temp + i + " q");
				}

				Iterator<SVMLine> iter = lines.iterator();
				while (iter.hasNext()) {
					SVMLine line = iter.next();
					feature_line = reader.readLine();
					if (feature_line == null) {
						System.err
								.println("feature line number error: features/"
										+ t + ".txt." + feature_name);
						System.exit(1);
					}
					String[] arr = feature_line.split(" ");
					int size = Integer.parseInt(arr[0]);
					if (arr.length != size + 1) {
						System.err.println("feature format error: features/"
								+ t + ".txt." + feature_name);
						System.exit(1);
					}
					for (int i = 0; i < size; i++) {
						String feature = arr[i + 1];
						String[] nv = feature.split(":");
						int fid = Integer.parseInt(nv[0]) + f_count + 1;
						double fv = Double.parseDouble(nv[1]);
						line.features.add(new SVMFeature(fid, fv));
					}
				}
				reader.close();
				f_count += feature_num;

			}// end of each feature line
			conf_reader.close();
			fmap_outp.close();

			// begin to output
			PrintStream outp = new PrintStream(args[1] + t + "." + conf_id
					+ ".svm_buffer");
			Iterator<SVMLine> iter = lines.iterator();
			LinkedList<SVMLine> dup_lines = new LinkedList<SVMLine>();
			int count_line = 0;
			while (iter.hasNext()) {
				SVMLine line = iter.next();
				int duplicate = 1;
				if (t.equals("train") && count_line < lines.size() * 0.2)
					duplicate = 2;
				// if (t.equals("train") && count_line < lines.size() * 0.1)
				// duplicate = 3;
				if (t.equals("train") && filter(line))
					continue;
				for (int i = 0; i < duplicate; i++) {
					dup_lines.add(line);
				}
				count_line++;
			}
			System.out.println(t + " after filter lines: " + dup_lines.size());

			// if (t.equals("train")) Collections.shuffle(dup_lines);
			iter = dup_lines.iterator();
			while (iter.hasNext()) {
				SVMLine line = iter.next();
				outp.print(line.label);
				Iterator<SVMFeature> fiter = line.features.iterator();
				while (fiter.hasNext()) {
					SVMFeature feature = fiter.next();
					outp.print(" " + feature.fid + ":" + feature.fv);
				}
				outp.println();
			}
			outp.close();

			outp = new PrintStream(args[1] + t + "." + conf_id
					+ ".svm_buffer.group");
			outp.println(dup_lines.size());
			outp.close();
		}// end for "test" "train"
	}

	private static boolean filter(SVMLine line) {
		String pid = map.get(line.projectId);
		Outcome outcome = data.outcomes.get(pid);

		if (outcome.is_exciting)
			return false;
		else {
			int count = 0;
			if (outcome.at_least_1_green_donation)
				count++;
			if (outcome.at_least_1_teacher_referred_donor)
				count++;
			if (outcome.fully_funded)
				count++;
			if (outcome.great_chat)
				count++;
			if (count > 2)
				return true;
		}

		return false;
	}
}