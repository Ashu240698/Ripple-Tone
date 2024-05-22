package com.virtusa.rippletone.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "RippleTone")
public class MusicModel {
	@Id
	@Column(length = 100, name = "MusicID")
	@NotEmpty
	private String musicId;
	
	@Column(length = 50, name = "MusicName")
	@NotEmpty
	private String musicName;
	
	@Column(length = 5000, name = "Lyrics")
	@Lob
	private String lyrics;
	
	@NotEmpty
	@Column(name = "MusicUrl")
	private String musicUrl;
	
	@NotEmpty
	@Column(name = "MusicPosterUrl")
	private String musicPosterUrl;
	
	@NotEmpty
	@Column(length = 100, name = "MusicAlbum")
	private String musicAlbum;
	
	@NotEmpty
	@Column(length = 100, name = "MusicArtist")
	private String musicArtist;
	
	@Transient
	@Column(length = 20, name = "Likes")
	@OneToMany(cascade = CascadeType.ALL)
	private List<LikeModel> likes;
	
	public MusicModel() {
	}

	public MusicModel(String musicId, String musicName, String musicUrl, String musicPosterUrl, String musicAlbum,
			String musicArtist, List<LikeModel> likes) {
		super();
		this.musicId = musicId;
		this.musicName = musicName;
		this.musicUrl = musicUrl;
		this.musicPosterUrl = musicPosterUrl;
		this.musicAlbum = musicAlbum;
		this.musicArtist = musicArtist;
		this.likes = likes;
	}

	public String getMusicId() {
		return musicId;
	}

	public void setMusicId(String musicId) {
		this.musicId = musicId;
	}

	public String getMusicName() {
		return musicName;
	}

	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}

	public String getMusicUrl() {
		return musicUrl;
	}

	public void setMusicUrl(String musicUrl) {
		this.musicUrl = musicUrl;
	}

	public String getMusicPosterUrl() {
		return musicPosterUrl;
	}

	public void setMusicPosterUrl(String musicPosterUrl) {
		this.musicPosterUrl = musicPosterUrl;
	}

	public String getMusicAlbum() {
		return musicAlbum;
	}

	public void setMusicAlbum(String musicAlbum) {
		this.musicAlbum = musicAlbum;
	}

	public String getMusicArtist() {
		return musicArtist;
	}

	public void setMusicArtist(String musicArtist) {
		this.musicArtist = musicArtist;
	}

	public List<LikeModel> getLikes() {
		return likes;
	}

	public void setLikes(List<LikeModel> likes) {
		this.likes = likes;
	}

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	@Override
	public String toString() {
		return "MusicModel [musicId=" + musicId + ", musicName=" + musicName + ", lyrics=" + lyrics + ", musicUrl="
				+ musicUrl + ", musicPosterUrl=" + musicPosterUrl + ", musicAlbum=" + musicAlbum + ", musicArtist="
				+ musicArtist + ", likes=" + likes + "]";
	}

	

	
	
	
}
