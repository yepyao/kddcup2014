package data;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class Stat {
	static AllData data = null;
	
	public static void main(String[] args) throws Exception {
		String dir = null;
		if (args.length > 0)
			dir = args[0];
		data = AllData.getInstance(dir, "projects,resources,essays,outcomes");

		/*
		Iterator<Project> iter = data.projects.values().iterator();
		PrintStream outp = new PrintStream("model/stat.check.date.csv");
		while (iter.hasNext()) {
			Project project = iter.next();
			if (data.outcomes.containsKey(project.projectid)) {
				Outcome outcome = data.outcomes.get(project.projectid);
				outp.println(project.projectid + "," + project.date_posted
						+ "," + outcome.is_exciting + "," + outcome.origin);
			}
		}
		outp.close();
		System.exit(0);
		 */
		HashMap<String, Integer> field_map = new HashMap<String, Integer>();
		Iterator<Project> iter = data.projects.values().iterator();
		
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		Date compare = dateformat.parse("2010-03-15");
		
		int count = 0;
		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime()) continue;
			
			String field = getString(project);
			if (!field_map.containsKey(field)) {
				field_map.put(field, count);
				count++;
			}
		}
		System.out.println("field_map num: " + count);

		int[] all_count = new int[count];
		int[] ex_count = new int[count];
		iter = data.projects.values().iterator();

		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime()) continue;
			
			if (data.outcomes.containsKey(project.projectid)) {
				int index = field_map.get(getString(project));
				all_count[index]++;
				if (data.outcomes.get(project.projectid).is_exciting)
					ex_count[index]++;
			}
		}

		for (String field : field_map.keySet()) {
			int index = field_map.get(field);
			System.out.print(field);
			System.out.print("\t" + all_count[index]);
			System.out.print("\t" + ex_count[index]);
			System.out.println("\t" + (double) ex_count[index]
					/ all_count[index]);
		}

	}

	private static String getString(Project project) {
		return (project.total_price_including_optional_support>10000)?"True":"False" ;
		
		//return project.grade_level;
		//return (project.teacher_teach_for_america)?"T":"F";
		/*
		boolean has_keyword = false;
		Essay essay = data.essays.get(project.projectid);
		
		String essay_str = essay.title.toLowerCase();
		if (essay_str.contains("music")
				|| essay_str.contains("art")
				|| essay_str.contains("photo")
				|| essay_str.contains("?")){
			has_keyword = true;
		}
		return (has_keyword)?"True":"False";
		*/
		/*
		ArrayList<Resource> resources = data.project2resourses.get(project.projectid);
		boolean samevandor = true;
		int vendorid = resources.get(0).vendorid;
		String vendor = resources.get(0).vendor_name;
		for(int i=1;i<resources.size();i++){
			if (resources.get(i).vendorid != vendorid){
				samevandor = false;
				break;
			}
		}
		return (samevandor)?vendor:"not_same";
		*/
	}

}
