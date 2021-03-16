package pl.walcdroid.patient.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.walcdroid.patient.entity.Patient;
import pl.walcdroid.patient.service.PatientService;

import java.util.List;



@Controller
@RequestMapping("/patient")
public class PatientContoller {

    private PatientService patientService;

    public PatientContoller(PatientService patientService) {
        this.patientService = patientService;
    }

    @GetMapping("/list")
    public String list (Model model) {
        List<Patient> patientList = this.patientService.findAll();
        model.addAttribute("patients", patientList);
        return "Patient/Patient_LIST";
    }

    @GetMapping("/add")
    public String add (Model model) {
        model.addAttribute("patient", new Patient());
        return "Patient/Patient_ADD";
    }

    @PostMapping("/add")
    public String addPost (Patient patient) {
        this.patientService.save(patient);
        return "redirect:/patient/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id,Model model) {
        Patient patient = this.patientService.getById(id);
        model.addAttribute("patient", patient);
        return "Patient/Patient_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (Patient patient) {
        this.patientService.save(patient);
        return "redirect:/patient/list";
    }


    @GetMapping("/details/{id}")
    public String details (@PathVariable Long id, Model model) {
        Patient patient = this.patientService.getById(id);
        model.addAttribute("patient", patient);
        return "Patient/Patient_DETAILS";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
       this.patientService.delete(id);
       return "redirect:/patient/list";
    }

}
