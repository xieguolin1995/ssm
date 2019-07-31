package com.ssm.utils;

import java.security.GeneralSecurityException;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import com.sun.mail.util.MailSSLSocketFactory;

/**
 * 发送邮件工具类
 * @author Administrator
 */
public class MailUtil {
	
	/**
	 * 发送邮件
	 * @param to  发送给谁
	 * @param code  激活码
	 * @throws GeneralSecurityException 
	 */
	public static void sendMail(String to,String code) throws GeneralSecurityException{
		// 1.属性对象
		Properties props = new Properties();
		// 开启debug调试
	    props.setProperty("mail.debug", "true");
		// 发送邮件的协议
		props.setProperty("mail.host", "smtp.qq.com");
		// 发送服务器需要身份验证
	    props.setProperty("mail.smtp.auth", "true");
	    // 发送邮件协议名称
	    props.setProperty("mail.transport.protocol", "smtp");
		 /**SSL认证，注意腾讯邮箱是基于SSL加密的，所有需要开启才可以使用**/
	    MailSSLSocketFactory sf = new MailSSLSocketFactory();
	    sf.setTrustAllHosts(true);
	    props.put("mail.smtp.ssl.enable", "true");
	    props.put("mail.smtp.ssl.socketFactory", sf);
	    //服务器信息 和 认证信息(登录账号)
		// 2.创建一个对象Session.
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("1044840565@qq.com", "beosntywsllrbcbb");
			}
		});
		// 3.创建一个代表邮件的对象:
		Message message = new MimeMessage(session);
		
		try {
			// 设置发件人:
			message.setFrom(new InternetAddress("1044840565@qq.com"));
			// 设置收件人:
			// TO:收件人.
			// CC:抄送
			// BCC:暗送,密送
			message.setRecipient(RecipientType.TO, new InternetAddress(to));
			// 设置邮件的主题:
			message.setSubject("小鱼爱读书 官方网站的激活邮件");
			// 设置邮件的正文:
			message.setContent("<h1>欢迎来到小鱼爱读书</h1><h3 style=\"color:green\"><a href='http://localhost:8080/ssm/userActiva?code="+code+"'>http://localhost:8080/ssm/userActiva?code="+code+"</a></h3>", "text/html;charset=UTF-8");
			// 发送邮件:
			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		} 
	}
}
