package com.example.restaurant.services;

import com.example.restaurant.models.Order;
import com.example.restaurant.repositories.OrderRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j //логирование от lombok
public class OrderService {
    private final OrderRepository orderRepository;
    //private List<Order> ordersList = new ArrayList<>();


    public List<Order> listOrders() {
        List<Order> ordersList = orderRepository.findAll();
        return ordersList;
    }

    public void saveOrder(Order order) {
        log.info("Saving Order {}", order);
        orderRepository.save(order);
    }

    public void removeOrder(Long id) {
        log.info("Deleting Order {}", id);
        orderRepository.deleteById(id);
    }
}
