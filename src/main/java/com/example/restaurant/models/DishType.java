package com.example.restaurant.models;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "dishTypes")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DishType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @OneToMany(mappedBy="dishType", cascade=CascadeType.ALL, orphanRemoval=true)
    private List<Dish> dishes;
}
