package com.example.demo;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.HashSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.demo.dao.HallRepository;
import com.example.demo.dao.PlayRepository;
import com.example.demo.dao.RoleRepository;
import com.example.demo.dao.ShowRepository;
import com.example.demo.model.Hall;
import com.example.demo.model.Play;
import com.example.demo.model.Shows;

@SpringBootApplication
public class TheaterApplication implements ApplicationRunner {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private PlayRepository playRepository;

	@Autowired
	private HallRepository hallRepository;

	@Autowired
	private ShowRepository showRepository;

	public static void main(String[] args) {
		SpringApplication.run(TheaterApplication.class, args);
	}

	@Override
	public void run(ApplicationArguments args) throws Exception {

		registerData();

	}

	private void registerData() {
		Play play1 = new Play("play1_title", "play1_writer", "play1_director", "play1_actors");
		Play play2 = new Play("play2_title", "play2_writer", "play2_director", "play2_actors");
		Play play3 = new Play("play3_title", "play3_writer", "play3_director", "play3_actors");
		Play play4 = new Play("play4_title", "play4_writer", "play4_director", "play4_actors");
		Play play5 = new Play("play5_title", "play5_writer", "play5_director", "play5_actors");
		Play play6 = new Play("play6_title", "play6_writer", "play6_director", "play6_actors");
		Play play7 = new Play("play7_title", "play7_writer", "play7_director", "play7_actors");
		Play play8 = new Play("play8_title", "play8_writer", "play8_director", "play8_actors");

		playRepository.saveAll(Arrays.asList(play1, play2, play3, play4, play5, play6, play7, play8));

		Hall hall_1 = new Hall("hall1", 120);
		Hall hall_2 = new Hall("hall2", 130);

		hallRepository.saveAll(Arrays.asList(hall_1, hall_2));

		HashSet<Hall> show1_halls = new HashSet<>();
		HashSet<Hall> show2_halls = new HashSet<>();
		HashSet<Hall> show3_halls = new HashSet<>();

		show1_halls.addAll(Arrays.asList(hall_1, hall_2));
		show2_halls.add(hall_1);
		show3_halls.add(hall_2);

		Shows show1 = new Shows(LocalDate.of(2001, 10, 21), play1, show1_halls);
		Shows show2 = new Shows(LocalDate.of(2002, 9, 20), play2, show2_halls);
		Shows show3 = new Shows(LocalDate.of(2003, 4, 20), play3, show3_halls);

		showRepository.saveAll(Arrays.asList(show1, show2, show3));

	}
}
