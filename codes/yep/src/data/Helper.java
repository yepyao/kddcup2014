package data;

import java.util.LinkedList;

public class Helper {
	public static int count_csv_field(String line){
		String[] arr = line.trim().split(",");
		int count = 0;
		int p = 0;
		while (p<arr.length){
			if (count_comma(arr[p])%2 == 1){
				p++;
				if (p >= arr.length) return 0;
				while (!(count_comma(arr[p])%2 == 1)) {
					p++;
					if (p >= arr.length) return 0;
				}
			}
			count++;
			p++;
		}
		return count;
	}
	public static String[] split_csv(String line){
		String[] arr = line.trim().split(",");
		LinkedList<String> list = new LinkedList<String>();
		int p = 0;
		while (p<arr.length){
			String new_field = "";
			if (count_comma(arr[p])%2 == 1){
				new_field += arr[p];
				p++;
				while (!(count_comma(arr[p])%2 == 1)) {
					new_field += arr[p];
					p++;
				}
			}else new_field = arr[p];
			list.add(new_field);
			p++;
		}
		String[] new_arr = new String[list.size()];
		for (int i=0;i<new_arr.length;i++) new_arr[i] = list.get(i);
		return new_arr;
	}

	private static int count_comma(String str) {
		int count = 0;
		for (int i=0;i<str.length();i++) 
			if (str.charAt(i) == '"') count++;
		return count;
	}
}
