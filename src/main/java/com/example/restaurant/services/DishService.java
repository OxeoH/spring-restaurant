package com.example.restaurant.services;

import com.example.restaurant.models.Dish;
import com.example.restaurant.repositories.DishRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j //логирование от lombok
public class DishService {
//    {
//        dishesList.add(new Dish(String.valueOf(++ID),"ЭКЛЕРЫ МЯСНЫЕ", "Свинина, говядина, курица", 200, 31));
//        dishesList.add(new Dish(String.valueOf(++ID),"ТАРТАР ИЗ ГОВЯДИНЫ С ЭСПУМОЙ ИЗ ПАРМЕЗАНА", "Тартар из говядины с муссом из пармезана. вырезка говяжья, трюфельное масло, петрушка, ворчестер, бородинские чипсы, мусс из пармезана", 220, 36));
//        dishesList.add(new Dish(String.valueOf(++ID),"ШУ С ГОВЯДИНОЙ", "Булочка Шу, вырезка говяжья, крем-чиз, соус ким-чи, чатни из перца, эспума пармезан, бородинские чипсы", 178, 37));
//        dishesList.add(new Dish(String.valueOf(++ID),"АНТИПАСТИ", "Пармезан, сыр с голубой плесенью, сыр бри, сыр козий, бастурма говяжья, пармская ветчина, оливки, маслины виноград, мед, кешью", 700, 79));
//        dishesList.add(new Dish(String.valueOf(++ID),"ЭКЛЕРЫ РЫБНЫЕ", "Тунец, лосось, креветка", 200, 36));
//    }
    private final DishRepository dishRepository;
    //private List<Order> ordersList = new ArrayList<>()

    public List<Dish> listDishes() {
        List<Dish> dishesList = dishRepository.findAll();
        return dishesList;
    }

    public void saveDish(Dish dish){
        log.info("Saving Dish {}", dish);
        dishRepository.save(dish);
    }


    public void removeDish(Long id) {
        log.info("Deleting dish {}", id);
        dishRepository.deleteById(id);
    }
}
