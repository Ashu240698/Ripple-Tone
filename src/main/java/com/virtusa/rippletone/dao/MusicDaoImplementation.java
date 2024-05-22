package com.virtusa.rippletone.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.virtusa.rippletone.model.MusicModel;
import com.virtusa.rippletone.exceptions.MusicNotFoundException;

@Repository
@EnableTransactionManagement
@Transactional(readOnly = false)
public class MusicDaoImplementation implements MusicDao {
	@Autowired
	private HibernateTemplate template;

	public MusicDaoImplementation() {
	}

	@Override
	public void addMusic(MusicModel music) {
		template.save(music);
	}

	@Override
	public List<MusicModel> getAllMusic() {
		List<MusicModel> musicList = template.loadAll(MusicModel.class);
		return musicList;
	}

	@Override
	public MusicModel showMusic(String id) throws MusicNotFoundException {
		MusicModel music = template.get(MusicModel.class, id);
		if(music!=null) {
			return music;
		}else {
			throw new MusicNotFoundException();
		}
	}
 
	@Override
	public void deleteMusic(String id) throws MusicNotFoundException {
		MusicModel music = showMusic(id);
		if(music!=null) {
			template.delete(music);
		}else {
			throw new MusicNotFoundException();
		}
		
	}

	@Override
	public void updateMusic(MusicModel music) throws MusicNotFoundException  {
		List<MusicModel> musicList = getAllMusic();
		MusicModel musicUpdate = showMusic(music.getMusicId());
		for(MusicModel music1:musicList) {
			if(music1.getMusicId()==musicUpdate.getMusicId()) {
				musicUpdate.setMusicName(music.getMusicName());
				musicUpdate.setMusicUrl(music.getMusicUrl());
				musicUpdate.setMusicPosterUrl(music.getMusicPosterUrl());
				musicUpdate.setMusicAlbum(music.getMusicAlbum());
				musicUpdate.setMusicArtist(music.getMusicArtist());
				musicUpdate.setLyrics(music.getLyrics());
				template.update(musicUpdate);
			}else {
				template.save(musicUpdate);
			}
		}
	}

	@Override
	public String generateId() {
		List<MusicModel> list = template.loadAll(MusicModel.class);
	    String generatedString = String.valueOf(list.size()+1);
		return generatedString;
	}
}
