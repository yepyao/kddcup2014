package data;

public class Stat {

	public static void main(String[] args) {
		AllData data = AllData.getInstance();
		System.out.println(data.projects.keySet().size());
		System.out.println(data.essays.keySet().size());
		System.out.println(data.outcomes.keySet().size());

	}

}
