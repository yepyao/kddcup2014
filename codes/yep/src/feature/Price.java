package feature;

import java.util.Iterator;
import java.util.LinkedList;

import data.Project;

public class Price extends Feature {
	@Override
	public void getFeature(LinkedList<Double> train, LinkedList<Double> test) {
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<Double> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Project project = data.projects.get(projectid);
			list.add((double) project.total_price_including_optional_support);
		}

	}
}
