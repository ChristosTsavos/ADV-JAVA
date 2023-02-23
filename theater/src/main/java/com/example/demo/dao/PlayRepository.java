package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Play;

public interface PlayRepository extends JpaRepository<Play, Long>{
    
}
