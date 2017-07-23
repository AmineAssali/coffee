package model;

import java.io.Serializable;
import java.util.Date;

public class Commande implements Serializable {
	
	int id ;
	String type ;
	String libelle ;
	double prix ;
	Date DateCMD ;
	
	
	public Commande() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Commande(String libelle, double prix, Date dateCMD) {
		super();
		this.libelle = libelle;
		this.prix = prix;
		DateCMD = dateCMD;
	}

	public Commande(String type, String libelle, double prix) {
		super();
		this.type = type;
		this.libelle = libelle;
		this.prix = prix;
	}

	public Commande(int id, String type, String libelle, double prix, Date dateCMD) {
		super();
		this.id = id;
		this.type = type;
		this.libelle = libelle;
		this.prix = prix;
		DateCMD = dateCMD;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getLibelle() {
		return libelle;
	}


	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}


	public double getPrix() {
		return prix;
	}


	public void setPrix(double prix) {
		this.prix = prix;
	}


	public Date getDateCMD() {
		return DateCMD;
	}


	public void setDateCMD(Date dateCMD) {
		DateCMD = dateCMD;
	}
	
	
	
	
	
	

}
