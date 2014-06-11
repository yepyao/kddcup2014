package features;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Hashtable;

import preprocessing.CSVFileUtil;

public class RecentEssayLength {
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
		
		f = new FileInputStream(args[1]); //projects.csv
		in = new BufferedReader(new InputStreamReader(f));
		Hashtable<String, Integer> projectIndex = new Hashtable<String, Integer>();
		ArrayList<Long> time = new ArrayList<Long>();
		ArrayList<String> projectID = new ArrayList<String>();
		s  = in.readLine();
		s = in.readLine();
		int index = 0;
		SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			projectID.add(splits.get(0));
			projectIndex.put(splits.get(0), index);
			time.add(d.parse(splits.get(34)).getTime());
			index++;
			s = in.readLine();
		}
		in.close();
		
		Hashtable<String, Integer> essayLength = new Hashtable<String, Integer>();
		CSVFileUtil cs = new CSVFileUtil(args[6]);
		s  = cs.readLine();
		s = cs.readLine();
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			Integer length = 0;
			if (splits.size() > 5) length = splits.get(5).length();
			essayLength.put(splits.get(0), length);
			s = cs.readLine();
		}
		in.close();
		
		f = new FileInputStream(args[2]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[3]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("1"+"\n");
		double forwardGap = Double.valueOf(args[7])*24*3600*1000;
		double backGap = Double.valueOf(args[8])*24*3600*1000;
		while (s != null){
			String[] temp = s.split(" ");
			int position = projectIndex.get(id.get(temp[1]));
			long currentTime = time.get(position);
			int sum = 1;
			int bigger = 0;
			int currentLength = essayLength.get(id.get(temp[1]));
			for (int i = position-1; i >=0; i--){
				if (Math.abs(time.get(i) - currentTime) > forwardGap) break;
				if (essayLength.get(projectID.get(i)) > currentLength) bigger++;
				sum++;
			}
			for (int i = position+1; i < time.size(); i++){
				if (Math.abs(time.get(i) - currentTime) > backGap) break;
				if (essayLength.get(projectID.get(i)) > currentLength) bigger++;
				sum++;
			}
			//out.write("3 0:"+String.valueOf(sum)+" 1:"+String.valueOf(bigger)+" 2:"+String.valueOf((double)bigger/sum)+"\n");
			out.write("1 0:"+String.valueOf(sum)+"\n");
			s = in.readLine();
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
			int position = projectIndex.get(id.get(temp[1]));
			long currentTime = time.get(position);
			int sum = 1;
			int bigger = 0;
			int currentLength = essayLength.get(id.get(temp[1]));
			for (int i = position-1; i >=0; i--){
				if (Math.abs(time.get(i) - currentTime) > forwardGap) break;
				if (essayLength.get(projectID.get(i)) > currentLength) bigger++;
				sum++;
			}
			for (int i = position+1; i < time.size(); i++){
				if (Math.abs(time.get(i) - currentTime) > backGap) break;
				if (essayLength.get(projectID.get(i)) > currentLength) bigger++;
				sum++;
			}
			//out.write("3 0:"+String.valueOf(sum)+" 1:"+String.valueOf(bigger)+" 2:"+String.valueOf((double)bigger/sum)+"\n");
			out.write("1 0:"+String.valueOf(sum)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

