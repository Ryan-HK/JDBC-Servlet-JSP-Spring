package org.zerock.myapp.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j2;


@Log4j2

@Controller
public class StompController {

	@MessageMapping("/{roomId}")
	@SendTo("/topic/{roomId}")
	public String ttt(@DestinationVariable long roomId,String message) throws Exception {
		log.trace("ttt({}) invoked.", message);
	
		
		
		
		return message;
	}
	
} // end class
