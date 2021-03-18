package pl.walcdroid.registration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.walcdroid.registration.dto.RegistrationDTO;
import pl.walcdroid.registration.service.RegistrationService;

import javax.validation.Valid;

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
    public String postRegistrationPage(@ModelAttribute("register") @Valid RegistrationDTO form, BindingResult violations, Model model) {


        if (violations.hasErrors()) {
            return "Registration/Registration_FORM";
        }

        if (!form.getConfirmedPassword().equals(form.getPassword())) {
            model.addAttribute("error",true);
            return "Registration/Registration_FORM";
        }


        this.registrationService.register(form);
        return "redirect:/";
    }
}
