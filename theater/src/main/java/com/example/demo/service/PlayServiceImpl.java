package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.PlayRepository;
import com.example.demo.model.Play;

@Service
public class PlayServiceImpl implements PlayService {

	@Autowired
	private PlayRepository playRepository;
	
	public List<Play> findAll() {
		
		return playRepository.findAll();
	}

	public Play findById(Long id) {
		return playRepository.findById(id).get();
	}

}
