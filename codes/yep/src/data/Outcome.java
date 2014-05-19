package data;

public class Outcome {
	public String projectid;
	public boolean is_exciting; //ground truth of whether a project is exciting from business perspective
	public boolean at_least_1_teacher_referred_donor; //teacher referred = donor donated because teacher shared a link or publicized their page
	public boolean fully_funded; //project was successfully completed
	public boolean at_least_1_green_donation; //a green donation is a donation made with credit card, PayPal, Amazon or check
	public boolean great_chat; //project has a comment thread with greater than average unique comments
	public boolean three_or_more_non_teacher_referred_donors; //non-teacher referred is a donor that landed on the site by means other than a teacher referral link/page
	public boolean one_non_teacher_referred_donor_giving_100_plus; //see above
	public boolean donation_from_thoughtful_donor; //a curated list of ~15 donors that are power donors and picky choosers (we trust them selecting great projects)
	public int great_messages_proportion; //how great_chat is calculated. proportion of comments on the project page that are unique. If > avg (currently 62%) then great_chat = True
	public int teacher_referred_count; //number of donors that were teacher referred (see above)
	public int non_teacher_referred_count; //number of donors that were non-teacher referred
	
	public static Outcome render(String line){
		Outcome outcome = new Outcome();
		try{
			String[] arr = Helper.split_csv(line);
			//render
			outcome.projectid = arr[0];
			outcome.is_exciting = bool(arr[1]);
			outcome.at_least_1_teacher_referred_donor = bool(arr[2]);
			outcome.fully_funded = bool(arr[3]);
			outcome.at_least_1_green_donation = bool(arr[4]);
			outcome.great_chat = bool(arr[5]);
			outcome.three_or_more_non_teacher_referred_donors = bool(arr[6]);
			outcome.one_non_teacher_referred_donor_giving_100_plus = bool(arr[7]);
			outcome.donation_from_thoughtful_donor = bool(arr[8]);
			outcome.great_messages_proportion = Integer.parseInt('0'+arr[9]);
			outcome.teacher_referred_count = Integer.parseInt('0'+arr[10]);
			outcome.non_teacher_referred_count = Integer.parseInt('0'+arr[11]);
		}catch (Exception e){
			e.printStackTrace();
			System.err.println(line);
			System.exit(1);
		}
		return outcome;
	}
	
	private static boolean bool(String value) throws Exception{
		if (value.equals("t")) return true;
		else {
			if (!(value.equals("f") || value.equals(""))) {
				throw new Exception("Wrong boolean value.");
			}
			return false;
		}
	}
}
