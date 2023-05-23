package br.com.aptabrasil.resources.exception;

import java.time.Instant;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import br.com.aptabrasil.services.exception.UFNotFoundException;
import jakarta.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ResourceExecptionHandler {

	@ExceptionHandler(UFNotFoundException.class)
	public ResponseEntity<StandardError> ufNotFound(UFNotFoundException e, HttpServletRequest request) {
		String error = "UF not found";
		HttpStatus status = HttpStatus.FOUND;
		StandardError err = new StandardError(Instant.now(),status.value(), error, e.getMessage(), request.getRequestURI());
		return ResponseEntity.status(status).body(err);
	}
}
