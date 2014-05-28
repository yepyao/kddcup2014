package features;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Hashtable;

import preprocessing.CSVFileUtil;

public class TeacherDonationNumber {
	public static void main(String[] args) throws Exception{
		FileInputStream f = new FileInputStream(args[0]); //mapping
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, String> id = new Hashtable<String, String>();
		String s = in.readLine();
		while (s != null){
			String[] temp = s.split(" ");
			id.put(temp[1], temp[0]);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[1]); //projects.csv
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>();
		s  = in.readLine();
		s = in.readLine();
		int field = 1;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectTeacher.put(splits.get(0), splits.get(field));
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, Integer> train = new Hashtable<String, Integer>();
		s = in.readLine();
		while (s != null){
			String[] temp = s.split(" ");
			train.put(id.get(temp[1]), 1);
			s = in.readLine();
		}
		in.close();
		
		CSVFileUtil cs = new CSVFileUtil(args[2]);
		Hashtable<String, Integer> teacherDonation = new Hashtable<String, Integer>();
		s  = cs.readLine();
		s = cs.readLine();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (train.get(splits.get(1)) != null){
				String teacher = projectTeacher.get(splits.get(1));
				if (teacherDonation.get(teacher) == null){
					teacherDonation.put(teacher, 1);
				}else
					teacherDonation.put(teacher, teacherDonation.get(teacher)+1);
			}
			s = cs.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			String ans = "0";
			if (teacherDonation.get(projectTeacher.get(id.get(temp[1]))) != null)
				ans = String.valueOf(teacherDonation.get(projectTeacher.get(id.get(temp[1]))));
			out.write("1 0:"+ans+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		
		f = new FileInputStream(args[5]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[6]);
		out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			String ans = "0";
			if (teacherDonation.get(projectTeacher.get(id.get(temp[1]))) != null)
				ans = String.valueOf(teacherDonation.get(projectTeacher.get(id.get(temp[1]))));
			out.write("1 0:"+ans+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

