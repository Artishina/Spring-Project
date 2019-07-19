package ru.itpark.app.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/signIn")
public class SignInController {

    @GetMapping
    public String getSingInPage(Principal principal) {
        if (principal != null) {
            return "redirect:/users";
        }
        return "signIn";
    }
}
