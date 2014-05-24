package data;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
		PrintStream outp2 = new PrintStream("model/export_ex.csv");

		Iterator<Project> iter = data.projects.values().iterator();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		Date compare = dateformat.parse("2010-03-15");
		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime())
				continue;
			
			double latitude = project.school_latitude;
			double longitude = project.school_longitude;	
			if (data.outcomes.containsKey(project.projectid)) {
				if (dateformat.parse(project.date_posted).getTime() > dateformat.parse("2013-10-06").getTime())
				//if (data.outcomes.get(project.projectid).is_exciting)
					outp.println(latitude+","+longitude);
			}else outp2.println(latitude+","+longitude);
				
		}
		outp.close();
		outp2.close();
	}
}
