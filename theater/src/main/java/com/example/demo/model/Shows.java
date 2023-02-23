package com.example.demo.model;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Shows {
	public Shows(@NonNull LocalDate date, Play play, Set<Hall> halls) {
		super();
		this.date = date;
		this.play = play;
		this.halls = halls;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NonNull
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private LocalDate date;
	
	@ManyToOne
	@JoinColumn(name="play_id", nullable=false)
	private Play play;
	
	@ManyToMany
	@JoinTable(name = "shows_hall", joinColumns = @JoinColumn(name = "shows_id"), inverseJoinColumns = @JoinColumn(name = "hall_id"))
	private Set<Hall> halls;
	

}
