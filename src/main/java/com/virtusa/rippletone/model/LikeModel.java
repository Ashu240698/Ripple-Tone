package com.virtusa.rippletone.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class LikeModel {
	@Id
	@Column(length = 10, name = "LkeID")
	private String id;
	@Column(length = 10, name = "NumberOfLikes")
	private int numberOfLikes;
	@ManyToOne(targetEntity = LikeModel.class)
	@Embedded
	private List<User> likedUser;
	
	public LikeModel() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getNumberOfLikes() {
		return numberOfLikes;
	}

	public void setNumberOfLikes(int numberOfLikes) {
		this.numberOfLikes = numberOfLikes;
	}

	public List<User> getLikedUser() {
		return likedUser;
	}

	public void setLikedUser(List<User> likedUser) {
		this.likedUser = likedUser;
	}

	@Override
	public String toString() {
		return "LikeModel [id=" + id + ", numberOfLikes=" + numberOfLikes + ", likedUser=" + likedUser + "]";
	}
	
	
}
