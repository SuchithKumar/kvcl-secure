package org.vasaviyuvajanasangha.kvcl.model;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Player {
	
	@Id
	@GeneratedValue
	private long playerId;
	
	@NotNull
	private String playerEmail;
	
	@NotNull
	private String playerName;
	
	@NotNull
	private String playerGothram;
	
	@NotNull
	private String playerPhone;
	
	@Transient
	private MultipartFile photo;
	
	@Transient
	private String photoImg;
	
	@Lob
	private byte[] playerPhoto;
	
	@NotNull
	private String jerseyNumber;
	
	@NotNull
	private String playerShirtSize;	
	
	@JsonBackReference
	@ManyToOne
	@JoinColumn(name = "teamId",nullable = false)
	private Team team;
}
