package feature;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

import data.Project;
import libsvm_interface.SVMFeature;

public class RecentProjectEssayA20 extends FeatureList {

	HashMap<String, Double> feature_map = new HashMap<String, Double>();

	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		try {
			makeFeatureMap();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}

		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void makeFeatureMap() throws Exception {
		ArrayList<Project> p_list = data.projects_list;
		ArrayList<Long> time_list = new ArrayList<Long>();
		LinkedList<Double> essay_list = new LinkedList<Double>();
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < p_list.size(); i++) {
			time_list
					.add(dateformat.parse(p_list.get(i).date_posted).getTime());
		}

		final long days = 20;
		double sum = 0;
		int p = 0, q = 0;
		while (q < p_list.size()) {
			while (p < p_list.size()
					&& time_list.get(q) - time_list.get(p) < days * 24 * 3600 * 1000) {
				double mutipler = (days+1.0)/((time_list.get(q) - time_list.get(p))/24/3600/1000+1);
				int count = 0;
				Iterator<Double> iter = essay_list.iterator();
				while (iter.hasNext()){
					if (iter.next()<getEssayLength(p_list.get(p))) count++;
				}
				feature_map.put(p_list.get(p).projectid, mutipler*count);
				sum++;
				essay_list.add(getEssayLength(p_list.get(p)));
				p++;
				
			}
			while (q < p_list.size()
					&& (p >= p_list.size() || time_list.get(q)
							- time_list.get(p) >= days * 24 * 3600 * 1000)) {
				sum--;
				essay_list.removeFirst();
				q++;
				
			}
		}

	}
	private Double getEssayLength(Project project){
		return (double)data.essays.get(project.projectid).essay.length();
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Project project = data.projects.get(projectid);

			list.add(new SVMFeature(0, feature_map.get(project.projectid)));
		}

	}

}
