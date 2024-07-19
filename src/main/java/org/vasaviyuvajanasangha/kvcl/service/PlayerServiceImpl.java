package org.vasaviyuvajanasangha.kvcl.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.vasaviyuvajanasangha.kvcl.model.Player;
import org.vasaviyuvajanasangha.kvcl.repository.PlayerRepository;

@Controller
public class PlayerServiceImpl {

	@Autowired
	private PlayerRepository repository;
	
	public Player savePlayer(Player player) {
		return repository.save(player);
	}
	
	public Player findPlayerById(Long id) {
		return repository.findById(id).get();
	}
	
	
}
