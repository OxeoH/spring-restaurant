package com.example.restaurant.repositories;

import com.example.restaurant.models.Dish;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface DishRepository extends JpaRepository<Dish, Long> {
}
