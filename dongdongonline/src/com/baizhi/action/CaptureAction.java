package com.baizhi.action;

import java.awt.image.BufferedImage;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.baizhi.utils.ImageUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
/**
 *  /**回车产生
 * @author Administrator
 */

public class CaptureAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//获取code
		String code=ImageUtil.getCode();
		//将生成验证码存入session中
		ValueStack vs=ActionContext.getContext().getValueStack();
		vs.setValue("#session.code", code);
		//根据code获取验证码图片
		BufferedImage image=ImageUtil.createImage(code);
		//创建HttpServletResponse 得到response 获取输出流  将图片输出到浏览器
		HttpServletResponse response=ServletActionContext.getResponse();
		OutputStream os=response.getOutputStream();
		
		ImageIO.write(image, "png", os);
		return null;
	}
	
}
