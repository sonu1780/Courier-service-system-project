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
@WebServlet("/contactservlet")
public class contactservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public  contactservlet() {
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
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/contactus", "root", "#include");
			
			
			String name = request.getParameter("Name");
			String email = request.getParameter("Email");
			String message = request.getParameter("Message");
						
			String query = "insert into contactus values(?, ?, ?);";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, message);
			
			
			int rs = pstmt.executeUpdate();
			
			PrintWriter out = response.getWriter();
			
			if (rs > 0)
			{
				out.println("<script>");
				out.println("alert(\"Message sent Successful\");");
				out.println("window.location.href=\"contactus.html\";");
				out.println("</script>");
				out.close();
			}
			else
			{
				out.println("<script>");
				out.println("alert(\"Failed\");");
				out.println("window.location.href=\"contactus.html\";");
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
			e.printStackTrace();
		}
	}
}
