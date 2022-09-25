package org.zerock.myapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;
import org.zerock.myapp.handler.MyEchoHandler;

import lombok.extern.log4j.Log4j2;

@Log4j2

//@Configuration
//@EnableWebSocket
public class WebSocketConfig implements 
								WebSocketConfigurer {

	
	// 1. Bean으로 Handler를 등록하며, Path속성 추가
	// + HttpSession과, ScoketSession 값을 동일하게 해주는 Interceptor 추가
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		log.trace("registerWebSocketHandlers({}) invoked.", registry);
		
		registry.addHandler(new MyEchoHandler(),"/myEcho")
//			.setAllowedOrigins("*")
			.addInterceptors(new HttpSessionHandshakeInterceptor())
			.withSockJS();		// SockJS 사용
		
	} // registerWebSocketHandlers

	
	

}
