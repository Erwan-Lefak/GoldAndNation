package model;

import java.sql.Time;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;


@Entity
@Table(name="categorie")
public class Categorie {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id",unique=true,nullable=false)
	private int id;
	
	@Column(name="Nom",nullable=false,length=50)
	private String nom; 
	
	@Column(name="Description",length=500)
	private String description;
	
	//@Column(name="HeureDebut")
	
	private Time debut;
	
	
	//@Column(name="HeureFin")
	
	private Time fin; 
	
	@ManyToMany(mappedBy = "categories" ,fetch=FetchType.EAGER, cascade =  CascadeType.REMOVE)
	private List<Article> articles; 

	
	
	
	public Categorie() {
		super();
	}

	public Categorie(String nom, String description, Time debut, Time fin) {
		super();
		this.nom = nom;
		this.description = description;
		this.debut = debut;
		this.fin = fin;
	}

	
	
	
	
	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}

	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

	public Time getDebut() {
		return debut;
	}

	public void setDebut(Time debut) {
		this.debut = debut;
	}

	public Time getFin() {
		return fin;
	}

	public void setFin(Time fin) {
		this.fin = fin;
	}
	@Override
    public int hashCode() {
        return new Long(id).hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (! (obj instanceof Categorie)) {
            return false;
        }
        return this.id == ((Categorie)obj).getId();
    }
	@Override
	public String toString() {
		return "Categorie [ getId()=" + getId() + ", getNom()=" + getNom()
				+ ", getDescription()=" + getDescription() + " H Début = " + getDebut() + " Fin = " + getFin() +"]";
	}
	
	
}
