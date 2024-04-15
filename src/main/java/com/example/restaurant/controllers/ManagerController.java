package com.example.restaurant.controllers;

import com.example.restaurant.models.Dish;
import com.example.restaurant.models.DishType;
import com.example.restaurant.models.Manager;
import com.example.restaurant.services.DishService;
import com.example.restaurant.services.DishTypeService;
import com.example.restaurant.services.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class ManagerController {
    private final ManagerService managerService;

    public ManagerController(ManagerService managerService){
        this.managerService = managerService;
    }

    @GetMapping("/manager")
    public String redirectToPanel() {
        return "redirect:/manager/edit";
    }
    @PostMapping("/manager/add")
    public String createManager(Manager manager){
        manager.setRole("ADMIN");
        managerService.saveManager(manager);
        return "redirect:/manager/edit";
    }

    @PostMapping("/manager/remove/{id}")
    public String createManager(@PathVariable Long id){
        managerService.removeManager(id);
        return "redirect:/manager/edit";
    }
}
