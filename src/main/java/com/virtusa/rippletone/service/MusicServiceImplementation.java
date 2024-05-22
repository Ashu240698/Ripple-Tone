package com.virtusa.rippletone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.rippletone.dao.MusicDao;
import com.virtusa.rippletone.model.MusicModel;
import com.virtusa.rippletone.exceptions.MusicNotFoundException;

@Service
public class MusicServiceImplementation implements MusicService{
	
	@Autowired
	private MusicDao musicDao;
	
	@Override
	public void addMusic(MusicModel music) {
		musicDao.addMusic(music);
	}

	@Override
	public List<MusicModel> getAllMusic() {
		return musicDao.getAllMusic();
	}

	@Override
	public MusicModel showMusic(String id) throws MusicNotFoundException {
		return musicDao.showMusic(id);
	}

	@Override
	public void deleteMusic(String id) throws MusicNotFoundException {
		musicDao.deleteMusic(id);
	}

	@Override
	public void updateMusic(MusicModel music) throws MusicNotFoundException{
		musicDao.updateMusic(music);
	}

	@Override
	public String generateId() {
		return musicDao.generateId();
	}

}
