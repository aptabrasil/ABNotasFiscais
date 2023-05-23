package br.com.aptabrasil.models;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Cidade implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	private Long id;
	private String name;
	private Long CodigoIBGE;


}
