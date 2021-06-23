package Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "#include");
			
			String type = request.getParameter("type");
			String username = request.getParameter("loginid");
			String password = request.getParameter("pass");
			
			String query = "select * from profile where type=? and username=? and password=?";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, type);
			pstmt.setString(2, username);
			pstmt.setString(3, password);
			
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("username", username);
				PrintWriter out = response.getWriter();
				if (type.equals("Customer")) {
					out.println("<script>");
					out.println("alert(\"Login Successful\");");
					out.println("window.location.href=\"customerbooking.jsp\";");
					out.println("</script>");
				}
				else {
					out.println("<script>");
					out.println("alert(\"Login Successful\");");
					out.println("window.location.href=\"index.html\";");
					out.println("</script>");
				}
			}
			else
			{
				PrintWriter out = response.getWriter();
				out.println("<h1 align=center> Login Failed </h1>");
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}

}
