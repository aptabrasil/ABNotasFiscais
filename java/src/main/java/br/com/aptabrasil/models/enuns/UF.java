package br.com.aptabrasil.models.enuns;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import br.com.aptabrasil.services.exception.UFNotFoundException;
import io.micrometer.common.util.StringUtils;

public enum UF {
	
	AC("AC"),
	AL("AL"),
	AP("AP"),
	AM("AM"),
	BA("BA"),
	CE("CE"),
	DF("DF"),
	ES("ES"),
	GO("GO"),
	MA("MA"),
	MT("MT"),
	MS("MS"),
	MG("MG"),
	PA("PA"),
	PB("PB"),
	PE("PE"),
	PR("PR"),
	PI("PI"),
	RJ("RJ"),
	RN("RN"),
	RS("RS"),
	RO("RO"),
	RR("RR"),
	SC("SC"),
	SP("SP"),
	SE("SE"),
	TO("AC");
	
	private final String value;
	
	UF(String value) {
		this.value = value;
	}
	
	public static UF fromValue(String value) throws UFNotFoundException {
		if (StringUtils.isBlank(value)) return null;
		
		for (UF estado : UF.values()) {
			if (estado.name().equalsIgnoreCase(value)) {
				return estado;
			}
		}
		throw new UFNotFoundException("Não existe");
	}
	
	public String getFieldName() {
		return value;
	}
	
	public static List<String> validFieldNames() {
		return Arrays.stream(UF.values()).map(UF::getFieldName).collect(Collectors.toList());	
	}
}
