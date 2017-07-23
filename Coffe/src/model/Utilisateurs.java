package model;

public class Utilisateurs {
	
	int id ;
	String nom ;
	String prenom ;
	String sexe ;
	String adresse ;
	String email ;
	public Utilisateurs(int id, String nom, String prenom, String sexe, String adresse, String email) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.sexe = sexe;
		this.adresse = adresse;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Utilisateurs [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", sexe=" + sexe + ", adresse="
				+ adresse + ", email=" + email + "]";
	}
	
	

}
