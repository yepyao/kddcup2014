package preprocessing;

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

public class Test {
	private static final String inpath = "D:\\Users\\panye\\kddcup2014\\outcomes.csv\\outcomes.csv";
	private static final String inpath2 = "D:\\Users\\panye\\kddcup2014\\essays.csv\\essays.csv";
	private static final String inpath3 = "D:\\Users\\panye\\kddcup2014\\projectIDMapping";
	private static final String outpath = "D:\\Users\\panye\\kddcup2014\\Essays.txt";
	
	public static void main(String[] args) throws Exception{
		FileInputStream f = new FileInputStream(inpath); // outcomes.csv
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		String s = in.readLine();
		s = in.readLine();
		Hashtable<String, Integer> posH = new Hashtable<String, Integer>();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(1).equals("t")) {
				posH.put(splits.get(0), 1);
//				System.out.println(splits.get(0));
			}
			s = in.readLine();
		}
		in.close();
		
		FileOutputStream f2 = new FileOutputStream(outpath);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		int error = 0;
		int i = 0;
		CSVFileUtil csv = new CSVFileUtil(inpath2);
		s  = csv.readLine();
		s = csv.readLine();
		while (s != null){
			i++;
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (s.equals("")) error++;else{
	//			System.out.println(s+" "+i);
				if (posH.get(splits.get(0)) != null){
					out.write("1 "+splits.get(5)+"\n");
				}
				else out.write("0 "+splits.get(5)+"\n");
			}
			s = csv.readLine();
		}
		System.out.println(error);
		in.close();
		out.close();
	}
}

