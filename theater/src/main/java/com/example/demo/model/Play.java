package com.example.demo.model;

import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

/**
 *
 * @author raitis
 */
@Entity
@Data
@AllArgsConstructor
@RequiredArgsConstructor
public class Play {
	public Play(String title, String writer, String director, String actors) {
		super();
		this.title = title;
		this.writer = writer;
		this.director = director;
		this.actors = actors;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String title;
	private String writer;
	private String director;
	private String actors;

	@OneToMany(targetEntity = Shows.class, mappedBy = "play")
	private Set<Shows> shows;	

}
