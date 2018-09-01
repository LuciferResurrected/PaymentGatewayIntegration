package com.Lucifer.PaymentFrame.DAO;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.Lucifer.PaymentFrame.CommonUtilities.CommonUtil;
import com.Lucifer.PaymentFrame.Model.LoginModel;

public class LoginDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	CommonUtil commonUtil;
	
	private static Logger log = Logger.getLogger(LoginDAO.class);
	public List<Map<String, Object>> loginauthentication(LoginModel loginModel){
	try {
		String Query = "";
		List<Map<String, Object>> AdminLoginList = jdbcTemplate.queryForList(Query, loginModel.getUsername(), commonUtil.passwordEncryption(loginModel.getPassword()));
		return Collections.emptyList();
	}catch(Exception ex) {
		ex.getMessage();
		log.error("Login DAO Exception : "+ex);
		return new ArrayList<>();
	}
	}
}
