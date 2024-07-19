package org.vasaviyuvajanasangha.kvcl.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vasaviyuvajanasangha.kvcl.model.Team;
import org.vasaviyuvajanasangha.kvcl.repository.TeamRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class TeamServiceImpl {

	@Autowired
	private TeamRepository repository;
	
	public Team saveTeamDetails(Team team) {
		return repository.save(team);
	}
	
	public Optional<Team> findTeamByRegisterUser(String phone) {
		return repository.findByRegisteredUser(phone); 
	}
	
}
