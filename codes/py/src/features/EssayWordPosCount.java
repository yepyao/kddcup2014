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

public class EssayWordPosCount {
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
		Hashtable<String, Integer> hit1 = new Hashtable<String, Integer>();
		Hashtable<String, Integer> show1 = new Hashtable<String, Integer>();
		Hashtable<String, Integer> hit2 = new Hashtable<String, Integer>();
		Hashtable<String, Integer> show2 = new Hashtable<String, Integer>();
		Hashtable<String, String> projectEssay = new Hashtable<String, String>();
		s  = in.readLine();
		s = in.readLine();
		int field = Integer.valueOf(args[7]);
		int index = 0;
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectEssay.put(splits.get(0), splits.get(field));
			if (train.get(splits.get(0)) != null) index++;
			if (train.get(splits.get(0)) != null && splits.size() > 5){
				String[] words = splits.get(field).split("\\s");
				for (int i = 0; i <words.length; i++){
					String newWord = "";
					words[i] = words[i].toLowerCase();
					for (int j = 0; j < words[i].length(); j++)
						if (words[i].charAt(j) >= 'a' && words[i].charAt(j) <= 'z')
							newWord = newWord + words[i].charAt(j);
					words[i] = newWord;
				}
				
				Hashtable<String, Integer> occur = new Hashtable<String, Integer>();
				if (index < trainSum / 2){
					if (posH.get(splits.get(0)) != null){
						for (int i = 0; i < words.length; i++)
							if (occur.get(words[i]) == null){
								occur.put(words[i], 1);
								if (hit1.get(words[i]) == null) hit1.put(words[i], 1);
								else hit1.put(words[i], hit1.get(words[i])+1);
							}
					}
					occur = new Hashtable<String, Integer>();
					for (int i = 0; i < words.length; i++)
						if (occur.get(words[i]) == null){
							occur.put(words[i], 1);
							if (show1.get(words[i]) == null) show1.put(words[i], 1);
							else show1.put(words[i], show1.get(words[i])+1);
						}
				}else{
					if (posH.get(splits.get(0)) != null){
						for (int i = 0; i < words.length; i++)
							if (occur.get(words[i]) == null){
								occur.put(words[i], 1);
								if (hit2.get(words[i]) == null) hit2.put(words[i], 1);
								else hit2.put(words[i], hit2.get(words[i])+1);
							}
					}
					occur = new Hashtable<String, Integer>();
					for (int i = 0; i < words.length; i++)
						if (occur.get(words[i]) == null){
							occur.put(words[i], 1);
							if (show2.get(words[i]) == null) show2.put(words[i], 1);
							else show2.put(words[i], show2.get(words[i])+1);
						}
				}
			}
			s = in.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		index = 0;
		while (s != null){
			String[] temp = s.split(" ");
			String[] words = projectEssay.get(id.get(temp[1])).split("\\s");
			for (int i = 0; i <words.length; i++){
				String newWord = "";
				words[i] = words[i].toLowerCase();
				for (int j = 0; j < words[i].length(); j++)
					if (words[i].charAt(j) >= 'a' && words[i].charAt(j) <= 'z')
						newWord = newWord + words[i].charAt(j);
				words[i] = newWord;
			}
			double max = 0;
			index++;
			if (index < trainSum / 2){
				for (int i = 0; i < words.length; i++)
					if (hit2.get(words[i]) != null)
						max = Math.max(max, Double.valueOf(hit2.get(words[i])) / (double)show2.get(words[i]));
			}else{
				for (int i = 0; i < words.length; i++)
					if (hit1.get(words[i]) != null)
						max = Math.max(max, Double.valueOf(hit1.get(words[i])) / (double)show1.get(words[i]));
			}
			out.write("1 0:"+String.valueOf(max)+"\n");
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
			String[] words = projectEssay.get(id.get(temp[1])).split("\\s");
			for (int i = 0; i <words.length; i++){
				String newWord = "";
				words[i] = words[i].toLowerCase();
				for (int j = 0; j < words[i].length(); j++)
					if (words[i].charAt(j) >= 'a' && words[i].charAt(j) <= 'z')
						newWord = newWord + words[i].charAt(j);
				words[i] = newWord;
			}
			double max1 = 0;
			double max2 = 0;
			for (int i = 0; i < words.length; i++)
				if (hit1.get(words[i]) != null)
					max1 = Math.max(max1, Double.valueOf(hit1.get(words[i])) / (double)show1.get(words[i]));
			for (int i = 0; i < words.length; i++)
				if (hit2.get(words[i]) != null)
					max2 = Math.max(max2, Double.valueOf(hit2.get(words[i])) / (double)show2.get(words[i]));
			double ans = (max1 + max2) / 2;
			out.write("1 0:"+String.valueOf(ans)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

