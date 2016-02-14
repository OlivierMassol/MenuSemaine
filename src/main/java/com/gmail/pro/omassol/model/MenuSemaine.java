package com.gmail.pro.omassol.model;

import java.util.Date;

public class MenuSemaine {
	private Long id;
	private Date debutSemaine;	
	private String lundiMidi;
	private String lundiSoir;
	private String mardiMidi;
	private String mardiSoir;
	private String mercrediMidi;
	private String mercrediSoir;
	private String jeudiMidi;
	private String jeudiSoir;
	private String vendrediMidi;
	private String vendrediSoir;
	private String samediMidi;
	private String samediSoir;
	private String dimancheMidi;
	private String dimancheSoir;
	
	public MenuSemaine(){
	}
	
	public MenuSemaine(String platParDefaut){
		lundiMidi = platParDefaut;
		lundiSoir = platParDefaut;
		mardiMidi = platParDefaut;
		mardiSoir = platParDefaut;
		mercrediMidi = platParDefaut;
		mercrediSoir = platParDefaut;
		jeudiMidi = platParDefaut;
		jeudiSoir = platParDefaut;
		vendrediMidi = platParDefaut;
		vendrediSoir = platParDefaut;
		samediMidi = platParDefaut;
		samediSoir = platParDefaut;
		dimancheMidi = platParDefaut;
		dimancheSoir = platParDefaut;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Date getDebutSemaine() {
		return debutSemaine;
	}
	public void setDebutSemaine(Date debutSemaine) {
		this.debutSemaine = debutSemaine;
	}
	public String getLundiMidi() {
		return lundiMidi;
	}
	public void setLundiMidi(String lundiMidi) {
		this.lundiMidi = lundiMidi;
	}
	public String getLundiSoir() {
		return lundiSoir;
	}
	public void setLundiSoir(String lundiSoir) {
		this.lundiSoir = lundiSoir;
	}
	public String getMardiMidi() {
		return mardiMidi;
	}
	public void setMardiMidi(String mardiMidi) {
		this.mardiMidi = mardiMidi;
	}
	public String getMardiSoir() {
		return mardiSoir;
	}
	public void setMardiSoir(String mardiSoir) {
		this.mardiSoir = mardiSoir;
	}
	public String getMercrediMidi() {
		return mercrediMidi;
	}
	public void setMercrediMidi(String mercrediMidi) {
		this.mercrediMidi = mercrediMidi;
	}
	public String getMercrediSoir() {
		return mercrediSoir;
	}
	public void setMercrediSoir(String mercrediSoir) {
		this.mercrediSoir = mercrediSoir;
	}
	public String getJeudiMidi() {
		return jeudiMidi;
	}
	public void setJeudiMidi(String jeudiMidi) {
		this.jeudiMidi = jeudiMidi;
	}
	public String getJeudiSoir() {
		return jeudiSoir;
	}
	public void setJeudiSoir(String jeudiSoir) {
		this.jeudiSoir = jeudiSoir;
	}
	public String getVendrediMidi() {
		return vendrediMidi;
	}
	public void setVendrediMidi(String vendrediMidi) {
		this.vendrediMidi = vendrediMidi;
	}
	public String getVendrediSoir() {
		return vendrediSoir;
	}
	public void setVendrediSoir(String vendrediSoir) {
		this.vendrediSoir = vendrediSoir;
	}
	public String getSamediMidi() {
		return samediMidi;
	}
	public void setSamediMidi(String samediMidi) {
		this.samediMidi = samediMidi;
	}
	public String getSamediSoir() {
		return samediSoir;
	}
	public void setSamediSoir(String samediSoir) {
		this.samediSoir = samediSoir;
	}
	public String getDimancheMidi() {
		return dimancheMidi;
	}
	public void setDimancheMidi(String dimancheMidi) {
		this.dimancheMidi = dimancheMidi;
	}
	public String getDimancheSoir() {
		return dimancheSoir;
	}
	public void setDimancheSoir(String dimancheSoir) {
		this.dimancheSoir = dimancheSoir;
	}
	@Override
	public String toString() {
		return "MenuSemaine [id=" + id + ", debutSemaine=" + debutSemaine
				+ ", lundiMidi=" + lundiMidi + ", lundiSoir=" + lundiSoir
				+ ", mardiMidi=" + mardiMidi + ", mardiSoir=" + mardiSoir
				+ ", mercrediMidi=" + mercrediMidi + ", mercrediSoir="
				+ mercrediSoir + ", jeudiMidi=" + jeudiMidi + ", jeudiSoir="
				+ jeudiSoir + ", vendrediMidi=" + vendrediMidi
				+ ", vendrediSoir=" + vendrediSoir + ", samediMidi="
				+ samediMidi + ", samediSoir=" + samediSoir + ", dimancheMidi="
				+ dimancheMidi + ", dimancheSoir=" + dimancheSoir + "]";
	}
	
}
