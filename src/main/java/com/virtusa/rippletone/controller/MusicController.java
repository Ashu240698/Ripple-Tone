package com.virtusa.rippletone.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.virtusa.rippletone.model.MusicModel;
import com.virtusa.rippletone.exceptions.MusicNotFoundException;
import com.virtusa.rippletone.service.MusicService;

@Controller
public class MusicController {
	@Autowired
	private MusicService service;
	public static Logger log = Logger.getLogger(MusicController.class);
	
	
	public MusicController() {
		log.debug("Music Controller Constructor Invoked");
	}
	
	//It will Display The index page
//	@GetMapping("/")
//	public String showIndexPage() {
//		log.info("Show index page method called.");
//		return "index";
//	}
	
	//It will display the main page
	@GetMapping("/mainPage")
	public String showMainPage() {
		log.info("Show Main page method called.");
		return "MainPage";
	}
	
	//It will display the add music form
	@GetMapping(value = "/admin/musicPage")
	public String displayAddMusicPage(@ModelAttribute("musicObj") MusicModel music, Model model) {
		log.info("Display add page method called.");
		model.addAttribute("id", service.generateId());
		return "AddMusic";
	}
	
	//It will display the add music form
	@GetMapping("/admin/music/{id}/addLyricsPage")
	public String displayAddLyricsPage(@ModelAttribute("musicObj") MusicModel music,@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Display add lyrics page method called.");
		model.addAttribute("music", service.showMusic(id));
		return "AddLyrics";
	}
	
	//It will display the lyrics for admin and user
	@GetMapping(value="/admin/music/{id}/showLyrics")
	public String showLyricsMethodAdmin(@ModelAttribute("musicObj") MusicModel music,@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Show lyrics method for admin called.");
		model.addAttribute("music", service.showMusic(id));
		return "ShowLyrics";
	}
	
	//It will display the lyrics for user
	@GetMapping("/music/{id}/showLyrics")
	public String showLyricsMethodUser(@ModelAttribute("musicObj") MusicModel music,@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Show lyrics method for user called.");
		model.addAttribute("music", service.showMusic(id));
		return "ShowLyricsForUser";
	}
	
	//It will display the edit lyrics form
	@GetMapping("/admin/music/{id}/EditLyricsPage")
	public String displayEditLyricsPage(@ModelAttribute("musicObj") MusicModel music,@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("display edit lyrics page method called.");
		model.addAttribute("music", service.showMusic(id));
		return "EditLyrics";
	}
	
	//This method will edit the lyrics
	@PostMapping(value = "/admin/music/{id}/lyrics/edit")
	public String EditLyricsMethod(@Valid @ModelAttribute("musicObj") MusicModel music,  Errors error, @PathVariable String id) throws MusicNotFoundException {
		if (error.hasErrors()) {
			log.error("Null fields detected while editing music.");
			return "EditMusicPage";
		}
		log.info("Edit Lyrics method called.");
		service.updateMusic(music);
		return "redirect:/admin/music/{id}";
	}
	
	@GetMapping("/admin/music/{id}/deleteLyrics")
	public String deleteLyricsMethod(@ModelAttribute("musicObj") MusicModel music,@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Show add lyrics page method called.");
		MusicModel music1 = service.showMusic(id);
		music1.setLyrics(null);
		service.updateMusic(music1);
		model.addAttribute("music", music1);
		return "redirect:/admin/music/{id}";
	}
	
	//This method will add the song
	@PostMapping(value =  "/admin/add")
	public String addMusicMethod(@Valid @ModelAttribute("musicObj") MusicModel music, Errors error, Model model) {
		if (error.hasErrors()) {
			log.error("Null fields detected while adding music.");
			return "AddMusic";
		}
		log.info("Add music method called.");
		service.addMusic(music);
		model.addAttribute("music", music);
		return "redirect:/admin/music";
	}
	
	//This method will show the edit music form
	@GetMapping("admin/music/{id}/editPage")
	public String ShowEditPageMethod(@ModelAttribute("musicObj") MusicModel music, @PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Display edit page method called.");
		MusicModel music1 = service.showMusic(id);
		model.addAttribute("music", music1);
		model.addAttribute("id", id);
		return "EditMusicPage";
	}
	
	//This method will edit the song
	@PostMapping(value = "/admin/music/{id}/edit")
	public String EditMusicMethod(@Valid @ModelAttribute("musicObj") MusicModel music,  Errors error, @PathVariable String id) throws MusicNotFoundException {
		if (error.hasErrors()) {
			log.error("Null fields detected while editing music.");
			return "EditMusicPage";
		}
		log.info("Edit music method called.");
		
		service.updateMusic(music);
		return "redirect:/admin/music";
	}
	
	//This method will delete the song
	@GetMapping(value = "/admin/music/delete/{id}")
	public String deleteMusicMethod(@PathVariable String id, HttpSession session) throws MusicNotFoundException {
		log.info("Delete music method called.");
		if(session.getAttribute("admin")==null){
			return "redirect:/welcome";
		}
		service.deleteMusic(id);
		return "redirect:/admin/music";
	}
	
	//This method will display the particular song  based on id for admin and user
	@GetMapping(value = "/admin/music/{id}")
	public String playMusicMethodAdmin(@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Play music method called.");
		MusicModel music = service.showMusic(id);
		model.addAttribute("music", music);
		model.addAttribute("id", id);
		model.addAttribute("msg", "Playing the song....");
		return "PlaySong";
	}
	
	//This method will display all songs for admin and user
	@GetMapping(value="/admin/music")
	public String getAllMusicMethodAdmin(@ModelAttribute("musicObj") MusicModel music, Model model) {
		log.info("Get all music method called.");
		List<MusicModel> musicList = service.getAllMusic();
		model.addAttribute("msg", "No songs available");
		model.addAttribute("musicList", musicList);
		return "HomePage";
	}
	
	@GetMapping("/music")
	public String getAllMusicMethodUser(@ModelAttribute("musicObj") MusicModel music, Model model) {
		log.info("Get all music method called.");
		List<MusicModel> musicList = service.getAllMusic();
			model.addAttribute("msg", "No songs to display");
			model.addAttribute("musicList", musicList);
		return "UserHomePage";
	}
	
	@GetMapping(value = "/music/{id}")
	public String playMusicMethodUser(@PathVariable String id, Model model) throws MusicNotFoundException {
		log.info("Play music method called.");
		MusicModel music = service.showMusic(id);
		model.addAttribute("music", music);
		model.addAttribute("id", id);
		model.addAttribute("msg", "Playing the song....");
		return "UserPlaySong";
	}
}
