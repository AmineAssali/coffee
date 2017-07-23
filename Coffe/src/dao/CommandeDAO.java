package dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import bd.Myconn;
import model.Commande;

public class CommandeDAO {
	
	private Myconn connection = new Myconn();
	public void save(Commande c){
		
		Connection con = connection.getConnection();
		if(con!=null){
			PreparedStatement pstmt ;
			String req = "insert into commandes values(Commandes_SEQ.nextval,?,?,?,sysdate)";
			try {
				
				pstmt = con.prepareStatement(req);
				
				pstmt.setString(1, c.getType());
				pstmt.setString(2, c.getLibelle());
				pstmt.setDouble(3, c.getPrix());

				pstmt.executeUpdate();
				
				pstmt.close();
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	
	public List<Commande> getall(){
		Connection con = connection.getConnection();
		List<Commande> commandes = new ArrayList<Commande>();
		if(con!=null){
			Statement stmt ;
			ResultSet rs ;
			String req = " select * from commandes ";
			try {
				stmt = con.createStatement();
                rs = stmt.executeQuery(req);
                while(rs.next()){
                	Commande c = new Commande(rs.getInt(1),rs.getString(2),rs.getString(3),
                			rs.getDouble(4),rs.getDate(5));
                	commandes.add(c);
                	
                	stmt.close();
    				con.close();
                }
                return commandes ;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	    }
		return commandes;
		
	}

}
