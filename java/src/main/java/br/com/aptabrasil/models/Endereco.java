package br.com.aptabrasil.models;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Endereco implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	private Long id;
	private Long cliente_id;
	private String logradouro;
	private String numero;
	private String bairro;
	private Long cidade_id;


}
