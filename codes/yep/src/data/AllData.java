package data;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;

public class AllData {
	
	//config
	final static String input_dir = "./data/";
	//raw data
	HashMap<String, Project> projects = new HashMap<String, Project>();  //projectid to project
	HashMap<String, Resourse> resourses = new HashMap<String, Resourse>();
	HashMap<String, Essay> essays = new HashMap<String, Essay>(); //projectid to esssy
	HashMap<String, Donation> donations = new HashMap<String, Donation>();
	HashMap<String, Outcome> outcomes = new HashMap<String, Outcome>();
	
	static AllData instance = null;
	public static AllData getInstance(){
		if (instance == null) instance = new AllData(); 
		return instance;
	}
	
	private AllData(){
		//get raw data
		try{
			getProjects();
			//getResourse();
			//getEssays();
			//getDonations();
			getOutcomes();
		} catch(Exception e){
			e.printStackTrace();
			System.exit(1);
		}
	}

	private void getOutcomes() throws IOException {
		System.out.println("Begin loading outcomes...");
		BufferedReader input = new BufferedReader(new FileReader(input_dir + "outcomes.csv"));
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Outcome outcome = Outcome.render(line);
			outcomes.put(outcome.projectid, outcome);
			
		}
		System.out.println("End loading outcomes...");
		input.close();
		
	}

	private void getEssays() throws Exception {
		System.out.println("Begin loading essays...");
		BufferedReader input = new BufferedReader(new FileReader(input_dir + "essays.csv"));
		String line = input.readLine();
		int count = 0;
		while ((line = input.readLine())!=null){
			while (!line.endsWith("\n")) 
				line += line+input.readLine();
			Essay essay = Essay.render(line);
			essays.put(essay.projectid, essay);
			count++;
			if (count%100 == 0) System.out.println("Essay: "+count); 
		}
		System.out.println("End loading essays...");
		input.close();
	}

	private void getProjects() throws IOException {
		System.out.println("Begin loading projects...");
		BufferedReader input = new BufferedReader(new FileReader(input_dir + "projects.csv"));
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Project project = Project.render(line);
			projects.put(project.projectid, project);
			
		}
		System.out.println("End loading projects...");
		input.close();
	}
	
}
