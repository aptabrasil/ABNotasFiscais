package br.com.aptabrasil.services.exception;

public class UFNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public UFNotFoundException(String msg) {
		super(msg);
	}

}
