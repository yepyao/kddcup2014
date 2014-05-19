package feature;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import data.AllData;
import data.Essay;

public class EssayLength extends Feature {

	@Override
	public void getFeature(LinkedList<Double> train, LinkedList<Double> test) {
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter,train);
		
		iter = test_pid.iterator();
		fillFeature(iter,test);
	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<Double> list) {
		while (iter.hasNext()){
			String projectid = map.get(iter.next());
			Essay essay = data.essays.get(projectid);
			list.add((double)essay.essay.length());
		}
		
	}

}
