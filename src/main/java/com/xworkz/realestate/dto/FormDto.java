package com.xworkz.realestate.dto;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Entity
@Getter
@Setter
@RequiredArgsConstructor
@Table(name = "real_estate_register_form")
@Component
@AllArgsConstructor
@NoArgsConstructor

@NamedQuery(name = "getAllRegisteredUsers", query = "select dto from FormDto dto")
@NamedQuery(name = "getEmail", query = "select dto from FormDto dto where email=:email")
@NamedQuery(name = "getContact", query = "select dto from FormDto dto where contactNumber=:contactNumber")
@NamedQuery(name = "getPan", query = "select dto from FormDto dto where panCard=:panCard")
@NamedQuery(name = "getAadhar", query = "select dto from FormDto dto where adharCard=:adharCard")
@NamedQuery(name = "deleteById", query = "delete from FormDto dto where dto.id =:id")
@NamedQuery(name = "getUserById", query = "select dto from FormDto dto where id=:id")
@NamedQuery(name = "getUserByEmail", query = "select dto from FormDto dto where dto.email=:email")
@NamedQuery(name = "update", query = "update  FormDto dto set firstName=:firstName,lastName=:lastName,email=:email,alternativeEmail=:alternativeEmail,contactNumber=:contactNumber,alternativeContactNumber=:alternativeContactNumber," +
        "currentAddress=:currentAddress,permanentAddress=:permanentAddress ,panCard=:panCard," +
        "adharCard=:adharCard where id=:id")
@NamedQuery(name = "updateToAudit", query = "update AuditDto a set a.updatedBy = :updatedBy, a.updatedOn = :updatedOn where a.id in (select dto.id from FormDto dto where dto.id =:id)")
@NamedQuery(name = "getDtoByEmail", query = "select dto from FormDto dto where dto.email=:email")
@NamedQuery(name = "updateOtp", query = "update FormDto dto set dto.otp=:otp where dto.email=:email")
@NamedQuery(name = "updateAttemptCount", query = "update FormDto dto set dto.attemptCount=:attemptCount where dto.email=:email")
@NamedQuery(name = "updateStatus", query = "update FormDto dto set dto.status=:status where dto.email=:email")


public class FormDto {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "first_name")
    @NonNull
    private String firstName;
    @NonNull
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "email")
    @NonNull
    private String email;
    @NonNull
    @Column(name = "alternative_email")
    private String alternativeEmail;
    @NonNull
    @Column(name = "contact_number")
    private Long contactNumber;
    @NonNull
    @Column(name = "alternative_contact_number")
    private Long alternativeContactNumber;
    @NonNull
    @Column(name = "current_address")
    private String currentAddress;
    @NonNull
    @Column(name = "permanent_address")
    private String permanentAddress;
    @NonNull
    @Column(name = "pan_card")
    private String panCard;
    @NonNull
    @Column(name = "adharCard")
    private Long adharCard;

    @Column(name = "attempt_count",columnDefinition = "INT DEFAULT 0")
    @NonNull
    private int attemptCount;
    @NonNull
    @Column(name = "otp")
    private String otp;
    @Column(name = "status", columnDefinition = "VARCHAR(10) DEFAULT 'active'")
    private String status;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JoinColumn(name = "audit_id", referencedColumnName = "audit_id")
    @NonNull
    private AuditDto adto;

}
