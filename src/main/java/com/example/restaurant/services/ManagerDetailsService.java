package com.example.restaurant.services;

import com.example.restaurant.configarations.ManagerDetails;
import com.example.restaurant.models.Manager;
import com.example.restaurant.repositories.ManagerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ManagerDetailsService implements UserDetailsService {
    @Autowired
    private ManagerRepository repository;
    @Override
    public ManagerDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Manager> manager = repository.findByUsername(username);
        return manager.map(ManagerDetails::new)
                .orElseThrow(() -> new UsernameNotFoundException(username + " not found"));
    }
}