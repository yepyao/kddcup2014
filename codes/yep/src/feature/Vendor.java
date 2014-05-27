package feature;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

import data.Essay;
import data.Project;
import data.Resource;
import libsvm_interface.SVMFeature;

public class Vendor extends FeatureList {

	HashMap<String, Integer> field_map = new HashMap<String, Integer>();

	int[] all_count = null;
	int[] ex_count = null;

	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		try {
			make_field();

		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void make_field() throws Exception {

		Iterator<Project> iter = data.projects.values().iterator();

		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		Date compare = dateformat.parse("2010-03-15");

		int count = 0;
		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime())
				continue;

			String field = getString(project);
			if (!field_map.containsKey(field)) {
				field_map.put(field, count);
				count++;
			}
		}
		System.out.println("field_map num: " + count);

		all_count = new int[count];
		ex_count = new int[count];
		iter = data.projects.values().iterator();

		while (iter.hasNext()) {
			Project project = iter.next();
			Date date = dateformat.parse(project.date_posted);
			if (date.getTime() < compare.getTime())
				continue;

			if (data.outcomes.containsKey(project.projectid)) {
				int index = field_map.get(getString(project));
				all_count[index]++;
				if (data.outcomes.get(project.projectid).is_exciting)
					ex_count[index]++;
			}
		}

	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			String vendor = getString(data.projects.get(projectid));
			int index = -1;
			if (field_map.containsKey(vendor))
				index = field_map.get(vendor);
			double ratio = 0;
			if (index != -1) {
				ratio = (double) ex_count[index] / all_count[index];
			}
			list.add(new SVMFeature(0, ratio));
		}

	}

	private String getString(Project project) {

		ArrayList<Resource> resources = data.project2resourses
				.get(project.projectid);
		boolean samevandor = true;
		int vendorid = resources.get(0).vendorid;
		String vendor = resources.get(0).vendor_name;
		for (int i = 1; i < resources.size(); i++) {
			if (resources.get(i).vendorid != vendorid) {
				samevandor = false;
				break;
			}
		}
		return (samevandor) ? vendor : "not_same";

	}

}
