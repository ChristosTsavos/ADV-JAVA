package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Shows;

public interface ShowRepository extends JpaRepository<Shows, Long> {

}
