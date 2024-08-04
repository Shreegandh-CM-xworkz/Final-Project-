package com.xworkz.realestate.mail;

public interface EmailService {
    public boolean mailSend(String mail,String otp);
    void mailSend(String mail);
}
