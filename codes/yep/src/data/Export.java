package data;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;

public class Export {
	static AllData data = null;

	public static void main(String[] args) throws Exception {
		String dir = null;
		if (args.length > 0)
			dir = args[0];
		data = AllData.getInstance(dir, "projects,outcomes");

		PrintStream outp = new PrintStream("model/export.csv");

		Iterator<Project> iter = data.projects.values().iterator();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		Date compare = dateformat.parse("2010-03-15");
		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime())
				continue;

			if (data.outcomes.get(project.projectid).is_exciting) {

				double year = (date.getTime() - compare.getTime() + 0.0) / 1000
						/ 3600 / 24 / 365;
				outp.println(year);
			}
		}
		outp.close();
	}
}
