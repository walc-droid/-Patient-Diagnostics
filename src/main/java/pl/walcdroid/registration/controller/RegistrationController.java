package pl.walcdroid.registration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.walcdroid.registration.dto.RegistrationDTO;
import pl.walcdroid.registration.service.RegistrationService;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;

    @GetMapping
    public String getRegistrationPage(Model model) {
        model.addAttribute("register", new RegistrationDTO());
        return "Registration/Registration_FORM";
    }

    @PostMapping
    public String postRegistrationPage(RegistrationDTO form) {
        this.registrationService.register(form);
        return "redirect:/";
    }
}
