package pl.walcdroid.visit.entity;

import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.patient.entity.Patient;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table
public class Visit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDateTime visitDate;
    private String charge;
    private String visitDescription;

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

    public LocalDateTime getVisitDate() {
        return visitDate;
    }

    public Visit setVisitDate(LocalDateTime visitDate) {
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
