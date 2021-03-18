package pl.walcdroid.users.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.walcdroid.doctor.entity.Doctor;
import pl.walcdroid.doctor.service.DoctorService;


import java.util.List;

@Controller
@RequestMapping("/user")
public class UserList {

    private DoctorService doctorService;

    public UserList(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    @GetMapping("/list")
    public String list (Model model) {
        List<Doctor> doctorList = this.doctorService.findAll();
        model.addAttribute("userList", doctorList);
        return "User/User_LIST";
    }



}
