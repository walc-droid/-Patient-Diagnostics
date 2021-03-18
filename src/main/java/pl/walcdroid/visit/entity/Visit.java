package pl.walcdroid.visit.entity;

import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.patient.entity.Patient;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Entity
@Table
public class Visit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty(message = "Enter date!")
    private String visitDate;
    @NotEmpty(message = "Enter charge!")
    private String charge;
    private String visitDescription;
    @Size(min = 3 , message = "Minimum size is 3 characters!")
    private String location;


    @ManyToOne
    private Patient patient;


    @OneToOne
    private Doctor doctor;


    @OneToOne
    private MedicalExamination medicalExamination;


    public Long getId() {
        return id;
    }

    public Visit setId(Long id) {
        this.id = id;
        return this;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public Visit setVisitDate(String visitDate) {
        this.visitDate = visitDate;
        return this;
    }

    public String getCharge() {
        return charge;
    }

    public Visit setCharge(String charge) {
        this.charge = charge;
        return this;
    }

    public String getVisitDescription() {
        return visitDescription;
    }

    public Visit setVisitDescription(String visitDescription) {
        this.visitDescription = visitDescription;
        return this;
    }

    public String getLocation() {
        return location;
    }

    public Visit setLocation(String location) {
        this.location = location;
        return this;
    }

    public Patient getPatient() {
        return patient;
    }

    public Visit setPatient(Patient patient) {
        this.patient = patient;
        return this;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public Visit setDoctor(Doctor doctor) {
        this.doctor = doctor;
        return this;
    }

    public MedicalExamination getMedicalExamination() {
        return medicalExamination;
    }

    public Visit setMedicalExamination(MedicalExamination medicalExamination) {
        this.medicalExamination = medicalExamination;
        return this;
    }
}
