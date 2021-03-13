package pl.walcdroid.doctor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.service.DoctorService;


import javax.validation.Valid;
import java.util.List;



@Controller
@RequestMapping("/doctor")
public class DoctorController {

    private DoctorService doctorService;

    public DoctorController(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    @GetMapping("/list")
    public String list (Model model) {
        List<Doctor> doctorList = this.doctorService.findAll();
        model.addAttribute("doctor", doctorList);
        return "Doctor/Doctor_LIST";
    }

    @GetMapping("/add")
    public String add (Model model) {
        model.addAttribute("doctor", new Doctor());
        return "Doctor/Doctor_ADD";
    }

    @PostMapping("/add")
    public String addPost (@Valid Doctor doctor, BindingResult violations) {

        if (violations.hasErrors()) {
            return "Doctor/Doctor_ADD";
        }

        this.doctorService.saveDoctor(doctor);
        return "redirect:/doctor/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id, Model model) {
        Doctor doctor = this.doctorService.getById(id);
        model.addAttribute("doctor",doctor);
        return "Doctor/Doctor_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (Doctor doctor) {
        this.doctorService.saveDoctor(doctor);
        return "redirect:/doctor/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
        this.doctorService.deleteDoctor(id);
        return "redirect:/doctor/list";
    }
}
