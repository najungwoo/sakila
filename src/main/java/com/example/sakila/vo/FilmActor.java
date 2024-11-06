package com.example.sakila.vo;

import lombok.Data;

@Data
public class FilmActor {
	private int actorId; // PK
	private int filmID; // PK, FK
	private String lastUpdate;
}