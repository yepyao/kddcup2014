package feature;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import data.AllData;

public class MakeFeature {
	public static void main(String[] args) throws Exception {
		if (args.length != 1) {
			System.err.println("Usage: [feature name]");
			System.exit(1);
		}

		ArrayList<String> map = new ArrayList<String>();
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

		AllData data = AllData.getInstance(null);

		String[] feature_names = args[0].split(",");
		for (String feature_name : feature_names) {
			LinkedList<Integer> train_pid = new LinkedList<Integer>();
			LinkedList<Integer> test_pid = new LinkedList<Integer>();

			BufferedReader reader = new BufferedReader(new FileReader(
					"train.txt"));
			temp = null;
			while ((temp = reader.readLine()) != null) {
				String[] arr = temp.split(" ");
				int newid = Integer.parseInt(arr[1]);
				train_pid.add(newid);
			}
			reader.close();
			reader = new BufferedReader(new FileReader("test.txt"));
			temp = null;
			while ((temp = reader.readLine()) != null) {
				String[] arr = temp.split(" ");
				int newid = Integer.parseInt(arr[1]);
				test_pid.add(newid);
			}
			reader.close();

			LinkedList<Double> train_feature = new LinkedList<Double>();
			LinkedList<Double> test_feature = new LinkedList<Double>();

			Feature feature = null;

			// switch
			if (feature_name.equals("yep_EssayLength")) {
				feature = new EssayLength();
			}
			if (feature_name.equals("yep_StudentReached")) {
				feature = new StudentReached();
			}
			if (feature_name.equals("yep_Price")) {
				feature = new Price();
			}
			if (feature_name.equals("yep_PriceSquare")) {
				feature = new PriceSquare();
			}

			feature.train_pid = train_pid;
			feature.test_pid = test_pid;

			feature.map = map;
			feature.data = data;

			feature.getFeature(train_feature, test_feature);

			// scale
			double mean = 0;
			Iterator<Double> iter = train_feature.iterator();
			while (iter.hasNext()) {
				mean += iter.next();
			}
			mean /= train_feature.size();

			double var = 0;
			iter = train_feature.iterator();
			while (iter.hasNext()) {
				double v = iter.next();
				var += (v - mean) * (v - mean);
			}
			var = var / train_feature.size();
			System.out.println("mean: " + mean + " var: " + var);

			PrintStream outp = new PrintStream("features/train.txt."
					+ feature_name);
			outp.println("1");
			iter = train_feature.iterator();
			while (iter.hasNext()) {
				double v = iter.next();
				v = (v - mean) / Math.sqrt(var);
				outp.println("1 0:" + v);
			}
			outp.close();

			outp = new PrintStream("features/test.txt." + feature_name);
			outp.println("1");
			iter = test_feature.iterator();
			while (iter.hasNext()) {
				double v = iter.next();
				v = (v - mean) / Math.sqrt(var);
				outp.println("1 0:" + v);
			}
			outp.close();
		}
	}
}
