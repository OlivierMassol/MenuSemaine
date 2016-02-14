package com.gmail.pro.omassol.service;

import java.util.List;

import com.gmail.pro.omassol.model.MenuSemaine;

public interface MenuSemaineService {
	MenuSemaine insertMenuSemaine(MenuSemaine menuSemaine);
	MenuSemaine findLatestMenuSemaine();
	List<MenuSemaine> findAllMenuSemaineByDateDesc();
}
