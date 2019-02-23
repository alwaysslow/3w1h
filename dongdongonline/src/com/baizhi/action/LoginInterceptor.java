package com.baizhi.action;

import com.baizhi.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.util.ValueStack;

public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		ValueStack vs=ActionContext.getContext().getValueStack();
		User u=(User) vs.findValue("#session.user");
		if(u!=null){
			//∑≈––
			arg0.invoke();
			
		}
		System.out.println("¿πΩÿ¡À");
		return "gotologin";
	}
	
}
