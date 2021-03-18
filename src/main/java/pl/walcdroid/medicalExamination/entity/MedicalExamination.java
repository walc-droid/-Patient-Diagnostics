package pl.walcdroid.medicalExamination.entity;


import org.springframework.data.repository.cdi.Eager;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.visit.entity.Visit;

import javax.persistence.*;
import javax.persistence.criteria.Fetch;
import javax.print.Doc;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BinaryOperator;
import java.util.stream.Collectors;


@Entity
@Table
public class MedicalExamination {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Size(min = 1 , message = "Minimum size is 2 characters!")
    private String type;
    private String description;
    @NotEmpty(message = "Enter cost!")
    private String cost;
    @Size(min = 3 , message = "Minimum size is 3 characters!")
    private String location;


    @ManyToMany(fetch = FetchType.EAGER)
    private List<Doctor> doctorList = new ArrayList<>();


    @OneToOne(mappedBy = "medicalExamination",cascade = CascadeType.REMOVE)
    private Visit visit;


    public Long getId() {
        return id;
    }

    public MedicalExamination setId(Long id) {
        this.id = id;
        return this;
    }

    public String getType() {
        return type;
    }

    public MedicalExamination setType(String type) {
        this.type = type;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public MedicalExamination setDescription(String description) {
        this.description = description;
        return this;
    }

    public String getCost() {
        return cost;
    }

    public MedicalExamination setCost(String cost) {
        this.cost = cost;
        return this;
    }

    public String getLocation() {
        return location;
    }

    public MedicalExamination setLocation(String location) {
        this.location = location;
        return this;
    }


    public List<Doctor> getDoctorList() {
        return doctorList;
    }

    public MedicalExamination setDoctorList(List<Doctor> doctorList) {
        this.doctorList = doctorList;
        return this;
    }

    public Visit getVisit() {
        return visit;
    }

    public MedicalExamination setVisit(Visit visit) {
        this.visit = visit;
        return this;
    }
    @Transient //dodatkowe pole nie szukane w bazie danych
    public String getDoctorNames () {
        List<String> doctorSurname = doctorList.stream().map(surname -> surname.getSurname()).collect(Collectors.toList());
        return String.join(",", doctorSurname);
    }

}
