package pl.walcdroid.visit.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;
import pl.walcdroid.doctor.service.DoctorService;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;
import pl.walcdroid.medicalExamination.service.MedicalExaminationService;
import pl.walcdroid.patient.entity.Patient;
import pl.walcdroid.patient.repository.PatientRepository;
import pl.walcdroid.patient.service.PatientService;
import pl.walcdroid.visit.entity.Visit;
import pl.walcdroid.visit.repository.VisitRepository;
import pl.walcdroid.visit.service.VisitService;

import java.util.List;


@Controller
@RequestMapping("/visit")
public class VisitController {

    private VisitService visitService;
    private PatientService patientService;
    private DoctorService doctorService;
    private MedicalExaminationService medicalExaminationService;

    public VisitController(VisitService visitService, PatientService patientService, DoctorService doctorService, MedicalExaminationService medicalExaminationService) {
        this.visitService = visitService;
        this.patientService = patientService;
        this.doctorService = doctorService;
        this.medicalExaminationService = medicalExaminationService;
    }

    @GetMapping("/list")
    public String list (Model model) {
        List<Visit> visits = this.visitService.findAll();
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
        this.visitService.save(visit);
        return "redirect:/visit/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id, Model model) {
        Visit visit = this.visitService.getById(id);
        model.addAttribute("visit",visit);
        return "Visit/Visit_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (Visit visit) {
        this.visitService.save(visit);
        return "redirect:/visit/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
        this.visitService.delete(id);
        return "redirect:/visit/list";
    }


    @ModelAttribute("patient")
    public List<Patient> patients() {
        return this.patientService.findAll();
    }

    @ModelAttribute("doctor")
    public List<Doctor> doctors() {
        return this.doctorService.findAll();
    }

    @ModelAttribute("medical")
    public List<MedicalExamination> medicalExaminations() {
        return this.medicalExaminationService.findAll();
    }

}
