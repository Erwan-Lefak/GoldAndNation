package model;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Embeddable
public class Adresse {
	
	@Column(name="Rue",length=100,nullable=false)
	private String rue;
	
	@Column(name="Numero")
	private int numero; 
	
	@Column(name="Ville",nullable=false,length=50)
	private String ville;
	
	@Column(name="Code_Postal")
	private int codePostal; 
	
	@Column(name="Pays",length=50)
	private String pays ;
	
	

	public Adresse() {
		super();
	}

	public Adresse(String rue, int numero, String ville, int codePostal, String pays) {
		super();
		this.rue = rue;
		this.numero = numero;
		this.ville = ville;
		this.codePostal = codePostal;
		this.pays = pays;
	}




	public String getRue() {
		return rue;
	}

	public void setRue(String rue) {
		this.rue = rue;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public int getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(int codePostal) {
		this.codePostal = codePostal;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	@Override
	public String toString() {
		return "Adresse [getRue()=" + getRue() + ", getNumero()=" + getNumero() + ", getVille()=" + getVille()
				+ ", getCodePostal()=" + getCodePostal() + ", getPays()=" + getPays() + ", toString()="
				+ super.toString() + "]";
	} 
	
	
	

}
