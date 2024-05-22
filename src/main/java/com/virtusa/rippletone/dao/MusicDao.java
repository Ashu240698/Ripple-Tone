package com.virtusa.rippletone.dao;

import java.util.List;

import com.virtusa.rippletone.model.MusicModel;
import com.virtusa.rippletone.exceptions.MusicNotFoundException;

public interface MusicDao {
	public void addMusic(MusicModel music);

	public List<MusicModel> getAllMusic();

	public MusicModel showMusic(String id) throws MusicNotFoundException;

	public void deleteMusic(String id) throws MusicNotFoundException;

	public void updateMusic(MusicModel music) throws MusicNotFoundException ;
	
	public String generateId();
}
