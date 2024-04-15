package com.example.restaurant.controllers;

import com.example.restaurant.models.Order;
import com.example.restaurant.services.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OrderController {
    private final OrderService orderService;

    public OrderController(OrderService orderService){
        this.orderService = orderService;
    }
    @GetMapping("/order")
    public String orders(Model model){
        model.addAttribute("order", orderService.listOrders());
        return "order";
    }

    @PostMapping("/order/create")
    public String createOrder(Order order){
        System.out.println(order);
        orderService.saveOrder(order);
        return "redirect:/order";
    }
    @PostMapping("/manager/order/create")
    public String createManagersOrder(Order order){
        System.out.println(order);
        orderService.saveOrder(order);
        return "redirect:/manager";
    }

    @PostMapping("/manager/order/remove/{id}")
    public String removeOrder(@PathVariable Long id){
        orderService.removeOrder(id);
        return "redirect:/manager";
    }
}
