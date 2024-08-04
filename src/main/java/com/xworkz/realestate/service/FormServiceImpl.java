package com.xworkz.realestate.service;



import com.xworkz.realestate.dto.FormDto;
import com.xworkz.realestate.repository.FormRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;


@Component
public class FormServiceImpl implements FormService{
    @Autowired
    FormRepo repo;


    @Override
    public void validateAndSave(FormDto dto) {
   if (dto!=null) {

       repo.save(dto);
   }else {
       System.out.println("null value save");
   }

    }

    @Override
    public String getEmail(String email) {
        System.out.println(email);
        FormDto dto = repo.getEmail(email);
        System.out.println(dto+" getEmail dto");
        if (dto != null) {
            return "*Email already exist";
        }else {
            return null;
        }

    }
        @Override
        public FormDto getDtoByEmail(String email) {
            if (email != null) {
                return repo.getDtoByEmail(email);
            }
            return null;
        }
    @Override
    public String getPan(String pan) {
        FormDto dto=repo.getPan(pan);
        if (dto!=null){
           return "*pan already exist";
        }return null;

    }  @Override
    public String getContact(Long contact) {
        FormDto dto=repo.getConatct(contact);
        if (dto!=null){
           return "*contact already exist";
        }return null;

    }  @Override
    public String getAadhar(Long aadhar) {
        FormDto dto=repo.getAadhar(aadhar);
        if (dto!=null){
           return "*aadhar already exist";
        }return null;

    }

    @Override
    public void validateDeleteById(int id) {
       if (id>0){
           repo.deleteById(id);
       }
    }
    @Override
    public void validateUpdate(String firstName, String lastName, String email, String alternativeEmail, Long contactNumber, Long alternativeContactNumber, String  currentAddress, String permanentAddress , String panCard, Long adharCard , int id, LocalDateTime updatedOn){
        if (firstName!=null &&lastName!=null&& email!=null &&alternativeEmail!=null&&contactNumber!=null&&alternativeContactNumber!=null&&currentAddress!=null&&permanentAddress!=null&&panCard!=null&&adharCard!=null&&id>0){
            repo.update(firstName,lastName,email,alternativeEmail,contactNumber,alternativeContactNumber,currentAddress,permanentAddress,panCard,adharCard,id,updatedOn);
        }
    }

    @Override
    public FormDto ValidateGetUserById(int id) {
        FormDto dto=null;
        if (id>0){
            dto= repo.getUserById(id);
        }
        return dto;
    }
    @Override
   public FormDto getUserByEmail(String email){
        FormDto dto=null;
        if (email!=null){
            dto= repo.getUserByEmail(email);
        }
        return dto;
    }

    public void updateOtp(String otp,String email){
        if (otp!=null&&email!=null){
            repo.updateOtp(otp,email);
        }
    }
    public void updateAttemptCount(int attemptCount,String email){
        if (attemptCount>0&&email!=null){
            repo.updateAttemptCount(attemptCount,email);
        }
    }
    public void  updateStatus(String status,String email){
        if (status!=null&&email!=null){
            repo.updateStatus(status,email);
        }
    }
}
