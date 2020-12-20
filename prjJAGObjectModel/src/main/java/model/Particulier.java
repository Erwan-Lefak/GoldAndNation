package model;

import java.time.LocalDate;

import javax.persistence.*;

@Entity
@Table(name="particulier")
public class Particulier extends Utilisateur implements Cloneable
{
	
	@Column(name="Nom",nullable=false,length=50)
	private String nom; 
	
	@Column(name="Prenom",nullable=false,length=50)
	private String prenom;
	

	public Particulier()
	{
		super();
	}
	
	public Particulier(String nom, String prenom) 
	{
		super();
		this.nom = nom;
		this.prenom = prenom;
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
	
	
	public Object clone()
	{
		Object obj = null;
		try
		{
			obj = super.clone();
		}
		catch(CloneNotSupportedException cnse)
		{
			cnse.printStackTrace(System.err);
		}
		
		return obj;
	}


	

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Particulier [nom=");
		builder.append(nom);
		builder.append(", prenom=");
		builder.append(prenom);
		builder.append(", getAdresse()=");
		builder.append(getAdresse());
		builder.append(", getEmail()=");
		builder.append(getEmail());
		builder.append(", getPassword()=");
		builder.append(getPassword());
		builder.append(", getRole()=");
		builder.append(getRole());
		builder.append("]");
		return builder.toString();
	}

	
}
