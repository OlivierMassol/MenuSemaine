package com.gmail.pro.omassol.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gmail.pro.omassol.mappers.MenuSemaineMapper;
import com.gmail.pro.omassol.model.MenuSemaine;

@Service("menuSemaineService")
public class MenuSemaineServiceImpl implements MenuSemaineService {

	@Autowired
	private MenuSemaineMapper menuSemaineMapper;

	@Transactional
	public MenuSemaine insertMenuSemaine(MenuSemaine menuSemaine) {
		menuSemaineMapper.insertMenuSemaine(menuSemaine);
		return menuSemaine;
	}

	public MenuSemaine findLatestMenuSemaine() {
		MenuSemaine latestMenuSemaine = menuSemaineMapper.findLatestMenuSemaine();
		if(latestMenuSemaine == null){
			latestMenuSemaine = new MenuSemaine("?");
		}
		return latestMenuSemaine;
	}
	
	public List<MenuSemaine> findAllMenuSemaineByDateDesc() {
		List<MenuSemaine> allMenuSemaineByDateDesc = menuSemaineMapper.findAllMenuSemaineByDateDesc();
		if(allMenuSemaineByDateDesc == null){
			allMenuSemaineByDateDesc = new ArrayList<MenuSemaine>();
		}
		return allMenuSemaineByDateDesc;
	}

}
