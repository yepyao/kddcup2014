package feature;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import data.Essay;
import data.Project;
import libsvm_interface.SVMFeature;

public class TeacherRecentProject extends FeatureList {

	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		try {
			Iterator<Integer> iter = train_pid.iterator();
			fillFeature(iter, train);

			iter = test_pid.iterator();
			fillFeature(iter, test);
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list)
			throws Exception {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Project project = data.projects.get(projectid);
			ArrayList<Project> projects = data.teacher2projects
					.get(project.teacher_acctid);

			int count = 0;
			final long days = 20;
			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < projects.size(); i++) {
				Project p = projects.get(i);
				if (Math.abs(dateformat.parse(p.date_posted).getTime()
						- dateformat.parse(project.date_posted).getTime()) < days * 24 * 3600 * 1000)
					count++;
			}

			list.add(new SVMFeature(0, count));
		}

	}
}
