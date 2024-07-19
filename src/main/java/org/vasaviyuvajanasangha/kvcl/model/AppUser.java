package org.vasaviyuvajanasangha.kvcl.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class AppUser {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userId;
//	@Indexed(unique = true) // for unique field
	private String username;
	private String password;
	
	private String email;
	private String name;
	
	private String roles;

	@Transient
	private String reEnterPassword;
}