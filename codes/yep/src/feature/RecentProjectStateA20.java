package feature;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

import data.Project;
import libsvm_interface.SVMFeature;

public class RecentProjectStateA20 extends FeatureList {

	HashMap<String, Double> feature_map = new HashMap<String, Double>();
	HashMap<String, Integer> field_map = new HashMap<String,Integer>();
	
	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		try {
			makeFeatureMap();
			makeFieldMap();
			this.feature_num = field_map.size();
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}

		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void makeFieldMap() throws Exception {
		ArrayList<Project> p_list = data.projects_list;
		int count = 0;
		for (int i = 0; i < p_list.size(); i++) {
			Project p = p_list.get(i);
			if (!field_map.containsKey(p.school_state)){
				field_map.put(p.school_state, count);
				count++;
			}
		}
	}
	private void makeFeatureMap() throws Exception {
		ArrayList<Project> p_list = data.projects_list;
		ArrayList<Long> time_list = new ArrayList<Long>();
		LinkedList<String> state_list = new LinkedList<String>();
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
				Iterator<String> iter = state_list.iterator();
				while (iter.hasNext()){
					if (p_list.get(p).school_state.equals(iter.next())) count++;
				}
				feature_map.put(p_list.get(p).projectid, mutipler*count);
				sum++;
				state_list.add(p_list.get(p).school_state);
				p++;
				
			}
			while (q < p_list.size()
					&& (p >= p_list.size() || time_list.get(q)
							- time_list.get(p) >= days * 24 * 3600 * 1000)) {
				sum--;
				state_list.removeFirst();
				q++;
				
			}
		}

	}
	

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Project project = data.projects.get(projectid);

			list.add(new SVMFeature(field_map.get(project.school_state), feature_map.get(project.projectid)));
		}

	}

}
