package com.example.sakila.vo;

import lombok.Data;

@Data
public class Film {
	private Integer filmId; // PK
	private String title; // 초록키
	private String description; // NULL
	private Integer releaseYear; // NULL
	private Integer languageId; // FK
	private Integer originalLanguageId; // FK 기본값 NULL
	private Integer rentalDuration;
	private Double rentalRate;
	private Integer length; // 기본값 NULL
	private Double replacementCost;
	private String rating;
	private String specialFeatures; // 기본값 NULL
	private String lastUpdate;
}