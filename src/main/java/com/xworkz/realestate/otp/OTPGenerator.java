package com.xworkz.realestate.otp;


    import java.security.SecureRandom;

    public class OTPGenerator {

        private static final String OTP_CHARACTERS = "0123456789";
        private static final int OTP_LENGTH = 6;

        public static String generateOTP() {
            SecureRandom random = new SecureRandom();
            StringBuilder otp = new StringBuilder(OTP_LENGTH);
            for (int i = 0; i < OTP_LENGTH; i++) {
                int randomIndex = random.nextInt(OTP_CHARACTERS.length());
                otp.append(OTP_CHARACTERS.charAt(randomIndex));
            }
            return otp.toString();
        }

        public static void main(String[] args) {
            String generatedOTP = generateOTP();
            System.out.println("Generated OTP: " + generatedOTP);
        }
    }

