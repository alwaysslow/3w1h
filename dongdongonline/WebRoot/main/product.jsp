<%@page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
ul li {
	text-decoration: none;
	list-style-type: none;
	line-height: 20px;
}

body {
	font-family: 宋体, Arial, Helvetica, sans-serif;
	font-size: 12px;
	background: #769b72 url(../images/booksaleimg/bg_grad.gif) top center
		no-repeat;
	cursor: default;
	color: #404040;
	margin: 0;
	padding: 0;
}
</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js" ></script>
<script type="text/javascript">
        $(function(){
        	$(".abc").click(function(){
        		var bid=$(this).next().html();
        		$(this).prop("src","<s:url action="cart_addBook" namespace="/cart" />?book_id="+bid );
        		var that=$(this);
        		
        		
        		window.setTimeout(function(){
        			that.attr("src","../images/load.gif");
        		}, 500);
        		window.setTimeout(function(){
        			that.attr("src","../images/label3.gif");
        		}, 1000);
        		window.setTimeout(function(){
        			that.attr("src","../images/buttom_goumai.gif");
        		}, 1500);
        		
        	});
        })
</script>
</head>
<body>
	<div style="width: 60%;margin:20px auto;">
		<div style="width:100%;float: left;">
			<h1>
				
			</h1>
			<span><font color="#cccccc">丛书名：<s:property value="book.book_name"/></font></span>
			<hr />
			<div>
				<div style="float: left;width:20%;">
					<img src="<s:url value="/productImages/%{book.img}"/>"  border=0 />
				</div>
				<div style="float: left;width:80%">
					<ul class="info">
						<li>作&nbsp;者：<s:property value="book.author"/></li>
						<li>出版社：<s:property value="book.press"/></li>
						<li style="float:left;width:50%;">出版时间:<s:property value="book.up_date"/></li>
						<li style="float:left;width:50%;">字数：15千</li>
						<li style="float:clear;"></li>
						<li style="float:left;width:50%;">版次：<s:property value="book.press"/></li>
						<li style="float:left;width:50%;">页数：251</li>
						<li style="float:clear;"></li>
						<li style="float:left;width:50%;">印刷时间：2020-10-1</li>
						<li style="float:left;width:50%;">开本：	￥￥￥</li>
						<li style="float:clear;"></li>
						<li style="float:left;width:50%;">印次：￥￥￥￥</li>
						<li style="float:left;width:50%;">纸张：￥￥￥￥</li>
						<li style="float:clear;"></li>
						<li style="float:left;width:50%;">ISBN：￥￥￥￥</li>
						<li style="float:left;width:50%;">包装：￥￥￥￥</li>
						<li>
							<div class='your_position'>
								您现在的位置:&nbsp; <a href='../main/main.jsp'>当当图书</a> &gt;&gt;<a href='<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="book.category2.category_id"/>'><s:property value="book.category2.category_name"/></a> &gt;&gt;<a href='<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="book.category1.category_id"/>'><s:property value="book.category1.category_name"/></a> &gt;&gt; 
								<font style='color: #cc3300'> 
									<strong> 
									</strong>
								</font>
							</div>
						</li>
						<li>定价：￥<s:property value="book.book_price"/>&nbsp;&nbsp;
							当当价：￥<s:property value="book.dang_price"/>&nbsp;&nbsp; 节省：￥<s:property value="book.book_price-book.dang_price"/> </li>
						<li><a href="javascript:void(0)"> <img
								src='../images/buttom_goumai.gif' class="abc"
								onclick="" /><span style="display:none"><s:property value="book.book_id"/></span>
						</a></li>
					</ul>
				</div>
				<div style="float: clear;"></div>
			</div>
		</div>
	</div>
</body>
</html>