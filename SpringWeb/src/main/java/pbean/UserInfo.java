package pbean;

import vbean.VUserInfo;

public class UserInfo {

	private String userid;
	private String password;
	private String name;
	private String email;

	public UserInfo() {
	}

	public UserInfo(VUserInfo vuserInfo) {
		this.userid = vuserInfo.getUserid();
		this.password = vuserInfo.getPassword();
		this.name = vuserInfo.getName();
		this.email = vuserInfo.getEmail();
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEamil(String email) {
		this.email = email;
	}

}
