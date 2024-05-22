package com.virtusa.rippletone.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "admintable")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int adminId;

	@Email(message = "Enter Valid Email")
	private String adminEmail;

	@NotEmpty(message = "Enter The Name")
	private String adminName;

	@NotEmpty(message = "Enter The Password")
	@Length(min = 8, message = "Length must be 8-15")
	// @Pattern(regexp = "^[a-zA-Z0-9]{8}",message ="Must Enter Digits/Characters")
	private String adminPassword;

	private Long adminContact;

	public Admin() {
		super();
	}

	public Admin(int adminId, String adminEmail, String adminName, String adminPassword, Long adminContact) {
		super();
		this.adminId = adminId;
		this.adminEmail = adminEmail;
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.adminContact = adminContact;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public Long getAdminContact() {
		return adminContact;
	}

	public void setAdminContact(Long adminContact) {
		this.adminContact = adminContact;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminEmail=" + adminEmail + ", adminName=" + adminName
				+ ", adminPassword=" + adminPassword + ", adminContact=" + adminContact + "]";
	}

}
