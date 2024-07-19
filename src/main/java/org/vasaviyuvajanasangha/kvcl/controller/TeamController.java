package org.vasaviyuvajanasangha.kvcl.controller;

import java.io.IOException;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.vasaviyuvajanasangha.kvcl.model.Player;
import org.vasaviyuvajanasangha.kvcl.model.Team;
import org.vasaviyuvajanasangha.kvcl.service.TeamServiceImpl;
import org.vasaviyuvajanasangha.kvcl.service.utils.ImageUtils;

@Controller
@SessionAttributes({"name","username","team","players"})
public class TeamController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private TeamServiceImpl teamServiceImpl;
	
	
	@GetMapping(path = {"/user-home"})
	public String userHome(ModelMap model) {
		var teamPre = teamServiceImpl.findTeamByRegisterUser(getCurrentUser());
		logger.info("update-request : {}",teamPre);
		if(teamPre.isEmpty()) {
			model.put("team", new Team());
			return "addTeam";
		}
		var team = teamPre.get();
		model.put("team", ImageUtils.getTeamWithImage(team));
		
		var players = team.getPlayers();
		var newPlayers = new ArrayList<Player>();
		
		if(players!=null && players.size()>0) {
			for(Player p  : players) {
				 var np = ImageUtils.getTeamWithPlayer(p);
				 newPlayers.add(np);
				 logger.info("player : {}",np.getPhotoImg());
			}
		}
		
		model.put("players", newPlayers);
		
		return "userHome";
	}
	

	@GetMapping("/user/register-team")
	public String viewTeamRegistrationPage(ModelMap model) {
		var teamPre = teamServiceImpl.findTeamByRegisterUser(getCurrentUser());
		logger.info("update-request : {}",teamPre);
		if(teamPre.isEmpty()) {
			model.put("team", new Team());
			return "addTeam";
		}
		var team = teamPre.get();
		model.put("team", ImageUtils.getTeamWithImage(team));
		
		return "addTeam";
	}
	
	@PostMapping("/user/register-team")
	public String saveTeamRegistration(ModelMap model,Team team,BindingResult results) {
		logger.info("team object from form : {}",team);
		
		if(results.hasErrors()) {
			model.put("errors", results.getAllErrors());
		}
		
		team.setRegisteredUser(getCurrentUser());
		
		try {
			team.setTeamLogo(team.getLogo().getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		teamServiceImpl.saveTeamDetails(team);
		model.put("team",ImageUtils.getTeamWithImage(team));
		
		var players = team.getPlayers();
		var newPlayers = new ArrayList<Player>();
		
		
		if(players!=null && players.size()>0) {
			for(Player p  : players) {
				 var np = ImageUtils.getTeamWithPlayer(p);
				 newPlayers.add(np);
				 logger.info("player : {}",np.getPhotoImg());
			}
		}
		
		model.put("players", newPlayers);
		
		return "userHome";
	}
	
	
	public static String getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		return currentPrincipalName;
	}
	
	@GetMapping("/chatgpt")
	public String chatGtp() {
		return "chatgpt";
	}
}
