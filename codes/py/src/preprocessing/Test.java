package preprocessing;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Hashtable;

public class Test {
	private static final String inpath = "D:\\Users\\panye\\kddcup2014\\outcomes.csv\\outcomes.csv";
	private static final String inpath2 = "D:\\Users\\panye\\kddcup2014\\projects.csv\\projects.csv";
	
	public static void main(String[] args) throws IOException{
		FileInputStream f = new FileInputStream(inpath);
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		FileInputStream f2 = new FileInputStream(inpath2);
		BufferedReader in2 = new BufferedReader(new InputStreamReader(f2));
		String s = in2.readLine();
		System.out.println(s);
		s = in2.readLine();
		ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
		System.out.println(splits.get(25));
		Hashtable<String, Integer> pos = new Hashtable<String, Integer>();
		int posNum = 0;
		while (s != null){
			splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (splits.get(1).equals("t")){
				pos.put(splits.get(0), 1);
				posNum++;
			}
			s = in.readLine();
		}
		s = in2.readLine();
		System.out.println(s);
		s = in2.readLine();
		int userNum = 0;
		Hashtable<String, Integer> teacher  = new Hashtable<String, Integer>();
		int sum = 0;
		int right = 0;
		while (s != null){
			splits = CSVFileUtil.fromCSVLinetoArray(s);
			if (teacher.get(splits.get(1)) == null){
				userNum++;
				if (pos.get(splits.get(0)) == null) teacher.put(splits.get(1), 1);
				else teacher.put(splits.get(1), 2);
			}else if (teacher.get(splits.get(1)) == 2){
				if (pos.get(splits.get(0)) == null) teacher.put(splits.get(1), 1);
				else{
					teacher.put(splits.get(1), 2);
					right++;
				}
				sum++;
			}
			s = in2.readLine();
		}
		System.out.println(userNum);
		System.out.println(sum+" "+right);
		in.close();
		in2.close();
	}
}
