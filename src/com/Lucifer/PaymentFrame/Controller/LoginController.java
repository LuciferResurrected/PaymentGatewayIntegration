package com.Lucifer.PaymentFrame.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.Lucifer.PaymentFrame.Model.LoginModel;
import com.Lucifer.PaymentFrame.Services.LoginServices;

@RestController
public class LoginController {

	@Autowired
	LoginServices loginServices;
	
	@RequestMapping(value = "admin/adminlogin", method = RequestMethod.POST)
	public Map<Object,Object> admin(@RequestBody LoginModel loginModel){
		return null;
	}
}
