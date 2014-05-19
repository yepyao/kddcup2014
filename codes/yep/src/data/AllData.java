package data;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;

public class AllData {
	
	//config
	static String input_dir = "./data/";
	//raw data
	public HashMap<String, Project> projects = new HashMap<String, Project>();  //projectid to project
	public HashMap<String, Resource> resources = new HashMap<String, Resource>();
	public HashMap<String, Essay> essays = new HashMap<String, Essay>(); //projectid to esssy
	public HashMap<String, Donation> donations = new HashMap<String, Donation>();
	public HashMap<String, Outcome> outcomes = new HashMap<String, Outcome>();
	
	//relations
	
	
	static AllData instance = null;
	public static AllData getInstance(String dir){
		if (instance == null) {
			if (dir!=null) input_dir = dir;
			instance = new AllData(); 
		}
		return instance;
	}
	
	private AllData(){
		//get raw data
		try{
			getProjects();
			//getResourse();
			getEssays();
			//getDonations();
			//getOutcomes();
		} catch(Exception e){
			e.printStackTrace();
			System.exit(1);
		}
	}

	private void getDonations() throws Exception {
		System.out.println("Begin loading donations...");
		CSVFileUtil input = new CSVFileUtil(input_dir + "donations.csv");
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Donation donation = Donation.render(line);
			donations.put(donation.donationid, donation);
			
		}
		System.out.println("End loading donations...");
		System.out.println("Get donations entry: " + donations.keySet().size());
		
	}

	private void getResourse() throws Exception {
		System.out.println("Begin loading resourses...");
		CSVFileUtil input = new CSVFileUtil(input_dir + "resources.csv");
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Resource resourse = Resource.render(line);
			resources.put(resourse.resourceid, resourse);
			
		}
		System.out.println("End loading resourses...");
		System.out.println("Get resources entry: " + resources.keySet().size());
	}

	private void getOutcomes() throws Exception {
		System.out.println("Begin loading outcomes...");
		CSVFileUtil input = new CSVFileUtil(input_dir + "outcomes.csv");
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Outcome outcome = Outcome.render(line);
			outcomes.put(outcome.projectid, outcome);
			
		}
		System.out.println("End loading outcomes...");
		System.out.println("Get outcomes entry: " + outcomes.keySet().size());
	}

	private void getEssays() throws Exception {
		System.out.println("Begin loading essays...");
		CSVFileUtil input = new CSVFileUtil(input_dir + "essays.csv");
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Essay essay = Essay.render(line);
			essays.put(essay.projectid, essay);
		}
		System.out.println("End loading essays...");
		System.out.println("Get essays entry: " + essays.keySet().size());
	}

	private void getProjects() throws Exception {
		System.out.println("Begin loading projects...");
		CSVFileUtil input = new CSVFileUtil(input_dir + "projects.csv");
		String line = input.readLine();
		while ((line = input.readLine())!=null){
			Project project = Project.render(line);
			projects.put(project.projectid, project);
			
		}
		System.out.println("End loading projects...");
		System.out.println("Get projects entry: " + projects.keySet().size());
	}
	
}
