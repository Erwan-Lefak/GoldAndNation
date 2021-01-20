package model;

import javax.persistence.*;

@Entity
@Table(name="entreprise")
public class Entreprise extends Utilisateur 
{
	
	@Column(name="nom_entreprise", nullable = false)
	private String nomEntreprise;

	public Entreprise()
	{
		
	}
	
	public Entreprise(String nomEntreprise) 
	{
		super();
		this.nomEntreprise = nomEntreprise;
	}

	public String getNomEntreprise() {
		return nomEntreprise;
	}

	public void setNomEntreprise(String nomEntreprise) {
		this.nomEntreprise = nomEntreprise;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Entreprise [getNomEntreprise()=");
		builder.append(getNomEntreprise());
		builder.append("]");
		return builder.toString();
	}
}
