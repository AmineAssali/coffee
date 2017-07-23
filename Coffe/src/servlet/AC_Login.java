package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Myconn;

/**
 * Servlet implementation class AC_Login
 */
@WebServlet("/AC_Login")
public class AC_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AC_Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String login = request.getParameter("inputLogin");
		String mdp = request.getParameter("inputPassword");
		
	    System.out.println(login+" "+mdp);
	    System.out.println(login+" "+mdp);
		
		if(Myconn.validate(login, mdp)){
			request.getRequestDispatcher("Controlle?op=Commande").forward(request, response);
		}
//		String req = " select nom,prenom,login,mdp from utilisateurs join compte using(id) ";
//		Statement stmt = null ;
//		ResultSet rs = null ;
//		try {
//		    stmt = con.createStatement();
//		    rs = stmt.executeQuery(req);
//		    while(rs.next()){
//		    	if(login.equals(rs.getString(3)) &&  mdp.equals(rs.getString(4))){
//		    		request.getRequestDispatcher("Controlle/op=Commande").forward(request, response);
//		    	}
//		    }
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
