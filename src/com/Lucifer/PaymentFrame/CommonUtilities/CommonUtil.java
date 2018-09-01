package com.Lucifer.PaymentFrame.CommonUtilities;

import java.security.MessageDigest;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
public class CommonUtil {

	List<Map<String, Object>> commonQuery;
	public static Logger log = Logger.getLogger(CommonUtil.class);
	
	/**@Autowired
	CommonDAO commonDAO;**/
	
	public String passwordEncryption(String str) {
		String str_password;
		try {
			String plainTextPassword = str;
			MessageDigest mdAlgo = MessageDigest.getInstance("SHA-256");
			mdAlgo.update(plainTextPassword.getBytes());
			byte[] Digest = mdAlgo.digest();
			StringBuffer hexString = new StringBuffer();
			for(int i=0; i < Digest.length; i++) {
				plainTextPassword = Integer.toHexString(0xFF & Digest[i]);
				if(plainTextPassword.length() < 2) {
					plainTextPassword = "0" + plainTextPassword;
				}
				hexString.append(plainTextPassword);
			}
			str_password = hexString.toString();
			return str_password;
		}catch(Exception ex) {
			ex.getMessage();
			log.error("Password Encryption Exception : "+ex);
			return null;
		}
		
	}
}
