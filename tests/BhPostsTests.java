import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import customTools.DbBullhorn;
import model.Bhpost;

public class BhPostsTests {

@Test
public void getAllPostsTest() {
try {
ArrayList<Bhpost> posts = (ArrayList<Bhpost>) DbBullhorn.AllPosts();
System.out.println(posts.get(0).getPosttext());
assertTrue(posts.get(0).getPosttext().length()>0);


} catch (ClassNotFoundException | SQLException e) {

e.printStackTrace();
}

}

@Test
public void addPostTest(){
java.util.Date d = new java.util.Date();
java.sql.Date postdate = new java.sql.Date(d.getTime());
String posttext = "This is a test2";
int userid = 5;

System.out.println(DbBullhorn.insert(postdate, posttext, userid));
assertEquals(DbBullhorn.insert(postdate, posttext, userid),1);
}

}
