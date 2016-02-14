package com.gmail.pro.omassol.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gmail.pro.omassol.model.MenuSemaine;
import com.gmail.pro.omassol.service.MenuSemaineService;

@Controller
public class MenuSemaineController {
	
	@Autowired
	private MenuSemaineService menuSemaineService;
	
	@RequestMapping(value="/newMenu", method=RequestMethod.GET)
	public String newMenu(Model model) {
		MenuSemaine menuSemaine = new MenuSemaine("?");
		model.addAttribute("menuSemaine", menuSemaine);
		return "newMenu";
	}
	
	@RequestMapping(value="/newMenu", method=RequestMethod.POST)
	public String newMenu(@ModelAttribute("menuSemaine") MenuSemaine menuSemaine, Model model) {
		MenuSemaine menuSemaineSauvegarde = menuSemaineService.insertMenuSemaine(menuSemaine);
		model.addAttribute("menuSemaine", menuSemaineSauvegarde);
		return "menuCreatedWithSuccess";
	}
	
	@RequestMapping(value="/showMenus", method=RequestMethod.GET)
	public String showMenus(Model model) {
		List<MenuSemaine> menuList = menuSemaineService.findAllMenuSemaineByDateDesc();
		model.addAttribute("menuList",menuList);
		return "showMenus";
	}
	
}
