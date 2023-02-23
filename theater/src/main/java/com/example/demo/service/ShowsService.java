package com.example.demo.service;

import java.time.LocalDate;
import java.util.List;

import com.example.demo.model.Shows;

public interface ShowsService {
	public List<Shows> findAll();
	public Shows findById(Long id);
	public List<Shows> findByDate(LocalDate dt);
}
