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

public class CountByTime {
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
		Hashtable<String, ArrayList<Info>> teacherInfo = new Hashtable<String, ArrayList<Info>>();
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>();
		Hashtable<String, Long> projectTime = new Hashtable<String, Long>();
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[7]);
		SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectTeacher.put(splits.get(0), splits.get(field));
			Info temp = new Info();
			temp.time = d.parse(splits.get(34)).getTime();
			projectTime.put(splits.get(0), d.parse(splits.get(34)).getTime());
			temp.projectID = splits.get(0);
			if (teacherInfo.get(splits.get(field)) == null){
				ArrayList<Info> a = new ArrayList<Info>();
				a.add(temp);
				teacherInfo.put(splits.get(field), a);
			}else
				teacherInfo.get(splits.get(field)).add(temp);
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		double gap = Double.valueOf(args[8])*365*24*3600*1000;
		while (s != null){
			String[] temp = s.split(" ");
			int hit = 0;
		//	int show = 0;
			long time = projectTime.get(id.get(temp[1]));
			String teacher = projectTeacher.get(id.get(temp[1]));
			if (teacherInfo.get(teacher) != null){
				for (int i = teacherInfo.get(teacher).size()-1; i>=0; i--){
					if (teacherInfo.get(teacher).get(i).projectID.equals(id.get(temp[1]))) break;
					else if (posH.get(teacherInfo.get(teacher).get(i).projectID) != null
							&& time - teacherInfo.get(teacher).get(i).time < gap) 
						hit++;
		//			show++;
				}
			}
			//double rate = 0;
			//if (show != 0) rate = (double)hit /show;
			//out.write("2 0:"+String.valueOf(hit)+" 1:"+String.valueOf(show)+"\n");
			out.write("1 0:"+String.valueOf(hit)+"\n");
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
			int hit = 0;
		//	int show = 0;
			long time = projectTime.get(id.get(temp[1]));
			String teacher = projectTeacher.get(id.get(temp[1]));
			if (teacherInfo.get(teacher) != null){
				for (int i = teacherInfo.get(teacher).size()-1; i>=0; i--){
					if (teacherInfo.get(teacher).get(i).projectID.equals(id.get(temp[1]))) break;
					else if (posH.get(teacherInfo.get(teacher).get(i).projectID) != null
							&& time - teacherInfo.get(teacher).get(i).time < gap) 
						hit++;
		//			show++;
				}
			}
			//double rate = 0;
			//if (show != 0) rate = (double)hit /show;
			//out.write("2 0:"+String.valueOf(hit)+" 1:"+String.valueOf(show)+"\n");
			out.write("1 0:"+String.valueOf(hit)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

