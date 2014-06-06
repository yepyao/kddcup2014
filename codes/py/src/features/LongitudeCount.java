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

public class LongitudeCount {
	public static void main(String[] args) throws IOException{
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
		Hashtable<String, Integer> teacher = new Hashtable<String, Integer>();
		Hashtable<String, Integer> teacherAll = new Hashtable<String, Integer>();
		Hashtable<String, Integer> teacher2 = new Hashtable<String, Integer>();
		Hashtable<String, Integer> teacherAll2 = new Hashtable<String, Integer>();
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>();
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[7]);
		int index = 0;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			String longitude = String.valueOf(Math.floor(Double.valueOf(splits.get(field))/Integer.valueOf(args[8]))); 
			projectTeacher.put(splits.get(0), longitude);
			if (train.get(splits.get(0)) != null) index++;
			if (train.get(splits.get(0)) != null && splits.size() > 33){
//				index++;
				if (index < trainSum / 2){
					if (posH.get(splits.get(0)) != null){
						if (teacher.get(longitude) == null) teacher.put(longitude, 1);
						else teacher.put(longitude, teacher.get(longitude)+1);
					}
					if (teacherAll.get(longitude) == null) teacherAll.put(longitude, 1);
					else teacherAll.put(longitude, teacherAll.get(longitude)+1);
				}else{
					if (posH.get(splits.get(0)) != null){
						if (teacher2.get(longitude) == null) teacher2.put(longitude, 1);
						else teacher2.put(longitude, teacher2.get(longitude)+1);
					}
					if (teacherAll2.get(longitude) == null) teacherAll2.put(longitude, 1);
					else teacherAll2.put(longitude, teacherAll2.get(longitude)+1);
				}
			}
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]+"_1");
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		FileOutputStream f3 = new FileOutputStream(args[4]+"_2");
		BufferedWriter out2 = new BufferedWriter(new OutputStreamWriter(f3));
		FileOutputStream f4 = new FileOutputStream(args[4]+"_3");
		BufferedWriter out3 = new BufferedWriter(new OutputStreamWriter(f4));
		FileOutputStream f5 = new FileOutputStream(args[4]);
		BufferedWriter out4 = new BufferedWriter(new OutputStreamWriter(f5));
		s = in.readLine();
		out.write("1"+"\n");
		out2.write("1"+"\n");
		out3.write("1"+"\n");
		out4.write("3"+"\n");
		index = 0;
		while (s != null){
			String[] temp = s.split(" ");
			int one = 0;
			int two = 0;
			double three = 0;
			index++;
			if (index < trainSum / 2){
				if (teacher2.get(projectTeacher.get(id.get(temp[1]))) != null)
					one = teacher2.get(projectTeacher.get(id.get(temp[1])));
				if (teacherAll2.get(projectTeacher.get(id.get(temp[1]))) != null)
					two = teacherAll2.get(projectTeacher.get(id.get(temp[1])));
				if (two != 0) three = (double) one / two;
			}else{
				if (teacher.get(projectTeacher.get(id.get(temp[1]))) != null)
					one = teacher.get(projectTeacher.get(id.get(temp[1])));
				if (teacherAll.get(projectTeacher.get(id.get(temp[1]))) != null)
					two = teacherAll.get(projectTeacher.get(id.get(temp[1])));
				if (two != 0) three = (double) one / two;
			}
			out4.write("3 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+" 2:"+String.valueOf(three)+"\n");
 	//		out.write("2 "+"0:"+String.valueOf(two)+" 1:"+String.valueOf(three)+"\n");
			out.write("1 0:"+String.valueOf(one)+"\n");
			out2.write("1 0:"+String.valueOf(two)+"\n");
			out3.write("1 0:"+String.valueOf(three)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		out2.close();
		out3.close();
		out4.close();
		
		f = new FileInputStream(args[5]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[6]+"_1");
		out = new BufferedWriter(new OutputStreamWriter(f2));
		f3 = new FileOutputStream(args[6]+"_2");
		out2 = new BufferedWriter(new OutputStreamWriter(f3));
		f4 = new FileOutputStream(args[6]+"_3");
		out3 = new BufferedWriter(new OutputStreamWriter(f4));
		f5 = new FileOutputStream(args[6]);
		out4 = new BufferedWriter(new OutputStreamWriter(f5));
		s = in.readLine();
		out.write("1"+"\n");
		out2.write("1"+"\n");
		out3.write("1"+"\n");
		out4.write("3"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			double one = 0;
			if (teacher.get(projectTeacher.get(id.get(temp[1]))) != null){
				one += teacher.get(projectTeacher.get(id.get(temp[1])));
			}
			if (teacher2.get(projectTeacher.get(id.get(temp[1]))) != null){
				one += teacher2.get(projectTeacher.get(id.get(temp[1])));
			}
			double two = 0;
			if (teacherAll.get(projectTeacher.get(id.get(temp[1]))) != null){
				two += teacherAll.get(projectTeacher.get(id.get(temp[1])));
			}
			if (teacherAll2.get(projectTeacher.get(id.get(temp[1]))) != null){
				two += teacherAll2.get(projectTeacher.get(id.get(temp[1])));
			}
			one = one / 2;
			two = two / 2;
			double three = 0;
			if (two != 0) three = (double) one / two; 
			out4.write("3 "+"0:"+String.valueOf((int)one)+" 1:"+String.valueOf((int)two)+" 2:"+String.valueOf(three)+"\n");
	//		out.write("2 "+"0:"+String.valueOf(two)+" 1:"+String.valueOf(three)+"\n");
			out.write("1 0:"+String.valueOf((int)one)+"\n");
			out2.write("1 0:"+String.valueOf((int)two)+"\n");
			out3.write("1 0:"+String.valueOf(three)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		out2.close();
		out3.close();
		out4.close();
	}
}
