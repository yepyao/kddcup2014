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

public class TeacherAccPosRatio {
	public static void main(String[] args) throws IOException{
		FileInputStream f = new FileInputStream(args[0]); // outcomes.csv
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		String s = in.readLine();
		s = in.readLine();
		Hashtable<String, Integer> posH = new Hashtable<String, Integer>();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(1).equals("t")) 	posH.put(splits.get(0), 1);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[1]); //mapping
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, String> id = new Hashtable<String, String>();
		s = in.readLine();
		while (s != null){
			String[] temp = s.split(" ");
			id.put(temp[1], temp[0]);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[2]); //projects.csv
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, Integer> teacher = new Hashtable<String, Integer>();
		Hashtable<String, Integer> teacherAll = new Hashtable<String, Integer>();
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>();
		s  = in.readLine();
		s = in.readLine();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectTeacher.put(splits.get(0), splits.get(1));
			if (splits.size() > 33 && posH.get(splits.get(0)) != null){
				if (teacher.get(splits.get(1)) == null) teacher.put(splits.get(1), 1);
				else teacher.put(splits.get(1), teacher.get(splits.get(1))+1);
			}else if (splits.size() > 33){
				if (teacherAll.get(splits.get(1)) == null) teacherAll.put(splits.get(1), 1);
				else teacherAll.put(splits.get(1), teacherAll.get(splits.get(1))+1);
			}
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		double avg = 0;
		double deviation = 0;
		int n = 0;
		ArrayList<Double> num = new ArrayList<Double>();
		out.write("1"+"\n");
		while (s != null){
			n++;
			String[] temp = s.split(" ");
			double ans = 0;
			if (teacher.get(projectTeacher.get(id.get(temp[1]))) != null && teacherAll.get(projectTeacher.get(id.get(temp[1]))) != null)
				ans = (double)teacher.get(projectTeacher.get(id.get(temp[1]))) / (double)teacherAll.get(projectTeacher.get(id.get(temp[1])));
			num.add(ans);
			avg += ans;
			s = in.readLine();
		}
		avg = avg / n;
		for (int i = 0; i < num.size(); i++)
			deviation += (num.get(i) - avg) * (num.get(i) - avg);
		deviation = Math.sqrt(deviation / n);
		for (int i = 0; i < num.size(); i++)
			out.write("1 0:"+String.valueOf((num.get(i)-avg)/deviation)+"\n");
		in.close();
		out.close();
		System.out.println(avg+" "+deviation);
		
		f = new FileInputStream(args[5]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[6]);
		out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			double ans = 0;
			if (teacher.get(projectTeacher.get(id.get(temp[1]))) != null && teacherAll.get(projectTeacher.get(id.get(temp[1]))) != null)
				ans = (double)teacher.get(projectTeacher.get(id.get(temp[1]))) / (double)teacherAll.get(projectTeacher.get(id.get(temp[1])));
			ans = (ans - avg) /deviation;
			out.write("1 0:"+String.valueOf(ans)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

