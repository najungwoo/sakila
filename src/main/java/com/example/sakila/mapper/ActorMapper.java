package com.example.sakila.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.sakila.vo.Actor;

@Mapper
public interface ActorMapper {
	//on/filmOne : searchName 검색결과
	List<Actor> selectActorListByActor(String searchName);
	
	int deleteActor(int actorId);
	
	int updateActor(Actor actor);
	
	// /on/filmOne
	List<Actor> selectActorListByFilm(int filmId); 
	
	// /on/actorOne
	Actor selectActorOne(int actorId);
	
	// /on/actorOne
	List<Actor> selectActorList(Map<String, Object> map);
	
	int insertActor(Actor actor);

    int selectActorCount(String sarchWord); // 전체 배우 수 조회 메서드

}