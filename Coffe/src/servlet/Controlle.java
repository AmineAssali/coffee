package servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CommandeDAO;
import model.Commande;

/**
 * Servlet implementation class controle
 */
@WebServlet("/Controlle")
public class Controlle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommandeDAO commandeDAO = new CommandeDAO() ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		List<Commande> commandes = new ArrayList<>();	
	    
		String action = request.getParameter("op");
		System.out.println(action);		
		String destination = null ;
		if (action == null) {
			destination = "/WEB-INF/views/Acceuil.jsp";
		}
		else if(action.equals("Acceuil")){
			destination = "/WEB-INF/views/Acceuil.jsp";
		}
		else if(action.equals("Commande")){
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Historique")){
			destination = "/WEB-INF/views/Historique.jsp";
		}
		else if(action.equals("Cmd")){
			destination = "/WEB-INF/views/Cmd.jsp";
		}
		else if(action.equals("Contact")){
			destination = "/WEB-INF/views/Contact.jsp";
		}
		else if(action.equals("Petit dejeuner1")){
			String type = "petit dejeuner";
			String libelle = "petit dejeuner simple";
			Double prix = 14.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			commandes.add(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Petit dejeuner2")){
			String type = "petit dejeuner";
			String libelle = "petit dejeuner ++";
			Double prix = 18.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			commandes.add(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}else if(action.equals("Croissant")){
			String type = "Croissants";
			String libelle = "Croissant";
			Double prix = 4.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			commandes.add(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Cake")){
			String type = "Croissants";
			String libelle = "Cake";
			Double prix = 5.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			commandes.add(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Petit the")){
			String type = "The";
			String libelle = "Petit the";
			Double prix = 6.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("The moyen")){
			String type = "The";
			String libelle = "The moyen";
			Double prix = 8.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Lipton")){
			String type = "The";
			String libelle = "Lipton";
			Double prix = 7.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}else if(action.equals("Caffe noir")){
			String type = "Caffe";
			String libelle = "Caffe noir";
			Double prix = 6.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Caffe creme")){
			String type = "Caffe";
			String libelle = "Caffe creme";
			Double prix = 7.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Lait au chocolat")){
			String type = "Caffe";
			String libelle = "Lait au chocolat";
			Double prix = 7.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Lait froid")){
			String type = "Caffe";
			String libelle = "Lait froid";
			Double prix = 6.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Lait cassee")){
			String type = "Caffe";
			String libelle = "Lait cassee";
			Double prix = 7.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus d'Orange")){
			String type = "Jus";
			String libelle = "Jus d'Orange";
			Double prix = 9.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus de Banane")){
			String type = "Jus";
			String libelle = "Jus de Banane";
			Double prix = 9.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus de Pomme")){
			String type = "Jus";
			String libelle = "Jus de Pomme";
			Double prix = 9.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus d'Avocat")){
			String type = "Jus";
			String libelle = "Jus d'Avocat";
			Double prix = 10.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus de Fraise")){
			String type = "Jus";
			String libelle = "Jus de Fraise";
			Double prix = 11.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Jus Panache")){
			String type = "Jus";
			String libelle = "Jus Panache";
			Double prix = 13.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}
		else if(action.equals("Lemonade")){
			String type = "Jus";
			String libelle = "Lemonade";
			Double prix = 8.00;
			Commande c = new Commande(type,libelle,prix);
			commandeDAO.save(c);
			destination = "/WEB-INF/views/Commande.jsp";
		}

		session.setAttribute("cmd", commandes);
//		for(Commande cc : commandes){
//			System.out.println(cc.getLibelle()+"\n"+cc.getPrix()+"\n"+new java.util.Date());
//		}
		request.getRequestDispatcher(destination).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
