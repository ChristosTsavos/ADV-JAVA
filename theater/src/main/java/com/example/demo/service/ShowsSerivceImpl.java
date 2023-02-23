package com.example.demo.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ShowsRepository;
import com.example.demo.model.Shows;

@Service
public class ShowsSerivceImpl implements ShowsService {
	
	@Autowired
	private ShowsRepository showsRepository;

	@Override
	public List<Shows> findAll() {
		return showsRepository.findAll();
	}

	@Override
	public Shows findById(Long id) {
		return showsRepository.findById(id).get();
	}

	@Override
	public List<Shows> findByDate(LocalDate dt) {
		// TODO Auto-generated method stub
		return showsRepository.findByDate(dt);
	}

}
