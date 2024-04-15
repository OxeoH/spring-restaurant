package com.example.restaurant.repositories;

import com.example.restaurant.models.DishType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DishTypeRepository extends JpaRepository<DishType, Long> {
}
