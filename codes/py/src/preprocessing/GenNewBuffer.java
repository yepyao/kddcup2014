package preprocessing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class GenNewBuffer {
	public static void main(String[] args) throws IOException{
		double last = Double.valueOf(args[2]);
		int res = 0;
		int[] remain = new int[Integer.valueOf(args[1])];
		for (int i = 0; i < Integer.valueOf(args[1]); i++){
			FileInputStream f = new FileInputStream(args[0]+"."+String.valueOf(i));
			BufferedReader in = new BufferedReader(new InputStreamReader(f));
			String s = in.readLine();
			if (Double.valueOf(s) > last){
				res++;
				remain[i] = 1;
			}else remain[i] = 0;
			in.close();
		}
		System.out.println(res);
		FileInputStream f = new FileInputStream(args[3]);
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		String s = in.readLine();
		while (s != null){
			String[] temp = s.split(" ");
			out.write(temp[0]);
			for (int j = 1; j < temp.length; j++)
				if (remain[j-1] == 0) out.write(" "+temp[j]);
			out.write("\n");
			s = in.readLine();
		}
		out.close();
		in.close();
	}
}
