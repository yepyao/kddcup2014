package preprocessing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public class SplitBuffer {
	public static void main(String[] args) throws IOException{
		for (int i = 0; i < Integer.valueOf(args[1]); i++){
			FileInputStream f = new FileInputStream(args[0]);
			BufferedReader in = new BufferedReader(new InputStreamReader(f));
			FileOutputStream f2 = new FileOutputStream(args[0]+"_"+String.valueOf(i));
			BufferedWriter out = new BufferedWriter(new OutputStreamWriter(f2));
			String s = in.readLine();
			while (s != null){
				String[] temp = s.split(" ");
				out.write(temp[0]);
				for (int j = 1; j < temp.length; j++)
					if (j != i+1) out.write(" "+temp[j]);
				out.write("\n");
				s = in.readLine();
			}
			in.close();
			out.close();
		}
	}
}
