package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="promotion")
public class Promo {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id",unique=true,nullable=false)
	private int id;
	
	@Column(name="Nom",length=50)
	private String nom;
	
	@Column(name="Montant",nullable=false)
	private int montant;
	
	
	public Promo() {
		super();
	}
	
	
	

	public Promo(String nom, int montant) {
		super();
		this.nom = nom;
		this.montant = montant;
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

	public int getMontant() {
		return montant;
	}

	public void setMontant(int montant) {
		this.montant = montant;
	}

	@Override
	public String toString() {
		return "Promo [getId()=" + getId() + ", getNom()=" + getNom() + ", getMontant()=" + getMontant() + "]";
	} 
	
	
	
	

}
