package libsvm_interface;

import java.util.LinkedList;

public class SVMLine {
	public double label;
	public LinkedList<SVMFeature> features = new LinkedList<SVMFeature>();
	public SVMLine(double label){
		this.label = label;
	}
}
