package org.vasaviyuvajanasangha.kvcl.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Team {

	@Id
	@GeneratedValue
	private long id;
	
	@NotNull
	private String name;
	
	@NotNull
	private String captain;
	
	@NotNull
	private String location;
	
	@NotNull
	private String representing;
	
	@NotNull
	private String requireAccomodation;
	
	@NotNull
	private String requireFood;
	
	@Transient
	private MultipartFile logo;
	
	@Transient
	private String logoImg;
	
	@Lob
	private byte[] teamLogo;
	
	@NotNull
	private String registeredUser;
	
	@OneToMany(mappedBy = "team",fetch = FetchType.EAGER)
	private List<Player> players;
	
	
	
}
