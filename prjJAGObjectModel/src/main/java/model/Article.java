package model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="article")
public class Article implements Cloneable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Id",unique=true,nullable=false)
	private int id;
	
	@Column(name="Nom",nullable=false,length=50)
	private String nom;
	
	@Column(name="Prix_HT",nullable=false,precision=10,scale=2)
	private double prixHT; 
	
	@Column(name="Description",length=500)
	private String description; 
	
    @Enumerated(EnumType.STRING)
	@Column(name="Type",nullable=false,length=50)
	private Type type; 
    
	@Column(name="Stock",nullable=false)
	private int stock; 
	
	@Column(name="Image",length=200)
	private String image; 

	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name = "article_categorie", 
    joinColumns = { @JoinColumn(name = "article_id") }, 
    inverseJoinColumns = { @JoinColumn(name = "categorie_id") })
	private List<Categorie> categories = new ArrayList<Categorie>();
	
	private final static double TVA = 1.2;
	
	
	public Article(String nom, double prixHT, String description, Type type, int stock, String image) {
		super();
		this.nom = nom;
		this.prixHT = prixHT;
		this.description = description;
		this.type = type;
		this.stock = stock;
		this.image = image;
	}

	public Article() {
		super();
	}
	
	
	
	

	public List<Categorie> getCategories() {
		return categories;
	}

	public void setCategories(List<Categorie> categories) {
		this.categories = categories;
	}
	
	public void addCategorie(Categorie categorie) {
		categories.add(categorie);
	}

	public int getId() {
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public double getPrixHT() {
		return prixHT;
	}
	
	public double getPrixTTC() {
		return prixHT*TVA;
	}

	public void setPrixHT(double prixHT) {
		this.prixHT = prixHT;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public static double getTva() {
		return TVA;
	}

	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}


	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
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
        if (! (obj instanceof Article)) {
            return false;
        }
        return this.id == ((Article)obj).getId();
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
		return "Article [getCategories()=" + getCategories() + ", getId()=" + getId() + ", getNom()=" + getNom()
				+ ", getPrixHT()=" + getPrixHT() + ", getDescription()=" + getDescription() + ", getImage()="
				+ getImage() + ", toString()=" + super.toString() + " Stock : " + getStock() + "]";
	}

	

}
