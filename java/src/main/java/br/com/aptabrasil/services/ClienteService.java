package br.com.aptabrasil.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.aptabrasil.models.Cliente;
import br.com.aptabrasil.repositories.ClienteRepository;

@Service
public class ClienteService {

	@Autowired
	private ClienteRepository repository;
	
	
	public List<Cliente> findAll() {
		return repository.findAll();
	}
}
