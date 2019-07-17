package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StudentManager {
	private static Connection getConnection() throws Exception{
		String url="jdbc:mysql://localhost:3306/stm?useUnicode=true&characterEncoding=UTF-8";
		String user="root";
		String pwd="root";
		String driver="org.gjt.mm.mysql.Driver";
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pwd);
		return conn;
	}
	
	public static boolean addStudent(String id,String name,int age,int sex,
			String major,String college,String introduction) {
		try {
			Connection conn=getConnection();
			PreparedStatement st=conn.
					prepareStatement("insert into student values(?,?,?,?,?,?,?)");
			st.setString(1,id);
			st.setString(2,name);
			st.setInt(3,age);
			st.setInt(4,sex);
			st.setString(5,major);
			st.setString(6,college);
			st.setString(7,introduction);
			st.execute();
			conn.close();
			return true;
			
		}catch(Exception e) {
			return false;
		}
	}
	
	public static boolean deleteStudent(String id) {
		try {
			Connection conn=getConnection();
			PreparedStatement st=conn.prepareStatement("delete student where id=?");
			st.setString(1,id);
			st.execute();
			conn.close();
			return true;
		}catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	public static boolean updateStudent(String id,String name,int age,int sex,
			String major,String college,String introduction) {
		try {
			Connection conn=getConnection();
			PreparedStatement st=conn.prepareStatement("update student set name=?,"
					+ "age=?,sex=?,major=?,college=?,introduction=? where id=?");
			st.setString(1,name);
			st.setInt(2,age);
			st.setInt(3,sex);
			st.setString(4,major);
			st.setString(5,college);
			st.setString(6,introduction);
			st.setString(7,id);
			st.execute();
			conn.close();
			return true;
		}catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}
	
	public static Student getStudent(String id) {
		Student student=null;
		try {
			Connection conn=getConnection();
			PreparedStatement st=conn.prepareStatement("select * from student where id=?");
			st.setString(1,id);
			st.execute();
			ResultSet rs=st.getResultSet();
			if(rs.next()) {
			student=new Student();
			student.setId(rs.getString("id"));
			student.setName(rs.getString("name"));
			student.setAge(rs.getInt("age"));
			student.setSex(rs.getInt("sex"));
			student.setMajor(rs.getString("major"));
			student.setCollege(rs.getString("college"));
			student.setIntroduction(rs.getString("introduction"));
			}
			conn.close();
			
		}catch (Exception e) {
			// TODO: handle exception
			
		}return student;
	}
	
	public static ArrayList<Student> getAllStudents(){
		ArrayList<Student> students=new ArrayList<>();
		try {
			Connection conn=getConnection();
			PreparedStatement st=conn.prepareStatement("select * from student");
			st.execute();
			ResultSet rs=st.getResultSet();
			while(rs.next()) {
			Student student=new Student();
			student.setId(rs.getString("id"));
			student.setName(rs.getString("name"));
			student.setAge(rs.getInt("age"));
			student.setSex(rs.getInt("sex"));
			student.setMajor(rs.getString("major"));
			student.setCollege(rs.getString("college"));
			student.setIntroduction(rs.getString("introduction"));
		}conn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}return students;
	}
}
