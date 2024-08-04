package com.xworkz.realestate.service;

import com.xworkz.realestate.dto.FormDto;

import java.time.LocalDateTime;

public interface FormService {
    void validateAndSave(FormDto dto);
    String getEmail(String email);
    String getPan(String pan);
    String getContact(Long contact);
    String getAadhar(Long aadhar);
    void validateDeleteById(int id);
    void validateUpdate(String firstName, String lastName, String email, String alternativeEmail, Long contactNumber, Long alternativeContactNumber, String  currentAddress, String permanentAddress , String panCard, Long adharCard , int id, LocalDateTime updatedOn);
    FormDto ValidateGetUserById(int id);
    FormDto getDtoByEmail(String email);
    FormDto getUserByEmail(String email);
    void updateOtp(String otp,String email);
    void updateAttemptCount(int attemptCount,String email);
    void  updateStatus(String status,String email);
}
