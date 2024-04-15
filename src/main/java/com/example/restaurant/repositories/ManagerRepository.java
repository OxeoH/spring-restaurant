package com.example.restaurant.repositories;

import com.example.restaurant.models.Dish;
import com.example.restaurant.models.Manager;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ManagerRepository extends JpaRepository<Manager, Long> {
    Optional<Manager> findByUsername(String username);
}
