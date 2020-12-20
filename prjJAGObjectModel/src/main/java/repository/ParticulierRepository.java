package repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Particulier;
import model.Role;

public interface ParticulierRepository extends JpaRepository<Particulier, Integer>
{
	Particulier findFirstByEmailAndPassword(String email,String password);
	
	List<Particulier> findByRole(Role role);
}
