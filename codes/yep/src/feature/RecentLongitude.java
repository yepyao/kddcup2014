package feature;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;

import data.Project;
import libsvm_interface.SVMFeature;

public class RecentLongitude extends FeatureList {

	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Project project = data.projects.get(projectid);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date compare = dateFormat.parse("2010-01-01");
				Date compare2 = dateFormat.parse("2013-01-01");
				Date date = dateFormat.parse(project.date_posted);
				if (date.getTime()>=compare.getTime() && date.getTime()<= compare2.getTime())
					list.add(new SVMFeature(0, project.school_longitude));
				else
					list.add(new SVMFeature(-1, 0));
			} catch (Exception e) {
				e.printStackTrace();
				System.exit(1);

			}
		}

	}

}
