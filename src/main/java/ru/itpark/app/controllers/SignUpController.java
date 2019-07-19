package ru.itpark.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itpark.app.forms.SignUpForm;
import ru.itpark.app.services.SignUpService;

import java.security.Principal;


@Controller
@RequestMapping(value = "/signUp")
public class SignUpController {

    @Autowired
    private SignUpService service;

    @GetMapping
    public String getSignUpPage(Principal principal) {
        if (principal != null) {
            return "redirect:/users";
        }
        return "signUp";
    }

    @PostMapping
    public String signUp(SignUpForm form) {
        service.signUp(form);
        return "redirect:/users";
    }
}
