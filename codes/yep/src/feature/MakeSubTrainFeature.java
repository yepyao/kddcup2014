package feature;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintStream;
import java.util.LinkedList;

public class MakeSubTrainFeature {
	public static void main(String[] args) throws Exception {
		if (args.length != 1) {
			System.err.println("Usage: [feature name]");
			System.exit(1);
		}
		String feature_name = args[0];
		LinkedList<String> tt = new LinkedList<String>();
		tt.add("train");
		tt.add("test");

		for (String t : tt) {
			BufferedReader reader = new BufferedReader(new FileReader("xgboost_run/"+feature_name+"/pred_"+t
					+ ".txt"));
			PrintStream outp = new PrintStream("features/"+t+".txt."+feature_name);
			outp.println("1");
			String temp = null;
			while ((temp=reader.readLine())!=null){
				outp.println("1 0:"+temp);
			}
		}
	}
}
