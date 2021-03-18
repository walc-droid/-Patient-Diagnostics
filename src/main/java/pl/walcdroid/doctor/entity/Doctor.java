package pl.walcdroid.doctor.entity;

import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.visit.entity.Visit;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "Cannot be empty!")
    private String name;
    @NotEmpty(message = "Cannot be empty!")
    private String surname;

    @OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
    private DoctorLoginDetails doctorLoginDetails;

    @ManyToMany(mappedBy = "doctorList")
    private List<MedicalExamination> medicalExaminations = new ArrayList<>();

    @OneToOne(mappedBy = "doctor",cascade = CascadeType.REMOVE)
    private Visit visit;

    public Long getId() {
        return id;
    }

    public Doctor setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Doctor setName(String name) {
        this.name = name;
        return this;
    }

    public String getSurname() {
        return surname;
    }

    public Doctor setSurname(String surname) {
        this.surname = surname;
        return this;
    }

    public DoctorLoginDetails getDoctorLoginDetails() {
        return doctorLoginDetails;
    }

    public Doctor setDoctorLoginDetails(DoctorLoginDetails doctorLoginDetails) {
        this.doctorLoginDetails = doctorLoginDetails;
        return this;
    }

    public List<MedicalExamination> getMedicalExaminations() {
        return medicalExaminations;
    }

    public Doctor setMedicalExaminations(List<MedicalExamination> medicalExaminations) {
        this.medicalExaminations = medicalExaminations;
        return this;
    }

    public Visit getVisit() {
        return visit;
    }

    public Doctor setVisit(Visit visit) {
        this.visit = visit;
        return this;
    }
}
