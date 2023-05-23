package br.com.aptabrasil.aplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan(basePackages = "br.com.aptabrasil.models")
@SpringBootApplication
public class AbNotasFiscaisApplication {

	public static void main(String[] args) {
		SpringApplication.run(AbNotasFiscaisApplication.class, args);
	}

}
