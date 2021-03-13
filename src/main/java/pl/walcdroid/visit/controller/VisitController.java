package pl.walcdroid.visit.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;
import pl.walcdroid.patient.entity.Patient;
import pl.walcdroid.patient.repository.PatientRepository;
import pl.walcdroid.visit.entity.Visit;
import pl.walcdroid.visit.repository.VisitRepository;

import java.util.List;


@Controller
@RequestMapping("/visit")
public class VisitController {

    private VisitRepository visitRepository;
    private PatientRepository patientRepository;
    private DoctorRepository doctorRepository;
    private MedicalExaminationRepository medicalExaminationRepository;

    public VisitController(VisitRepository visitRepository, PatientRepository patientRepository, DoctorRepository doctorRepository, MedicalExaminationRepository medicalExaminationRepository) {
        this.visitRepository = visitRepository;
        this.patientRepository = patientRepository;
        this.doctorRepository = doctorRepository;
        this.medicalExaminationRepository = medicalExaminationRepository;
    }

    @GetMapping("/list")
    public String list (Model model) {
        List<Visit> visits = this.visitRepository.findAll();
        model.addAttribute("visit",visits);
        return "Visit/Visit_LIST";
    }


    @GetMapping("/add")
    public String add (Model model) {
        model.addAttribute("visit", new Visit());
        return "Visit/Visit_ADD";
    }

    @PostMapping("/add")
    public String addPost(Visit visit) {
        this.visitRepository.save(visit);
        return "redirect:/visit/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id, Model model) {
        Visit visit = this.visitRepository.getById(id);
        model.addAttribute("visit",visit);
        return "Visit/Visit_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (Visit visit) {
        this.visitRepository.save(visit);
        return "redirect:/visit/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
        this.visitRepository.deleteById(id);
        return "redirect:/visit/list";
    }


    @ModelAttribute("patient")
    public List<Patient> patients() {
        return this.patientRepository.findAll();
    }

    @ModelAttribute("doctor")
    public List<Doctor> doctors() {
        return this.doctorRepository.findAll();
    }

    @ModelAttribute("medical")
    public List<MedicalExamination> medicalExaminations() {
        return this.medicalExaminationRepository.findAll();
    }

}
