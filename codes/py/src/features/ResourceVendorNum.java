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

public class ResourceVendorNum {
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
		
		Hashtable<String, Integer> resourceVendor = new Hashtable<String, Integer>();
		CSVFileUtil csv = new CSVFileUtil(args[1]);
		s  = csv.readLine();
		s = csv.readLine();
		String last = "";
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			last = splits.get(1);
			int num = 0;
			while (last.equals(splits.get(1))){
				num++;
				s = csv.readLine();
				splits = CSVFileUtil.fromCSVLinetoArray(s);
			}
			resourceVendor.put(last, num);
		}
		in.close();
		
		f = new FileInputStream(args[2]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[3]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			int ans = 0;
			if (resourceVendor.get(id.get(temp[1])) != null) 
				ans = resourceVendor.get(id.get(temp[1]));
			s = in.readLine();
			out.write("1 0:"+String.valueOf(ans)+"\n");
		}
		in.close();
		out.close();
		
		f = new FileInputStream(args[4]); //test.txt
		in = new BufferedReader(new InputStreamReader(f));
		f2 = new FileOutputStream(args[5]);
		out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		while (s != null){
			String[] temp = s.split(" ");
			int ans = 0;
			if (resourceVendor.get(id.get(temp[1])) != null) 
				ans = resourceVendor.get(id.get(temp[1]));
			s = in.readLine();
			out.write("1 0:"+String.valueOf(ans)+"\n");
		}
		in.close();
		out.close();
	}
}

