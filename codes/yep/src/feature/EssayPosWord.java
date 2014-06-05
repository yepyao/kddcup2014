package feature;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import data.Essay;
import libsvm_interface.SVMFeature;

public class EssayPosWord extends FeatureList {

	ArrayList<String> posWords = new ArrayList<String>();

	@Override
	public void getFeature(LinkedList<SVMFeature> train,
			LinkedList<SVMFeature> test) {
		this.feature_num = 1;
		Iterator<Integer> iter = train_pid.iterator();
		fillFeature(iter, train);

		readWordList();

		iter = test_pid.iterator();
		fillFeature(iter, test);
	}

	private void readWordList() {
		try {
			BufferedReader reader = new BufferedReader(new FileReader(
					"data/positive.txt"));
			String temp = null;
			while ((temp = reader.readLine()) != null) {
				posWords.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}

	}

	private void fillFeature(Iterator<Integer> iter, LinkedList<SVMFeature> list) {
		while (iter.hasNext()) {
			String projectid = map.get(iter.next());
			Essay essay = data.essays.get(projectid);
			int count = 0;
			String essayStr = essay.essay.toLowerCase();
			for(int i=0;i<posWords.size();i++){
				if (essayStr.contains(posWords.get(i))) count++;
			}
			list.add(new SVMFeature(0, count));
		}

	}

}
