package com.baizhi.action;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import com.baizhi.service.UserServiceImpl;
import com.baizhi.utils.ImageUtil;
import com.baizhi.utils.MailUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;


public class UserAction extends ActionSupport {
	private ValueStack vs=ActionContext.getContext().getValueStack();
	
	

	private UserService us=new UserServiceImpl();
	private String code;
	private User user;
	private String errormsg;
	private String url;
	private String email;
	 public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getErrormsg() {
		return errormsg;
	}

	public void setErrormsg(String errormsg) {
		this.errormsg = errormsg;
	}

	public String exit(){
		 vs.setValue("#session.user", null);
		 System.out.println("皑如山上雪");
		 User user2=(User) vs.findValue("#session.user");
		 System.out.println(user2);
		 return "exit";
	 }
	
	public ValueStack getVs() {
		return vs;
	}
	public void setVs(ValueStack vs) {
		this.vs = vs;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	public String login(){
		System.out.println(url);
		if("".equals(url)){
			url="/main/main.jsp";
		}
		else{
			String[] split =url.split("/");
			String nurl="";
			for(int i=2;i<split.length;i++){
				nurl+="/"+split[i];
		
			}
			url=nurl;
			System.out.println(url);
		}
		System.out.println(url);
		
		User u1=us.selectOne(user);
		String code1=vs.findString("#session.code");
		System.out.println(u1);
		System.out.println(code);
		System.out.println(code1);
		if(code1.equalsIgnoreCase(code)){
			if(u1!=null){
				if(u1.getUser_state()==1){
					vs.setValue("#session.user", u1);
					return "loginOk";
				}else{
					errormsg="我还没激活呢";
					return "unactive";
				}
			}
			else{
				errormsg="名字或密码错了";
				return "userError";
			}
		}
		else{
			errormsg="验证码错了啊";
			return "idntifycodeError";
		}
		
	}
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String register(){
		us.add(user);
		return "registeOk";
	}
	public void active(){
		MailUtil.sendSimpleMail(email);
	}
	public String update(){
		us.update(email);
		return "update";
	}
	
}
