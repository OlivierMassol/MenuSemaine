package com.gmail.pro.omassol.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.gmail.pro.omassol.model.MenuSemaine;

public interface MenuSemaineMapper {
	@Insert("INSERT INTO \"MenuSemaine\"("
			+ "\"debutSemaine\","
			+ "\"lundiMidi\", "
			+ "\"lundiSoir\","
			+ " \"mardiMidi\","
			+ "\"mardiSoir\","
			+" \"mercrediMidi\","
			+ "\"mercrediSoir\","
			+" \"jeudiMidi\","
			+ "\"jeudiSoir\","
			+" \"vendrediMidi\","
			+ "\"vendrediSoir\","
			+" \"samediMidi\","
			+ "\"samediSoir\","
			+" \"dimancheMidi\","
			+ "\"dimancheSoir\""
			+ ") VALUES ("
			+ "#{debutSemaine},"
			+ "#{lundiMidi}, "
			+ "#{lundiSoir}, "
			+ "#{mardiMidi}, "
			+ "#{mardiSoir}, "
			+ "#{mercrediMidi}, "
			+ "#{mercrediSoir}, "
			+ "#{jeudiMidi}, "
			+ "#{jeudiSoir}, "
			+ "#{vendrediMidi}, "
			+ "#{vendrediSoir}, "
			+ "#{samediMidi}, "
			+ "#{samediSoir}, "
			+ "#{dimancheMidi}, "
			+ "#{dimancheSoir}"
			+ ")")
	public void insertMenuSemaine(MenuSemaine menuSemaine);
	
	@Select("SELECT "
			+ "\"debutSemaine\","
			+ "\"lundiMidi\", "
			+ "\"lundiSoir\","
			+ " \"mardiMidi\","
			+ "\"mardiSoir\","
			+" \"mercrediMidi\","
			+ "\"mercrediSoir\","
			+" \"jeudiMidi\","
			+ "\"jeudiSoir\","
			+" \"vendrediMidi\","
			+ "\"vendrediSoir\","
			+" \"samediMidi\","
			+ "\"samediSoir\","
			+" \"dimancheMidi\","
			+ "\"dimancheSoir\" "
			+ "FROM \"MenuSemaine\" "
			+ "ORDER BY \"debutSemaine\" DESC "
			+ "LIMIT 1")
	public MenuSemaine findLatestMenuSemaine();
		
	@Select("SELECT "
			+ "\"debutSemaine\","
			+ "\"lundiMidi\", "
			+ "\"lundiSoir\","
			+ " \"mardiMidi\","
			+ "\"mardiSoir\","
			+" \"mercrediMidi\","
			+ "\"mercrediSoir\","
			+" \"jeudiMidi\","
			+ "\"jeudiSoir\","
			+" \"vendrediMidi\","
			+ "\"vendrediSoir\","
			+" \"samediMidi\","
			+ "\"samediSoir\","
			+" \"dimancheMidi\","
			+ "\"dimancheSoir\" "
			+ "FROM \"MenuSemaine\" "
			+ "WHERE \"id\" = #{id}")
	public MenuSemaine getMenuSemaineById(Long id);

	@Select("SELECT "
			+ "\"debutSemaine\","
			+ "\"lundiMidi\", "
			+ "\"lundiSoir\","
			+ " \"mardiMidi\","
			+ "\"mardiSoir\","
			+" \"mercrediMidi\","
			+ "\"mercrediSoir\","
			+" \"jeudiMidi\","
			+ "\"jeudiSoir\","
			+" \"vendrediMidi\","
			+ "\"vendrediSoir\","
			+" \"samediMidi\","
			+ "\"samediSoir\","
			+" \"dimancheMidi\","
			+ "\"dimancheSoir\" "
			+ "FROM \"MenuSemaine\" "
			+ "ORDER BY \"debutSemaine\" DESC ")
	public List<MenuSemaine> findAllMenuSemaineByDateDesc();
}
