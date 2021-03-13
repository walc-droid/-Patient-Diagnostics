package pl.walcdroid.medicalExamination.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;
import pl.walcdroid.doctor.service.DoctorService;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;
import pl.walcdroid.medicalExamination.service.MedicalExaminationService;


import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/medical")
public class MedicalExaminationController {

    private DoctorService doctorService;
    private MedicalExaminationService medicalExaminationService;

    public MedicalExaminationController(DoctorService doctorService, MedicalExaminationService medicalExaminationService) {
        this.doctorService = doctorService;
        this.medicalExaminationService = medicalExaminationService;
    }

    @GetMapping("/list")
    public String list (Model model) {

        List<MedicalExamination> medicalExaminations = medicalExaminationService.findAll();

        for (int i = 0; i < medicalExaminations.size(); i++) {
            medicalExaminations.get(i).getDoctorList();
        }

        model.addAttribute("medical", medicalExaminations);

        return "MedicalExamination/MedicalExamination_LIST";
    }


    @GetMapping("/add")
    public String add (Model model) {
        model.addAttribute("medicalExamination", new MedicalExamination());
        return "MedicalExamination/MedicalExamination_ADD";
    }

    @PostMapping("/add")
    public String addPost (MedicalExamination medicalExamination) {
        this.medicalExaminationService.save(medicalExamination);
        return "redirect:/medical/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id, Model model) {
        MedicalExamination medicalExamination = this.medicalExaminationService.getById(id);
        model.addAttribute("medicalExamination",medicalExamination);
        return "MedicalExamination/MedicalExamination_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (MedicalExamination medicalExamination) {
        this.medicalExaminationService.save(medicalExamination);
        return "redirect:/medical/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
        this.medicalExaminationService.delete(id);
        return "redirect:/medical/list";
    }

    @ModelAttribute("doctor")
    public List<Doctor> doctors() {
        return this.doctorService.findAll();
    }


}
