package org.vasaviyuvajanasangha.kvcl.service.utils;

import java.util.Base64;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.vasaviyuvajanasangha.kvcl.model.Player;
import org.vasaviyuvajanasangha.kvcl.model.Team;

public class ImageUtils {

	static Logger logger = LoggerFactory.getLogger("ImageUtils.java");
    
    public static String getEncodedImage(byte[] arr) {	
		var encoder = Base64.getEncoder();
		var image = new StringBuilder();
		image.append("data:image/png;base64,");
		try {
			image.append(encoder.encodeToString(arr));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String img = new String(image);
		logger.info("image retrieved as : {}",img);
		return img;
	}
    
    public static Team getTeamWithImage(Team team) {
    	var newTeam = team;
    	newTeam.setLogoImg(getEncodedImage(team.getTeamLogo()));
    	return newTeam;
    }
    
    public static Player getTeamWithPlayer(Player player) {
    	var newPlayer = player;
    	newPlayer.setPhotoImg(getEncodedImage(newPlayer.getPlayerPhoto()));
    	return newPlayer;
    }

}
