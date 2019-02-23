<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>收获地址管理 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			我的收货地址：
		</div>
		<div class="fill_message">

			<table class="tab_login">
				<tr>
					<td valign="top" class="w1" style="text-align: left">
						<b>序号</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>收货地址编号</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>收货人姓名</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>收货人地址</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>收货人联系方式</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>收货地址状态</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>操作</b>
					</td>
				</tr>
				<s:iterator value="addresses" status="sta" >
				<!-- 收货地址开始 -->
				<tr>
					<td valign="top">
							<s:property value="#sta.index+1" />
					</td>
					<td valign="top">
							<s:property value="address_id" />
					</td>
					<td valign="top">
						     <s:property value="address_name" />
					</td>
					<td valign="top">
						     <s:property value="address_address" />
					</td>
					<td valign="top">
						   <s:property value="address_phone" />
					</td>
					<td valign="top">
					<s:if test="address_statue==1">
						         默认收货地址 
					</s:if>
					<s:else>
						<a  href="<s:url action="address_update" namespace="/address"/>?id=<s:property value="address_id"/>">设置为默认</a>
					</s:else>
					</td>
					<td valign="top">
						  <a  href="<s:url action="address_delete" namespace="/address"/>?id=<s:property value="address_id"/>">删除</a>
					</td>
				</tr>
				</s:iterator>
				<!-- <tr>
					<td valign="top">
							2
					</td>
					<td valign="top">
							2
					</td>
					<td valign="top">
						           李四
					</td>
					<td valign="top">
						        花园路北环
					</td>
					<td valign="top">
						   654789
					</td>
					<td valign="top">
						  <a  href="#">设置为默认</a>
					</td>
					<td valign="top">
						  <a  href="#">删除</a>
					</td>
				</tr>
				<tr>
					<td valign="top">
							3
					</td>
					<td valign="top">
							3
					</td>
					<td valign="top">
						           王五
					</td>
					<td valign="top">
						    CBD
					</td>
					<td valign="top">
						   654789
					</td>
					<td valign="top">
						  <a href="#">设置为默认</a>
					</td>
					<td valign="top">
						  <a  href="#">删除</a>
					</td>
				</tr> -->
				<!--收货地址结束 -->
			</table>
			
			<div style="margin: 50px;text-align: center;">
				<a href="../address/add_address.jsp">添加新的收货地址</a>
				<a href="../main/main.jsp">
					<input 	class="button_1"  type="button" value="取消" />
				</a>  
	    	</div>
		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
</html> 
