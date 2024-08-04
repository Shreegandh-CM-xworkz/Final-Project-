package com.xworkz.realestate.controller;

import com.xworkz.realestate.dto.FormDto;
import com.xworkz.realestate.service.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/")
public class RController {
    @Autowired
    FormService service;


    @GetMapping("/email/{email}")
        public String emailCheck(@PathVariable String email, HttpServletRequest request){
        return service.getEmail(email);
    }
    @GetMapping("/contact/{contact}")
        public String contactCheck(@PathVariable Long contact){
        return   service.getContact(contact);
    }
    @GetMapping("/aadhar/{aadhar}")
        public String aadharCheck(@PathVariable Long aadhar)
    {
        return   service.getAadhar(aadhar);
    }
    @GetMapping("/pan/{pan}")
        public String panCheck(@PathVariable String pan){
        return  service.getPan(pan);
    }

}
