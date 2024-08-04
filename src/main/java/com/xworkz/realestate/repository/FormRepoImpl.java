package com.xworkz.realestate.repository;

import com.xworkz.realestate.dto.AuditDto;
import com.xworkz.realestate.dto.FormDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Component
public class FormRepoImpl implements FormRepo {
    @Autowired
    EntityManagerFactory emf;

    @Override
    public void save(FormDto dto) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(dto);
            et.commit();
        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }


    }

    @Override
    public FormDto getEmail(String email) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getEmail");
            query.setParameter("email",email);
            Object obj = query.getSingleResult();
            FormDto dto = (FormDto) obj;
            et.commit();
            return dto;


        }
    catch (PersistenceException e) {
           e.printStackTrace();
       }
        finally {
            em.close();
        }
        return null;
    }

    @Override
    public FormDto getPan(String pan) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getPan");
            query.setParameter("panCard", pan);
            Object obj = query.getSingleResult();
            FormDto dto = (FormDto) obj;
            et.commit();
            return dto;


        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
        return null;
    }

    @Override
    public FormDto getConatct(Long contact) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getContact");
            query.setParameter("contactNumber", contact);
            Object obj = query.getSingleResult();
            FormDto dto = (FormDto) obj;
            et.commit();
            return dto;
        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
        return null;
    }

    @Override
    public FormDto getAadhar(Long aadhar) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getAadhar");
            query.setParameter("adharCard", aadhar);
            Object obj = query.getSingleResult();
            FormDto dto = (FormDto) obj;
            et.commit();
            return dto;


        } catch (PersistenceException e) {

            et.rollback();

        } finally {
            em.close();
        }


        return null;
    }

    @Override
    public void deleteById(int id) {

        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("deleteById");
            query.setParameter("id", id);
            query.executeUpdate();

            et.commit();
        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }

    }

    @Override
    public FormDto getUserById(int id) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getUserById");
            query.setParameter("id", id);
            Object object = query.getSingleResult();
            FormDto dto = (FormDto) object;
            et.commit();
            return dto;
        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
        return null;

    }
    @Override
    public FormDto getUserByEmail(String email) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getUserByEmail");
            query.setParameter("email", email);
            Object object = query.getSingleResult();
            FormDto dto = (FormDto) object;
            et.commit();
            return dto;
        } catch (PersistenceException e) {
            et.rollback();
            e.printStackTrace();
        } finally {
            em.close();
        }
        return null;

    }


    @Override
    public FormDto getDtoByEmail(String email) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("getDtoByEmail");
            query.setParameter("email", email);
            Object object = query.getSingleResult();
            System.out.println(object);
            FormDto dto = (FormDto) object;
            et.commit();
            return dto;
        } catch (PersistenceException e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return null;

    }

    @Override
    public void update(String firstName, String lastName, String email, String alternativeEmail, Long contactNumber, Long alternativeContactNumber, String currentAddress, String permanentAddress, String panCard, Long adharCard, int id, LocalDateTime updatedOn) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("update");
            query.setParameter("firstName", firstName);
            query.setParameter("lastName", lastName);
            query.setParameter("email", email);
            query.setParameter("alternativeEmail", alternativeEmail);
            query.setParameter("contactNumber", contactNumber);
            query.setParameter("alternativeContactNumber", alternativeContactNumber);
            query.setParameter("currentAddress", currentAddress);
            query.setParameter("permanentAddress", permanentAddress);
            query.setParameter("panCard", panCard);
            query.setParameter("adharCard", adharCard);
            query.setParameter("id", id);
            query.executeUpdate();
            Query query1 = em.createNamedQuery("updateToAudit");
            query1.setParameter("id", id);
            query1.setParameter("updatedBy", firstName + "" + lastName);
            query1.setParameter("updatedOn", updatedOn);
            query1.executeUpdate();
            et.commit();


        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
    }
    @Override
    public void updateOtp(String otp,String email) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("updateOtp");
            query.setParameter("otp", otp);
            query.setParameter("email", email);
            query.executeUpdate();
            et.commit();


        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
    }
    @Override
    public void updateAttemptCount(int attemptCount,String email) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("updateAttemptCount");
            query.setParameter("attemptCount", attemptCount);
            query.setParameter("email", email);
            query.executeUpdate();
            et.commit();

        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
    }
    @Override
    public void updateStatus(String status,String email) {
        EntityManager em = this.emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Query query = em.createNamedQuery("updateStatus");
            query.setParameter("status", status);
            query.setParameter("email", email);
            query.executeUpdate();
            et.commit();

        } catch (PersistenceException e) {
            et.rollback();
        } finally {
            em.close();
        }
    }
}



