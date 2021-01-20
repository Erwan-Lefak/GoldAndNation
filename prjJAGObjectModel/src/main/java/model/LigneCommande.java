package model;


import javax.persistence.*;

@Entity
@Table(name="lignecommande")
public class LigneCommande {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id",unique=true,nullable=false)
	private int id;
	
	@ManyToOne()
	@JoinColumn(name= "Id_Commande",nullable=false)
	private Commande commande; 
	
	@ManyToOne
	@JoinColumn (name="Id_Article",nullable = false)
	private Article article; 
	
	@Column(name = "Quantite",nullable = false)
	private int quantite; 
	
	@Column(name="Prix",nullable=false,precision=10,scale=2)
	private double prix;
	


	
	public LigneCommande() {
		super();
	}

	public LigneCommande(Commande commande, Article article, int quantite) {
		super();
		this.commande = commande;
		this.article = article;
		this.quantite = quantite;
		this.prix = quantite*article.getPrixTTC();
	}

	public int getId() {
		return id;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
		this.prix = quantite*article.getPrixTTC();
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
		this.prix = quantite*article.getPrixTTC();
	}

	public double getPrix() {
		return prix;
	}

	@Override
	public String toString() {
		return "LigneCommande [getId()=" + getId()  + ", getArticle()="
				+ getArticle() + ", getQuantite()=" + getQuantite() + ", getPrix()=" + getPrix() + "]";
	} 
	
	
	
	
	
	
	
}