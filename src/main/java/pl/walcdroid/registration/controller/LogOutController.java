package pl.walcdroid.registration.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/logout")
public class LogOutController {

    @GetMapping
    public String logout(HttpSession session) {
        if(session != null) {
            session.invalidate();
        }
        return "redirect:/";
    }

}
