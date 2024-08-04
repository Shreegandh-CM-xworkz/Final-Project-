package com.xworkz.realestate.dto;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Component
@Table(name = "audit")
@Data
@RequiredArgsConstructor
@AllArgsConstructor
@NoArgsConstructor
public class AuditDto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "audit_id")
    private int id;
    @NonNull
    @Column(name = "created_by")
    private String createdBy;
    @NonNull
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @NonNull
    @Column(name = "updated_by")
    private String updatedBy;
    @NonNull
    @Column(name = "updated_on")
    private LocalDateTime updatedOn;
    @NonNull
    @OneToOne(mappedBy = "adto")
    private FormDto dto;

}
