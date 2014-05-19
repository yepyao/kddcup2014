package data;

public class Stat {

	public static void main(String[] args) {
		String dir = null;
		if (args.length > 0) dir = args[0];
		AllData data = AllData.getInstance(dir);

	}

}
