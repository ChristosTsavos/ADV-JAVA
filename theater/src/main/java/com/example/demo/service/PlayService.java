package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Play;

public interface PlayService {
	public List<Play> findAll();
	public Play findById(Long id);
}
