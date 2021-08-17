package com.green.chodoori.main.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.green.chodoori.main.web.domain.SessionUserInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		
		SessionUserInfo user =  (SessionUserInfo) session.getAttribute("userInfo");
		String requestedUrl = request.getServletPath().toString();
		
		log.info("인터셉터 정보 ==> 요청 URL : {}",requestedUrl);
		
		
		if(user==null) {
			response.sendRedirect("/?loginRedirect="+requestedUrl);
			return false;
		}
		
		return super.preHandle(request, response, handler);
	}
}
