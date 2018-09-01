package com.Lucifer.PaymentFrame.Services;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.Lucifer.PaymentFrame.DAO.LoginDAO;
import com.Lucifer.PaymentFrame.Model.LoginModel;

public class LoginServices {

	@Autowired
	LoginDAO loginDAO;
	public static Logger log = Logger.getLogger(LoginServices.class);
	
	public Map<Object, Object> loginAuthentication(LoginModel loginModel){
		try {
			Map<Object, Object> LoginMap = new LinkedHashMap<>();
			List<Map<String, Object>> loginAuth = loginDAO.loginauthentication(loginModel); 
			if(loginAuth.isEmpty()) {
				LoginMap.put("Status", loginAuth.get(0).get("Status"));
			}
			return LoginMap;
		}catch(Exception ex) {
			ex.getMessage();
			log.error("Login Exception Thrown : "+ex);
			return null;
		}
	}
}
