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

public class HighDimFeature {
	public static void main(String[] args) throws IOException{
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
		Hashtable<String, Integer> SchoolCity = new Hashtable<String, Integer>();
		Hashtable<String, String> projectSchoolCity = new Hashtable<String, String>();
		int SchoolCityNum = 0;
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[6]);
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectSchoolCity.put(splits.get(0), splits.get(field));
			if (splits.size() > 33){
				if (SchoolCity.get(splits.get(field)) == null){
					SchoolCity.put(splits.get(field), SchoolCityNum);
					SchoolCityNum++;
				}
			}
			s = in.readLine();
		}
		in.close();
		System.out.println(SchoolCityNum);
		
		f = new FileInputStream(args[2]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[3]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write(String.valueOf(SchoolCityNum)+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			out.write(String.valueOf(SchoolCityNum));
			for (int i = 0; i < SchoolCityNum; i++){
				if (i == SchoolCity.get(projectSchoolCity.get(id.get(temp[1]))))
					out.write(" "+String.valueOf(i)+":1");
				else
					out.write(" "+String.valueOf(i)+":0");
			}
			out.write("\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		
		f = new FileInputStream(args[4]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[5]);
		out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write(String.valueOf(SchoolCityNum)+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			out.write(String.valueOf(SchoolCityNum));
			for (int i = 0; i < SchoolCityNum; i++){
				if (i == SchoolCity.get(projectSchoolCity.get(id.get(temp[1]))))
					out.write(" "+String.valueOf(i)+":1");
				else
					out.write(" "+String.valueOf(i)+":0");
			}
			out.write("\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

