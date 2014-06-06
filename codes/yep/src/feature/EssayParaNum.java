package feature;

import java.util.Iterator;
import java.util.LinkedList;

import data.Essay;
import libsvm_interface.SVMFeature;

public class EssayParaNum extends FeatureList {

	@Override
	public void getFeature(LinkedList<SVMFeature> train, LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter,train);
		
		iter = test_pid.iterator();
		fillFeature(iter,test);
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()){
			String projectid = map.get(iter.next());
			Essay essay = data.essays.get(projectid);
			list.add(new SVMFeature(0, essay.essay.split("\\\\n").length));
		}
		
	}

}