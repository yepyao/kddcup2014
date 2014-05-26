package data;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;

import libsvm_interface.SVMLine;

public class MakeSubTrain {

	static AllData data = null;

	public static void main(String[] args) throws Exception {
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

		data = AllData.getInstance(null, "projects,outcomes");
		LinkedList<String> tt = new LinkedList<String>();
		tt.add("train");
		tt.add("test");

		for (String t : tt) {
		{
			BufferedReader reader = new BufferedReader(new FileReader(
					t+"_old.txt"));
			PrintStream outp = new PrintStream(t+"_referred.txt");
			temp = null;

			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
			// Date point = dateformat.parse("2013-06-30");
			count = 0;
			while ((temp = reader.readLine()) != null) {
				String[] arr = temp.split(" ");
				int pid = Integer.parseInt(arr[1]);
				int label = Integer.parseInt(arr[2]);

				Project project = data.projects.get(map.get(pid));

				outp.println(arr[0] + " " + arr[1] + " " + referred(project));
				count++;
			}
			System.out.println("count" + count);
			reader.close();
			outp.close();
		}
		

		{
			BufferedReader reader = new BufferedReader(new FileReader(
					t+"_old.txt"));
			PrintStream outp = new PrintStream(t+"_greatchat.txt");
			temp = null;

			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
			// Date point = dateformat.parse("2013-06-30");
			count = 0;
			while ((temp = reader.readLine()) != null) {
				String[] arr = temp.split(" ");
				int pid = Integer.parseInt(arr[1]);
				int label = Integer.parseInt(arr[2]);

				Project project = data.projects.get(map.get(pid));

				outp.println(arr[0] + " " + arr[1] + " " + greatchat(project));
				count++;
			}
			System.out.println("count" + count);
			reader.close();
			outp.close();
		}
		}

	}

	private static double referred(Project project) {
		Outcome outcome = data.outcomes.get(project.projectid);
		return outcome.teacher_referred_count;

	}

	private static double greatchat(Project project) {
		Outcome outcome = data.outcomes.get(project.projectid);
		return outcome.great_messages_proportion;

	}

	private static boolean new_exciting(Project project) {
		Outcome outcome = data.outcomes.get(project.projectid);
		if (outcome.is_exciting)
			return true;
		if (outcome.at_least_1_teacher_referred_donor && outcome.great_chat)
			return true;
		else
			return false;

	}
}
