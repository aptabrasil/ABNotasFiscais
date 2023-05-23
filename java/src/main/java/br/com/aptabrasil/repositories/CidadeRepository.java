package br.com.aptabrasil.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.aptabrasil.models.Cidade;

public interface CidadeRepository extends JpaRepository<Cidade,Long> {

}
