package pl.walcdroid.patient.entity;

import pl.walcdroid.visit.entity.Visit;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "patient")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String surname;

    //Details
    private String dateOfBirth;
    private String pesel;
    private String city;
    private String street;
    private String zipCode;
    private String houseNumber;
    private String apartmentNumber;
    private String phoneNumber;
    private String email;

    //Card
    private String symptoms;
    private String comorbidities;
    private String medicines;
    private String injuries;
    private String operations;
    private String drugs;
    private String diagnosis;

    @OneToMany(mappedBy = "patient")
    List<Visit> visitList = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public Patient setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Patient setName(String name) {
        this.name = name;
        return this;
    }

    public String getSurname() {
        return surname;
    }

    public Patient setSurname(String surname) {
        this.surname = surname;
        return this;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public Patient setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
        return this;
    }

    public String getPesel() {
        return pesel;
    }

    public Patient setPesel(String pesel) {
        this.pesel = pesel;
        return this;
    }

    public String getCity() {
        return city;
    }

    public Patient setCity(String city) {
        this.city = city;
        return this;
    }

    public String getStreet() {
        return street;
    }

    public Patient setStreet(String street) {
        this.street = street;
        return this;
    }

    public String getZipCode() {
        return zipCode;
    }

    public Patient setZipCode(String zipCode) {
        this.zipCode = zipCode;
        return this;
    }

    public String getHouseNumber() {
        return houseNumber;
    }

    public Patient setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
        return this;
    }

    public String getApartmentNumber() {
        return apartmentNumber;
    }

    public Patient setApartmentNumber(String apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
        return this;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public Patient setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Patient setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public Patient setSymptoms(String symptoms) {
        this.symptoms = symptoms;
        return this;
    }

    public String getComorbidities() {
        return comorbidities;
    }

    public Patient setComorbidities(String comorbidities) {
        this.comorbidities = comorbidities;
        return this;
    }

    public String getMedicines() {
        return medicines;
    }

    public Patient setMedicines(String medicines) {
        this.medicines = medicines;
        return this;
    }

    public String getInjuries() {
        return injuries;
    }

    public Patient setInjuries(String injuries) {
        this.injuries = injuries;
        return this;
    }

    public String getOperations() {
        return operations;
    }

    public Patient setOperations(String operations) {
        this.operations = operations;
        return this;
    }

    public String getDrugs() {
        return drugs;
    }

    public Patient setDrugs(String drugs) {
        this.drugs = drugs;
        return this;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public Patient setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
        return this;
    }

    public List<Visit> getVisitList() {
        return visitList;
    }

    public Patient setVisitList(List<Visit> visitList) {
        this.visitList = visitList;
        return this;
    }
}
