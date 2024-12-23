package com.example.sakila.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.sakila.service.FilmActorService;
import com.example.sakila.vo.FilmActor;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FilmActorController {
	
	@Autowired FilmActorService filmActorService;
	
	// filmOne에서 삭제요청
		@GetMapping("/on/removeFilmActorByFilm")
		public String removeFilmActorByFilm(FilmActor filmActor) {
			log.debug("filmId: "+filmActor.getFilmId());
			log.debug("actorId: "+filmActor.getActorId());
			int row = filmActorService.removeFilmActor(filmActor);
			return "redirect:/on/filmOne?filmId="+filmActor.getFilmId();
		}
		
		// actorOne에서 삭제요청
		@GetMapping("/on/removeFilmActorByActor")
		public String removeFilmActorByActor(FilmActor filmActor) {
			log.debug("filmId: "+filmActor.getFilmId());
			log.debug("actorId: "+filmActor.getActorId());
			int row = filmActorService.removeFilmActor(filmActor);
			return "redirect:/on/actorOne?actorId="+filmActor.getActorId();
		}
	
	@GetMapping("/on/removeFilmActor")
	public String removeFilmActor(FilmActor filmActor) {
		log.debug("filmId: "+filmActor.getFilmId());
		log.debug("actorId: "+filmActor.getActorId());
		
		int row = filmActorService.removeFilmActor(filmActor);
		
		return "redirect:/on/actorOne?actorId="+filmActor.getActorId();
	}
	
	@PostMapping("/on/addFilmByActor")
	public String addFilmByActor(FilmActor filmActor) {
		
		log.debug("filmId: "+filmActor.getFilmId());
		log.debug("actorId: "+filmActor.getActorId());
		
		int row = filmActorService.addFilmActor(filmActor);
		
		return "redirect:/on/actorOne?actorId="+filmActor.getActorId();
	}
}