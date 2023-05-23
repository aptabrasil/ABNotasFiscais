package br.com.aptabrasil.models;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Telefone implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	private Long id;
	private Long cliente_id;
	private Integer ddd;
	private Integer numero;


}
