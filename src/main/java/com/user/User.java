package com.user;

public class User {
	private int UID;
	private String name;
	private String address;
	private String city;
	private String province;
	private String country;
	private String email;
	private String password;
	private int fax;
	private int tel;
	
	public User(int UID, String name, String address, String city, String province, String country, String email,
			String password, int fax, int tel) {
		
		this.UID = UID;
		this.name = name;
		this.address = address;
		this.city = city;
		this.province = province;
		this.country = country;
		this.email = email;
		this.password = password;
		this.fax = fax;
		this.tel = tel;
	}
	
	public User(int UID, String name) {
		super();
		this.name = name;
		this.UID = UID;
	}


	public int getUID() {
		return UID;
	}


	public String getName() {
		return name;
	}

	
	public String getAddress() {
		return address;
	}

	

	public String getCity() {
		return city;
	}



	public String getProvince() {
		return province;
	}

	

	public String getCountry() {
		return country;
	}

	

	public String getEmail() {
		return email;
	}

	
	public String getPassword() {
		return password;
	}

	
	public int getFax() {
		return fax;
	}

	
	public int getTel() {
		return tel;
	}

	
	

}
