package com.example.sakila.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.sakila.service.ActorService;
import com.example.sakila.vo.Actor;
import com.example.sakila.vo.ActorForm;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ActorController {
	@Autowired ActorService actorService;
	
	
	@GetMapping("/on/actorList")
	public String actorList(Model model,
	                        @RequestParam(defaultValue = "1") int currentPage,
	                        @RequestParam(defaultValue = "10") int rowPerPage,
	                        @RequestParam(required = false) String searchWord) {
	    log.debug("searchWord: " + searchWord);

	    // 전체 배우 수를 구해 총 페이지 수 계산
	    int totalActors = actorService.getTotalCount(searchWord);
	    int lastPage = (int) Math.ceil((double) totalActors / rowPerPage);
	    
	    // 해당 페이지의 배우 목록 가져오기
	    List<Actor> actorList = actorService.getActorList(currentPage, rowPerPage, searchWord);
	    
	    // JSP에서 사용하기 위해 모델에 추가
	    model.addAttribute("actorList", actorList);
	    model.addAttribute("currentPage", currentPage);
	    model.addAttribute("lastPage", lastPage);
	    model.addAttribute("searchWord", searchWord);

	    return "on/actorList";
	}
	
	@PostMapping("/on/addActor")
	public String addActor(HttpSession session, ActorForm actorForm) { // input type="file"
		/*
		log.debug(actorForm.getFirstName());
		log.debug(actorForm.getLastName());
		log.debug("actorFile : "+actorForm.getActorFile());
		if(actorForm.getActorFile() != null) {
			log.debug("actorFile size : "+actorForm.getActorFile().size());
		}
		*/
		String path = session.getServletContext().getRealPath("/upload/");
		log.debug(path);
		
		actorService.addActor(actorForm, path);
		
		return "redirect:/on/actorList";
	}	
	
	@GetMapping("/on/addActor")
	public String addActor() {
		return "on/addActor";
	}
	

}