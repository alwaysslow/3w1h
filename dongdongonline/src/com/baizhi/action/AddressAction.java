package com.baizhi.action;

import java.util.List;

import com.baizhi.entity.Address;
import com.baizhi.service.AddressService;
import com.baizhi.service.AddressServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class AddressAction extends ActionSupport {
	private AddressService as=new AddressServiceImpl();
	 private List<Address> addresses;
	 private Address address;
	 private Integer id;
	 private ValueStack vs=ActionContext.getContext().getValueStack();
	 public String selectAll(){
		Integer user_id= (Integer)vs.findValue("#session.user.user_id");
		 addresses=as.selectAll(user_id);
		 System.out.println(addresses);
		 return "addresses";
	 }
	 public String selectAlladdress(){
			Integer user_id= (Integer)vs.findValue("#session.user.user_id");
			 addresses=as.selectAll(user_id);
			 System.out.println(addresses);
			 return "addresses2";
		 }
	 public String delete(){
		 as.delete(id);
		 return "delete";
	 }
	 public String add(){
		 address.setAddress_statue(0);
		 Integer user_id= (Integer)vs.findValue("#session.user.user_id");
		 address.setUser_id(user_id);
		 as.add(address);
		 return "add";
	 }
	 public String update(){
		 as.update0(id);
		 as.update1(id);
		 return "update";
		 		
	 }
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public List<Address> getAddresses() {
		return addresses;
	}
	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	 
}
