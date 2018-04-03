/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manager;

/**
 *
 * @author Nupur
 */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.sun.mail.imap.IMAPMessage;
import java.util.Date;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public  class email {
    public static String activation_code;
    public static boolean SendMail(String to, String sub, String body) {
        
        
        try
        {
        Properties property = System.getProperties();
        property.put("mail.smtp.host", "smtp.gmail.com");
        property.put("mail.smtp.socketFactory.port", "465");
        property.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        property.put("mail.smtp.auth", "true");
        property.put("mail.smtp.port", "465");
            Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("acityguide@gmail.com", "cityguide2017"); 
            }   
            };
            Session session = Session.getInstance(property, auth);
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("acityguide@gmail.com"));
            message.setSubject(sub);
            message.setText(body);
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setContent(body, "text/html");
            message.setSentDate(new Date());
            Transport.send(message);
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }
    public static boolean randomnumber(String uname)
    {
        
        Random random = new Random();
        activation_code = "" + (int)(100000+random.nextInt(900000));
        String msg = " <h1 style=\"text-align:center;color:green;\"> Ahemdabad City Guide </h1>"
            + "<h3 style=\"text-align:center;text-decoration:underline\"> Thank you for !</h3>"
            + "<h2 style=\"text-align:center;\">Your OTP is :: <font color=\"blue\"><b><i><u> "+activation_code+" </U></i></b></font> </h2>";
        if(SendMail(uname, "OTP", msg))
        {
        
                    return true;
        } 
        else 
        {
                    return false;
        }
    }
    
    public static String getRandom()
    {
        return activation_code;
    }
    
    
}

