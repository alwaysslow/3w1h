package com.baizhi.entity;

public class Address {
	private Integer address_id;
	private String address_name;
	private String address_address;
	private String address_phone;
	private Integer address_statue;
	private Integer user_id;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getAddress_id() {
		return address_id;
	}
	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}
	public String getAddress_name() {
		return address_name;
	}
	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}
	public String getAddress_address() {
		return address_address;
	}
	public void setAddress_address(String address_address) {
		this.address_address = address_address;
	}
	public String getAddress_phone() {
		return address_phone;
	}
	public void setAddress_phone(String address_phone) {
		this.address_phone = address_phone;
	}
	public Integer getAddress_statue() {
		return address_statue;
	}
	public void setAddress_statue(Integer address_statue) {
		this.address_statue = address_statue;
	}
	@Override
	public String toString() {
		return "address [address_id=" + address_id + ", address_name="
				+ address_name + ", address_address=" + address_address
				+ ", address_phone=" + address_phone + ", address_statue="
				+ address_statue + "]";
	}
	
	
	
}
