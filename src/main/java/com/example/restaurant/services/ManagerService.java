package com.example.restaurant.services;

import com.example.restaurant.models.Manager;
import com.example.restaurant.repositories.ManagerRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j //логирование от lombok
public class ManagerService {
    private final ManagerRepository managerRepository;
    private final PasswordEncoder passwordEncoder;

    public List<Manager> listManagers() {
        List<Manager> managersList = managerRepository.findAll();
        return managersList;
    }

    public void saveManager(Manager manager) {
        log.info("Saving Manager {}", manager);
        manager.setPassword(passwordEncoder.encode(manager.getPassword()));
        managerRepository.save(manager);
    }

    public void removeManager(Long id) {
        log.info("Removing Manager {}", id);
        managerRepository.deleteById(id);
    }
}
