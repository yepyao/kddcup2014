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

public class LearningForCount {
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
		int n = Integer.valueOf(args[9]);
		int unit = trainSum / n + 1;
		
		f = new FileInputStream(args[0]); // outcomes.csv
		in = new BufferedReader(new InputStreamReader(f));
		s = in.readLine();
		s = in.readLine();
		Hashtable<String, Integer> posH = new Hashtable<String, Integer>();
		int label = Integer.valueOf(args[8]);
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(label).equals("t") && train.get(splits.get(0)) != null) 	posH.put(splits.get(0), 1);
			s = in.readLine();
		}
		in.close();
		
		
		
		f = new FileInputStream(args[2]); //projects.csv
		in = new BufferedReader(new InputStreamReader(f));
		ArrayList<Hashtable<String, Integer>> hit = new ArrayList<Hashtable<String, Integer>>();
		ArrayList<Hashtable<String, Integer>> show = new ArrayList<Hashtable<String, Integer>>();
		for (int i = 0; i < n; i++){
			Hashtable<String, Integer> temp = new Hashtable<String, Integer>();
			hit.add(temp);
			temp = new Hashtable<String, Integer>();
			show.add(temp);
		}
			
		Hashtable<String, String> projectTeacher = new Hashtable<String, String>();
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[7]);
		int index = 0;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectTeacher.put(splits.get(0), splits.get(field));
			if (train.get(splits.get(0)) != null && splits.size() > 33){
				index++;
				int part = index / unit;
				if (posH.get(splits.get(0)) != null){
					if (hit.get(part).get(splits.get(field)) == null) hit.get(part).put(splits.get(field), 1);
					else hit.get(part).put(splits.get(field), hit.get(part).get(splits.get(field))+1);
				}
				if (show.get(part).get(splits.get(field)) == null) show.get(part).put(splits.get(field), 1);
				else show.get(part).put(splits.get(field), show.get(part).get(splits.get(field))+1);
			}
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("3"+"\n");
		index = 0;
		while (s != null){
			String[] temp = s.split(" ");
			int one = 0;
			int two = 0;
			double three = 0;
			index++;
			int part = index / unit;
			for (int i = 0; i < n; i++)
				if (i != part){
					if (hit.get(i).get(projectTeacher.get(id.get(temp[1]))) != null)
						one  = one + hit.get(i).get(projectTeacher.get(id.get(temp[1])));
					if (show.get(i).get(projectTeacher.get(id.get(temp[1]))) != null)
						two  = two + show.get(i).get(projectTeacher.get(id.get(temp[1])));
				}
			if (two != 0) three = (double) one / two;
			out.write("3 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+" 2:"+String.valueOf(three)+"\n");
	//		out.write("2 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		
		f = new FileInputStream(args[5]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[6]);
		out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("3"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			double one = 0;
			double two = 0;
			for (int i = 0; i < n; i++){
				if (hit.get(i).get(projectTeacher.get(id.get(temp[1]))) != null)
					one  = one + hit.get(i).get(projectTeacher.get(id.get(temp[1])));
				if (show.get(i).get(projectTeacher.get(id.get(temp[1]))) != null)
					two  = two + show.get(i).get(projectTeacher.get(id.get(temp[1])));
			}
//			one = one * (n-1) / n;
//			two = two * (n-1) / n;
			double three = 0;
			if (two != 0) three = (double) one / two; 
			out.write("3 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+" 2:"+String.valueOf(three)+"\n");
	//		out.write("2 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

