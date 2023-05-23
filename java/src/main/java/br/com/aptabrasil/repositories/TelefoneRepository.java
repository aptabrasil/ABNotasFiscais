package br.com.aptabrasil.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.aptabrasil.models.Telefone;

public interface TelefoneRepository extends JpaRepository<Telefone,Long> {

}
