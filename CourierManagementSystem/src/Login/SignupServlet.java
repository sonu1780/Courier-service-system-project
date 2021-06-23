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

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
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
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			String query = "insert into profile values(?, ?, ?, ?, ?);";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, type);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, username);
			pstmt.setString(5, password);
			
			int rs = pstmt.executeUpdate();
			
			PrintWriter out = response.getWriter();
			
			if (rs > 0)
			{
				out.println("<script>");
				out.println("alert(\"Sign Up Successful\");");
				out.println("window.location.href=\"login.html\";");
				out.println("</script>");
				out.close();
			}
			else
			{
				out.println("<script>");
				out.println("alert(\"Sign Up Failed\");");
				out.println("window.location.href=\"signup.html\";");
				out.println("</script>");
				out.close();
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert(\"Error Signing In\");");
			out.println("window.location.href=\"signup.html\";");
			out.println("</script>");
			out.close();
			
			e.printStackTrace();
		}
	}

}
