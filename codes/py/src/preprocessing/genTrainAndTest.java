package preprocessing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;

public class genTrainAndTest {
	private static final String inpath = "D:\\Users\\panye\\kddcup2014\\projects.csv\\projects.csv";
	private static final String outpath = "D:\\Users\\panye\\kddcup2014\\train";
	private static final String outpath2 = "D:\\Users\\panye\\kddcup2014\\test";
	private static final String outpath3 = "D:\\Users\\panye\\kddcup2014\\projectIDMapping";
	
	
	public static void main(String[] args) throws IOException{
		FileInputStream f = new FileInputStream(args[0]);
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[1]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		FileOutputStream f3 = new FileOutputStream(args[2]);
		BufferedWriter out2 = new BufferedWriter(new OutputStreamWriter(f3));
		FileOutputStream f4 = new FileOutputStream(args[3]);
		BufferedWriter out3 = new BufferedWriter(new OutputStreamWriter(f4));
		String s = in.readLine();
		s = in.readLine();
		Hashtable<String, Integer> h = new Hashtable<String, Integer>();
		int id = 0;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(34).equals("2010-03-14")) break;
			if (h.get(splits.get(0)) == null){
				h.put(splits.get(0), id);
				out3.write(splits.get(0)+" "+String.valueOf(id)+"\n");
				id++;
			}
			int year = Integer.valueOf(splits.get(34).substring(0, 4));
			if (year >= 2014) out2.write(s+"\n");
			else out.write(s+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
		out2.close();
		out3.close();
	}
}
