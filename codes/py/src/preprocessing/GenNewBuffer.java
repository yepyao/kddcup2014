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
		double max = last;
		int maxF = -1;
		for (int i = 0; i < Integer.valueOf(args[1]); i++){
			FileInputStream f = new FileInputStream(args[0]+"."+String.valueOf(i));
			BufferedReader in = new BufferedReader(new InputStreamReader(f));
			String s = in.readLine();
			if (Double.valueOf(s) > max){
				max = Double.valueOf(s);
				maxF = i;
			}
			in.close();
		}
		FileInputStream f = new FileInputStream(args[3]);
		BufferedReader in = new BufferedReader(new InputStreamReader(f));
		FileOutputStream f2 = new FileOutputStream(args[4]);
		BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
		String s = in.readLine();
		String[] temp = s.split(" ");
		if (maxF != -1) {
			System.out.println(temp[maxF+1].split(":")[0]);
			System.out.println(maxF);
		}
		else System.out.println(-1);
		while (s != null){
			temp = s.split(" ");
			out.write(temp[0]);
			for (int j = 1; j < temp.length; j++)
				if (j != maxF+1) out.write(" "+temp[j]);
			out.write("\n");
			s = in.readLine();
		}
		out.close();
		in.close();
	}
}
