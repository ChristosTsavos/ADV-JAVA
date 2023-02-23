package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Hall;

public interface HallRepository extends JpaRepository<Hall, Long> {

}
