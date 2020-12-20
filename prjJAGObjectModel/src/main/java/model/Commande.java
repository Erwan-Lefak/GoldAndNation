package model;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="commande")
public class Commande {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id",unique=true,nullable=false)
	private int id;
	
	@Column(name="Prix_TTC",nullable=false,precision=10,scale=2)
	private double prix = 0.0; 
	
	@OneToMany(mappedBy="commande")
	private List<LigneCommande> lignesCommande = new ArrayList<LigneCommande>();
	
	@OneToOne
	private Utilisateur utilisateur;
	
	
	

	public Commande() {
		super();
	}

	public Commande(Utilisateur utilisateur) {
		super();
		this.utilisateur = utilisateur;
	}

	
	
	
	
	public int getId() {
		return id;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix() {
		prix = 0.0;
		for (LigneCommande ligneCommande : lignesCommande)
			prix += ligneCommande.getPrix();
	}
	
	public void setPrix2(double prix) {
		this.prix= prix;
	}

	public List<LigneCommande> getLignesCommande() {
		return lignesCommande;
	}

	public void setLignesCommande(List<LigneCommande> lignesCommande) {
		this.lignesCommande = lignesCommande;
		for (LigneCommande ligneCommande : lignesCommande)
			prix += ligneCommande.getPrix();
	}
	
	public void addLigneCommande(LigneCommande ligneCommande) {
		lignesCommande.add(ligneCommande);
		prix += ligneCommande.getPrix();
	}

	public Utilisateur getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	@Override
	public String toString() {
		return "Commande [getId()=" + getId() + ", getPrix()=" + getPrix() +  ", getUtilisateur()=" + getUtilisateur() + ", toString()=" + super.toString()
				+ "]";
	}


}
