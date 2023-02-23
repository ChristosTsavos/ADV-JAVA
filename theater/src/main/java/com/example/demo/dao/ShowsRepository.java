package com.example.demo.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Shows;

public interface ShowsRepository extends JpaRepository<Shows, Long> {
	List<Shows> findByDate(LocalDate dt);
}
