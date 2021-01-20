package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Entreprise;

public interface EntrepriseRepository extends JpaRepository<Entreprise, Integer> {

}
