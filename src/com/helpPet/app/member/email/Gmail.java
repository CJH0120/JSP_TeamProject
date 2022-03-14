package com.helpPet.app.member.email;



import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;


public class Gmail  extends Authenticator{
	
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("980120CJH", "asd15900");
	}
	
}
