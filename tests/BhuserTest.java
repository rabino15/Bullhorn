import java.util.Date;

import customTools.DbUser;
import model.Bhuser;

public class BhuserTest {

	public static void main(String[] args) {
		Bhuser bhuser = DbUser.getUser(1);
		Date joinDate = bhuser.getJoindate();
		System.out.println("id= "+bhuser.getBhuserid()+", email= "+bhuser.getUseremail()+"joindate = "+joinDate);

	}

}
