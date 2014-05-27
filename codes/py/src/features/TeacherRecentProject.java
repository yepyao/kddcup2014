package features;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Hashtable;

import preprocessing.CSVFileUtil;

public class TeacherRecentProject {
	public static void main(String[] args) throws IOException, Exception{
		FileInputStream f = new FileInputStream(args[1]); //mapping
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, String> id = new Hashtable<String, String>();
		String s = in.readLine();
		while (s != null){
			String[] temp = s.split(" ");
			id.put(temp[1], temp[0]);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, Integer> train = new Hashtable<String, Integer>();
		int trainSum = 0;
		s = in.readLine();
		while (s != null){
			trainSum++;
			String[] temp = s.split(" ");
			train.put(id.get(temp[1]), 1);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[0]); // outcomes.csv
		in = new BufferedReader(new InputStreamReader(f));
		s = in.readLine();
		s = in.readLine();
		Hashtable<String, Integer> posH = new Hashtable<String, Integer>();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(1).equals("t") && train.get(splits.get(0)) != null) 	posH.put(splits.get(0), 1);
			s = in.readLine();
		}
		in.close();
		
		
		
		f = new FileInputStream(args[2]); //projects.csv
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, String> time = new Hashtable<String, String>();
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>(); 
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[7]);
		int index = 0;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectTeacher.put(splits.get(0), splits.get(1));
			time.put(splits.get(0), splits.get(34));
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		Hashtable<String, String> recentProject = new Hashtable<String, String>(); 
		s = in.readLine();
		out.write("1"+"\n");
		index = 0;
		SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		while (s != null){
			String[] temp = s.split(" ");
			String teacher = projectTeacher.get(id.get(temp[1]));
			if (recentProject.get(teacher) == null) out.write("0"+"\n"); else out.write("1 0:"+recentProject.get(teacher)+"\n");
			long t = d.parse(time.get(id.get(temp[1]))).getTime();
			recentProject.put(teacher, String.valueOf(t));
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
			String teacher = projectTeacher.get(id.get(temp[1]));
			if (recentProject.get(teacher) == null) out.write("0"+"\n"); else out.write("1 0:"+recentProject.get(teacher)+"\n");
			long t = d.parse(time.get(id.get(temp[1]))).getTime();
			recentProject.put(teacher, String.valueOf(t));
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

