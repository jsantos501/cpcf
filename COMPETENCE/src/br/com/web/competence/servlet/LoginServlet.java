package br.com.web.competence.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getParameter("login");
		request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://127.0.0.1:3306/competence";
			String usuario = "root";
			String senha = "root";
			System.setProperty("com.mysql.jdbc.Driver","");
			
			Connection con =  DriverManager.getConnection(url, usuario, senha);
			
			Statement stmt = con.createStatement();
			ResultSet rs;
			rs = (ResultSet) stmt.executeQuery("select * from competence.tb01_usuario");
			
			while(rs.next()){
				rs.getString("usuario");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("views/homeSemRefresh.jsp");
		//RequestDispatcher rd = request.getRequestDispatcher("/jsps/home.jsp");
		//rd.forward(request, response);
		
		
	}

}
