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
 *  /**�س�����
 * @author Administrator
 */

public class CaptureAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//��ȡcode
		String code=ImageUtil.getCode();
		//��������֤�����session��
		ValueStack vs=ActionContext.getContext().getValueStack();
		vs.setValue("#session.code", code);
		//����code��ȡ��֤��ͼƬ
		BufferedImage image=ImageUtil.createImage(code);
		//����HttpServletResponse �õ�response ��ȡ�����  ��ͼƬ����������
		HttpServletResponse response=ServletActionContext.getResponse();
		OutputStream os=response.getOutputStream();
		
		ImageIO.write(image, "png", os);
		return null;
	}
	
}
