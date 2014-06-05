package features;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Hashtable;

import preprocessing.CSVFileUtil;

public class ResourcePriceEmpty {
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
		
		CSVFileUtil csv = new CSVFileUtil(args[1]);
		Hashtable<String, Integer> resourceNum = new Hashtable<String, Integer>();
		s  = csv.readLine();
		s = csv.readLine();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.size() <= 8 || splits.get(8).equals("") || splits.get(7).equals(""))
				resourceNum.put(splits.get(1), 1);
			s = csv.readLine();
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
			Double ans = Double.valueOf(0);
			if (resourceNum.get(id.get(temp[1])) != null) 
				ans = Double.valueOf(resourceNum.get(id.get(temp[1])));
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
			Double ans = Double.valueOf(0);
			if (resourceNum.get(id.get(temp[1])) != null) 
				ans = Double.valueOf(resourceNum.get(id.get(temp[1])));
			out.write("1 0:"+String.valueOf(ans)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

