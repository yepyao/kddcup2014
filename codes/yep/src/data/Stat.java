package data;

import java.util.HashSet;
import java.util.Iterator;

public class Stat {

	public static void main(String[] args) {
		String dir = null;
		if (args.length > 0)
			dir = args[0];
		AllData data = AllData.getInstance(dir);
		HashSet<String> schoolids = new HashSet<String>();
		Iterator<Project> iter = data.projects.values().iterator();
		while (iter.hasNext()) {
			Project project = iter.next();
			if (!schoolids.contains(project.schoolid))
				schoolids.add(project.schoolid);
		}
		System.out.println("schoolid num: "+schoolids.size());

	}

}
