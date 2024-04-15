package com.example.restaurant.models;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "dishes")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dish {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "weight")
    private int weight;
    @Column(name = "price")
    private int price;
    @Column(name = "imageUrl", columnDefinition = "text")
    private String imageUrl;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private DishType dishType;
}
