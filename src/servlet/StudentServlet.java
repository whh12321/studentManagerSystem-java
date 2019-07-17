package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.StudentManager;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet({"/addStudent", "/deleteStudent", "/updateStudent" })
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("GB18030");
		if(request.getRequestURI().endsWith("/deleteStudent")) {
			doDeleteStudent(request,response);
		}else if (request.getRequestURI().endsWith("/addStudent")) {
			doAddStudent(request,response);
		}else if (request.getRequestURI().endsWith("/updateStudent")) {
			doUpdateStudent(request,response);
		}
	}

	private void doUpdateStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String sex=request.getParameter("sex");
		String major=request.getParameter("major");
		String college=request.getParameter("college");
		String introduction=request.getParameter("introduction");
		StudentManager.updateStudent(id,name,new Integer(age),new Integer(sex),
				major,college,introduction);
		response.sendRedirect("index.jsp");
	}

	private void doAddStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String sex=request.getParameter("sex");
		String major=request.getParameter("major");
		String college=request.getParameter("college");
		String introduction=request.getParameter("introduction");
		StudentManager.addStudent(id,name,new Integer(age),new Integer(sex),
				major,college,introduction);
		response.sendRedirect("index.jsp");
	}

	private void doDeleteStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		StudentManager.deleteStudent(id);
		response.sendRedirect("index.jsp");
	}

}
