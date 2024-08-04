package com.xworkz.realestate.controller;

import com.xworkz.realestate.dto.AuditDto;
import com.xworkz.realestate.dto.FormDto;
import com.xworkz.realestate.mail.EmailSendingImpl;
import com.xworkz.realestate.otp.OTPGenerator;
import com.xworkz.realestate.service.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;


@Component
@RequestMapping("/")
public class VController {
    @Autowired
    FormService service;
    @Autowired
    AuditDto auditDto;

    @PostMapping("/save")
    public String save(@ModelAttribute FormDto dto, HttpServletRequest request) {
        System.err.println("save method..................controller:" + dto);
        auditDto.setCreatedOn(LocalDateTime.now());
        auditDto.setCreatedBy(dto.getFirstName() + " " + dto.getLastName());
        dto.setAdto(auditDto);
        dto.setStatus("active");
        service.validateAndSave(dto);
        request.setAttribute("dto", dto);
        return "userNavbar.jsp";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam int id) {
        service.validateDeleteById(id);
        return "index.jsp";
    }

    @GetMapping("/update")
    public String getUser(@RequestParam int id, HttpServletRequest request) {

        FormDto dto = service.ValidateGetUserById(id);
        request.setAttribute("dto", dto);
        return "update.jsp";
    }

    @PostMapping("/actualUpdate")
    public String update(@RequestParam int id, @ModelAttribute FormDto dto, HttpServletRequest request) {
        auditDto.setUpdatedBy(dto.getFirstName() + "" + dto.getLastName());
        auditDto.setUpdatedOn(LocalDateTime.now());
        dto.setAdto(auditDto);
        service.validateUpdate(dto.getFirstName(), dto.getLastName(), dto.getEmail(), dto.getAlternativeEmail(), dto.getContactNumber(), dto.getAlternativeContactNumber(), dto.getCurrentAddress(), dto.getPermanentAddress(), dto.getPanCard(), dto.getAdharCard(), id, auditDto.getUpdatedOn());
        request.setAttribute("dto", dto);
        return "userNavbar.jsp";
    }


    @Autowired
    EmailSendingImpl emailSending;

    String mail;

    @PostMapping("/generateOtp")
    public String generatingOTPHandler(@RequestParam("email") String email, HttpServletRequest request) {
        FormDto dto = service.getDtoByEmail(email);
        System.out.println(dto);
        System.out.println(dto.getStatus());
        if (dto.getStatus().equals("blocked")) {
            return "blocked.jsp";
        } else {
            String generatedOtp = OTPGenerator.generateOTP();
            service.updateOtp(generatedOtp, email);
            emailSending.mailSend(email, generatedOtp);
            request.setAttribute("email", email);
            mail = email;
            return "otp.jsp";
        }
    }


    @PostMapping("/otpCompareAndLogin")
    public String otpCompareAndLogin(@RequestParam("email") String email,
                                     @RequestParam("input1") String input1,
                                     @RequestParam("input2") String input2,
                                     @RequestParam("input3") String input3,
                                     @RequestParam("input4") String input4,
                                     @RequestParam("input5") String input5,
                                     @RequestParam("input6") String input6,
                                     HttpServletRequest request) {

        String enteredOtp = input1 + "" + input2 + "" + input3 + "" + input4 + "" + input5 + "" + input6;
        FormDto dto = service.getDtoByEmail(mail);
        System.out.println(dto);
        System.out.println(enteredOtp);
        System.out.println(dto.getOtp());
        if (dto.getAttemptCount() <= 3) {
            if (dto.getOtp().contentEquals(enteredOtp)) {
                FormDto dto1 = service.getUserByEmail(mail);
                request.setAttribute("dto", dto1);
                return "userNavbar.jsp";

            } else {
                request.setAttribute("msg", "*Entered otp is incorrect");
                request.setAttribute("email", email);
                if (dto.getAttemptCount() > 3) {
                    service.updateStatus("blocked", email);
                } else {
                    service.updateAttemptCount(dto.getAttemptCount() + 1, email);

                }
                return "otp.jsp";

            }

        }
        return "blocked.jsp";


    }
}
