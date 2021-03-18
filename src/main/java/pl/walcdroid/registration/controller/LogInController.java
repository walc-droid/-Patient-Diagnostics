package pl.walcdroid.registration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.walcdroid.doctor.dto.DoctorDTO;
import pl.walcdroid.registration.dto.LoginDTO;
import pl.walcdroid.registration.service.LoginService;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/login")
public class LogInController {


    @Autowired
    private LoginService loginService;

    @GetMapping
    public String loginPage(@SessionAttribute(value = "logInUser", required = false) DoctorDTO loggedInUser) {
        if (loggedInUser != null) {
            return "redirect:/";
        }
        return "Registration/Login";
    }

    @PostMapping
    public String processLogin(@SessionAttribute(value = "logInUser", required = false) DoctorDTO loggedUser,
                               @ModelAttribute("loginForm") LoginDTO form,
                               HttpSession session) {
        if (loggedUser != null) {
            return "redirect:/";
        }

        boolean validCredentials = loginService.validate(form.getLogin(), form.getPassword());
        if (!validCredentials) {
            return "Registration/Login";
        }
        DoctorDTO doctorDTO = loginService.login(form.getLogin());
        session.setAttribute("logInUser", doctorDTO);
        return "redirect:/";
    }
}



