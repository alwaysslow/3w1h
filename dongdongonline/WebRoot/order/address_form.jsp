<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>生成订单 - 当当网</title>
<link href="../css/login.css" rel="stylesheet" type="text/css" />
<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
<link href="../css/address.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		 $("[name='address_id']").click(function(){
			 $("[name='a']").prop("class","address-wrap")
			 $(this).parent().parent().prop("class","address-wrap selected");
			 $(this).prop("checked","checked");
			
		 });
	});
</script>
</head>
<body>
	<%@include file="../common/head1.jsp"%>
	<div class="login_step">
		生成订单骤: 1.确认订单 ><span class="red_bold"> 2.填写送货地址</span> > 3.订单成功
	</div>
	<div class="fill_message">
		
		 <form action="<s:url action="order_addorder" namespace="/order" />" method="post">
			 <div class="address-wrap ">
				<ul class="address-list">
				 <s:iterator value="addresses">
				 <s:if test="address_statue==1">
					 <li class="address-wrap selected" name="a">
					<div class="addressBox">
					
						<%-- <span class="marker-tip">寄送至</span> --%>
					</div>
					<label class="addressInfo">
						<input type="radio" name="address_id" value="<s:property value="address_id"/>"  checked="checked"/>
						<span class="user-address">
							<span></span>
							<span><s:property value="address_address"/></span>
							<span>（</span>
							<span><s:property value="address_name"/></span>
							<span> 收）</span>
							<em><s:property value="address_phone"/></em>
						</span>
					</label>
				</li>
				</s:if>
				<s:else>
					 <li class="address-wrap" name="a">
					<div class="addressBox">
					
						<%-- <span class="marker-tip">寄送至</span> --%>
					</div>
					<label class="addressInfo">
						<input type="radio" name="address_id" value="<s:property value="address_id"/>" />
						<span class="user-address">
							<span></span>
							<span><s:property value="address_address"/></span>
							<span>（</span>
							<span><s:property value="address_name"/></span>
							<span> 收）</span>
							<em><s:property value="address_phone"/></em>
						</span>
					</label>
				</li>
				</s:else>
				</s:iterator>
				<!-- <li class="address-wrap">
					<label class="addressInfo">
						<input type="radio" name="address"/>
						<span class="user-address">
							<span >河南省 郑州市 金水区 文化路街道 </span>
							<span>文化路82号硅谷广场A座13A16(14层)百知教育</span>
							<span>（</span>
							<span>段小翔</span>
							<span> 收）</span>
							<em>15637128565</em>
						</span>
					</label>
				</li> -->
				</ul>
			</div>
			
			<div class="login_in">
				<input
					id="btnClientRegister" class="button_1" name="submit" type="submit"
					value="下一步" />
			</div>
			
		</form>
	</div>
	<%@include file="../common/foot1.jsp"%>
</body>
</html>

