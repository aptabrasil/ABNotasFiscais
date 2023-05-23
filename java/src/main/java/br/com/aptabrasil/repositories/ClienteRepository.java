package br.com.aptabrasil.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.aptabrasil.models.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {

}
