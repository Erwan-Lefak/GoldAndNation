package model;

import javax.persistence.*;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Embeddable
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
@Table(name="utilisateur")
public class Utilisateur {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="IdUser",unique=true,nullable=false)
	private int id;
	
	@Embedded
	private Adresse adresse;
	
	
	@Column(name="Email",nullable=false,length=50)
	private String email; 
	
	@Column(name="Password",nullable=false,length=50)
	private String password;
	
	@Column(name="Role", nullable = false, length = 50)
	private Role role;
	
	@OneToOne
	@JoinColumn(name="Id_Commande") 
	private Commande commande; 
	
	public Utilisateur() {
		super();
	}
	
	public Utilisateur(Adresse adresse, String email,
			String password, Role role) 
	{
		this.adresse = adresse;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public Adresse getAdresse() {
		return adresse;
	}

	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Utilisateur [getAdresse()=");
		builder.append(getAdresse());
		builder.append(", getEmail()=");
		builder.append(getEmail());
		builder.append(", getPassword()=");
		builder.append(getPassword());
		builder.append(", getRole()=");
		builder.append(getRole());
		builder.append(", getCommande()=");
		builder.append(getCommande());
		builder.append(", getId()=");
		builder.append(getId());
		builder.append("]");
		return builder.toString();
	}

	
}



