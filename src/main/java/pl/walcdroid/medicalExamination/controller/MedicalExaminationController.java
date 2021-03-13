package pl.walcdroid.medicalExamination.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.repository.DoctorRepository;
import pl.walcdroid.medicalExamination.entity.MedicalExamination;
import pl.walcdroid.medicalExamination.repository.MedicalExaminationRepository;


import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/medical")
public class MedicalExaminationController {

    private DoctorRepository doctorRepository;
    private MedicalExaminationRepository medicalExaminationRepository;

    public MedicalExaminationController(DoctorRepository doctorRepository, MedicalExaminationRepository medicalExaminationRepository) {
        this.doctorRepository = doctorRepository;
        this.medicalExaminationRepository = medicalExaminationRepository;
    }

    @GetMapping("/list")
    public String list (Model model) {

        List<MedicalExamination> medicalExaminations = medicalExaminationRepository.findAll();

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
        this.medicalExaminationRepository.save(medicalExamination);
        return "redirect:/medical/list";
    }

    @GetMapping("/edit/{id}")
    public String edit (@PathVariable Long id, Model model) {
        MedicalExamination medicalExamination = this.medicalExaminationRepository.getById(id);
        model.addAttribute("medicalExamination",medicalExamination);
        return "MedicalExamination/MedicalExamination_EDIT";
    }

    @PostMapping("/edit/{id}")
    public String editPost (MedicalExamination medicalExamination) {
        this.medicalExaminationRepository.save(medicalExamination);
        return "redirect:/medical/list";
    }

    @GetMapping("/delete/{id}")
    public String delete (@PathVariable Long id) {
        this.medicalExaminationRepository.deleteById(id);
        return "redirect:/medical/list";
    }

    @ModelAttribute("doctor")
    public List<Doctor> doctors() {
        return this.doctorRepository.findAll();
    }


}
