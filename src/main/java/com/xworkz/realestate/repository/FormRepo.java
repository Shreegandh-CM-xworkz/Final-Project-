package com.xworkz.realestate.repository;

import com.xworkz.realestate.dto.AuditDto;
import com.xworkz.realestate.dto.FormDto;

import java.time.LocalDateTime;

public interface FormRepo {
    void save(FormDto dto);
    FormDto getEmail(String email);
    FormDto getPan(String pan);
    FormDto getConatct(Long contact);
    FormDto getAadhar(Long aadhar);
    void deleteById(int id);
    void update(String firstName, String lastName, String email, String alternativeEmail, Long contactNumber, Long alternativeContactNumber, String  currentAddress, String permanentAddress , String panCard, Long adharCard , int id, LocalDateTime updatedOn);
    FormDto getUserById(int id);
    FormDto getDtoByEmail(String email);
    FormDto getUserByEmail(String email);
    void updateOtp(String otp,String email);
    void updateAttemptCount(int attemptCount,String email);
    void updateStatus(String status,String email);
}
