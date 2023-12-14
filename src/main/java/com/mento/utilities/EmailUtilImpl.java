package com.mento.utilities;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailUtilImpl implements EmailUtil {

	@Autowired
	JavaMailSender emailSender;
	
	@Override
	public void sendEmail(String to, String subject, String message) {
		 SimpleMailMessage msg = new SimpleMailMessage();
		 msg.setSubject(subject);
		 msg.setText(message);
		 msg.setTo(to);
		 msg.setFrom("lujesh.pradhan.52@gmail.com");

	        emailSender.send(msg);

	}

}
