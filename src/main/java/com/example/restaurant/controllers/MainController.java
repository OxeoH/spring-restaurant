package com.example.restaurant.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String mainPage(){
        return "main";
    }
    @GetMapping("/contacts")
    public String contactsPage(){

        return "contacts";
    }
}
