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

public class ResourceVendorPosCount {
	public static void main(String[] args) throws Exception{
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
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		int index = 0;
		s = in.readLine();
		while (s != null){
			index++;
			String[] temp = s.split(" ");
			if (index < trainSum /2) train.put(id.get(temp[1]), 0);
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
		
		
		
		Hashtable<String, Integer> vendor = new Hashtable<String, Integer>();
		Hashtable<String, Integer> vendorAll = new Hashtable<String, Integer>();
		Hashtable<String, Integer> vendor2 = new Hashtable<String, Integer>();
		Hashtable<String, Integer> vendorAll2 = new Hashtable<String, Integer>();
		Hashtable<String, ArrayList<String>> projectVendor = new Hashtable<String, ArrayList<String>>();
		CSVFileUtil csv = new CSVFileUtil(args[2]); //resources.csv
		s  = csv.readLine();
		s = csv.readLine();
		int field = Integer.valueOf(args[7]);
		String last = "";
		while (s != null){
			ArrayList<String> splits = CSVFileUtil.fromCSVLinetoArray(s);
			Hashtable<String, Integer> h = new Hashtable<String, Integer>();
			last = splits.get(1);
			while (last.equals(splits.get(1))){
				if (h.get(splits.get(field)) == null){
					h.put(splits.get(field), 1);
					if (projectVendor.get(splits.get(1))  == null){
						ArrayList<String> temp = new ArrayList<String>();
						temp.add(splits.get(field));
						projectVendor.put(splits.get(1), temp);
					}else{
						projectVendor.get(splits.get(1)).add(splits.get(field));
					}
					if (train.get(splits.get(1)) != null){
						if (train.get(splits.get(1)) == 0){
							if (posH.get(splits.get(1)) != null){
								if (vendor.get(splits.get(field)) == null) vendor.put(splits.get(field), 1);
								else vendor.put(splits.get(field), vendor.get(splits.get(field))+1);
							}
							if (vendorAll.get(splits.get(field)) == null) vendorAll.put(splits.get(field), 1);
							else vendorAll.put(splits.get(field), vendorAll.get(splits.get(field))+1);
						}else{
							if (posH.get(splits.get(1)) != null){
								if (vendor2.get(splits.get(field)) == null) vendor2.put(splits.get(field), 1);
								else vendor2.put(splits.get(field), vendor2.get(splits.get(field))+1);
							}
							if (vendorAll2.get(splits.get(field)) == null) vendorAll2.put(splits.get(field), 1);
							else vendorAll2.put(splits.get(field), vendorAll2.get(splits.get(field))+1);
						}
					}
				}
				s = csv.readLine();
				if (s == null) break;
				splits = CSVFileUtil.fromCSVLinetoArray(s);
			}
		}
		
		f = new FileInputStream(args[3]); //train.txt
		in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		s = in.readLine();
		out.write("3"+"\n");
		index = 0;
		while (s != null){
			String[] temp = s.split(" ");
			double one = 0;
			double two = 0;
			double three = 0;
			index++;
			if (index < trainSum / 2){
				if (projectVendor.get(id.get(temp[1])) != null){
					for (int i = 0; i < projectVendor.get(id.get(temp[1])).size(); i++){
						if (vendor2.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
							one = one + vendor2.get(projectVendor.get(id.get(temp[1])).get(i));
						if (vendorAll2.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
							two = two + vendorAll2.get(projectVendor.get(id.get(temp[1])).get(i));
						if (two != 0) three = three + one / two;
					}
					one = one / projectVendor.get(id.get(temp[1])).size();
					two = two /projectVendor.get(id.get(temp[1])).size();
					three = three /projectVendor.get(id.get(temp[1])).size();
				}
			}else{
				if (projectVendor.get(id.get(temp[1])) != null){
					for (int i = 0; i < projectVendor.get(id.get(temp[1])).size(); i++){
						if (vendor.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
							one = one + vendor.get(projectVendor.get(id.get(temp[1])).get(i));
						if (vendorAll.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
							two = two + vendorAll.get(projectVendor.get(id.get(temp[1])).get(i));
						if (two != 0) three = three + one / two;
					}
					one = one / projectVendor.get(id.get(temp[1])).size();
					two = two /projectVendor.get(id.get(temp[1])).size();
					three = three /projectVendor.get(id.get(temp[1])).size();
				}
			}
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
			double three = 0;
			if (projectVendor.get(id.get(temp[1])) != null){
				for (int i = 0; i < projectVendor.get(id.get(temp[1])).size(); i++){
					if (vendor2.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
						one = one + vendor2.get(projectVendor.get(id.get(temp[1])).get(i));
					if (vendorAll2.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
						two = two + vendorAll2.get(projectVendor.get(id.get(temp[1])).get(i));
					if (two != 0) three = three + one / two;
				}
				one = one / projectVendor.get(id.get(temp[1])).size();
				two = two /projectVendor.get(id.get(temp[1])).size();
				three = three /projectVendor.get(id.get(temp[1])).size();
			}
			double one2 = 0;
			double two2 = 0;
			double three2 = 0;
			if (projectVendor.get(id.get(temp[1])) != null){
				for (int i = 0; i < projectVendor.get(id.get(temp[1])).size(); i++){
					if (vendor.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
						one2 = one2 + vendor.get(projectVendor.get(id.get(temp[1])).get(i));
					if (vendorAll.get(projectVendor.get(id.get(temp[1])).get(i)) != null)
						two2 = two2 + vendorAll.get(projectVendor.get(id.get(temp[1])).get(i));
					if (two2 != 0) three2 = three2 + one2 / two2;
				}
				one2 = one2 / projectVendor.get(id.get(temp[1])).size();
				two2 = two2 /projectVendor.get(id.get(temp[1])).size();
				three2 = three2 /projectVendor.get(id.get(temp[1])).size();
			}
			one2 = (one2 + one) / 2;
			two2 = (two2 + two) / 2;
			three2 = (three2 + three) / 2;
			out.write("3 "+"0:"+String.valueOf(one2)+" 1:"+String.valueOf(two2)+" 2:"+String.valueOf(three2)+"\n");
	//		out.write("2 "+"0:"+String.valueOf(one)+" 1:"+String.valueOf(two)+"\n");
			s = in.readLine();
		}
		in.close();
		out.close();
	}
}

