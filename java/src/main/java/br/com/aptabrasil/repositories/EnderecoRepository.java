package br.com.aptabrasil.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.aptabrasil.models.Endereco;

public interface EnderecoRepository extends JpaRepository<Endereco,Long> {

}
