package com.example.restaurant.repositories;

import com.example.restaurant.models.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
