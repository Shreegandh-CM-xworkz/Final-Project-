package com.xworkz.realestate.mail;

import com.xworkz.realestate.configuration.MailConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;


@Component
public class EmailSendingImpl implements EmailService{
@Autowired
MailConfiguration configuration;

    @Override
    public boolean mailSend(String email, String otp) {
        try{
            SimpleMailMessage message=new SimpleMailMessage();
            message.setTo(email);
            message.setSubject("OTP for login");
            message.setText("Your ot for login is "+otp);
            configuration.mailConfig().send(message);
            System.out.println("mail sent successfully");
            return true;

        }catch (Exception e){
            System.out.println("Failed to send email: "+email);
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public void mailSend(String mail) {
        try{
            SimpleMailMessage message=new SimpleMailMessage();
            message.setTo(mail);
            message.setSubject("Registration successfull");
            message.setText("Welcome to Website.Your account is successfully created."+"You can login to access our services");
            configuration.mailConfig().send(message);

        }catch (Exception e){
            e.printStackTrace();
            
        }

    }
}
