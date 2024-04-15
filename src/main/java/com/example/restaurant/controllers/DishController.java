package com.example.restaurant.controllers;

import com.example.restaurant.models.Dish;
import com.example.restaurant.models.DishType;
import com.example.restaurant.repositories.OrderRepository;
import com.example.restaurant.services.DishService;

import com.example.restaurant.services.DishTypeService;
import com.example.restaurant.services.ManagerService;
import com.example.restaurant.services.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DishController {
    private final DishService dishService;
    private final DishTypeService dishTypeService;
    private final OrderService orderService;
    private final ManagerService managerService;

    public DishController(DishService dishService, DishTypeService dishTypeService, OrderService orderService, ManagerService managerService){
        this.dishService = dishService;
        this.dishTypeService = dishTypeService;
        this.orderService = orderService;
        this.managerService = managerService;
    }
    @GetMapping("/menu")
    public String menu(Model model){
        model.addAttribute("dishes", dishService.listDishes());
        model.addAttribute("dishTypes", dishTypeService.listDishTypes());
        return "menu";
    }

    @GetMapping("manager/edit")
    public String editMenu(Model model) {
        model.addAttribute("managers", managerService.listManagers());
        model.addAttribute("orders", orderService.listOrders());
        model.addAttribute("dishes", dishService.listDishes());
        model.addAttribute("dishTypes", dishTypeService.listDishTypes());
        return "editMenu";
    }
    @PostMapping("manager/dish/add")
    public String createDish(Dish dish){
        dishService.saveDish(dish);
        return "redirect:/manager";
    }

    @PostMapping("manager/dish/remove/{id}")
    public String removeDish(@PathVariable Long id){
        dishService.removeDish(id);
        return "redirect:/manager";
    }

    @PostMapping("manager/dishType/add")
    public String createDishType(DishType dishType){
        dishTypeService.saveDishType(dishType);
        return "redirect:/manager";
    }

    @Transactional
    @PostMapping("manager/dishType/remove/{id}")
    public String removeDishType(@PathVariable Long id){
        dishTypeService.deleteDishType(id);
        return "redirect:/manager";
    }
}
