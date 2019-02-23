<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>热销图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<s:iterator value="books" >
	<div class="second_d_wai">
		<div class="img">
			<a href="<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>" target='_blank'><img
					src="<s:url value="/productImages/%{img}"/>" border=0 /> </a>
		</div>
		<div class="shuming">
			<a href="<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>" target="_blank"><s:property value="book_name"/></a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			定价：￥<s:property value="book_price"/>
		</div>
		<div class="price">
			当当价：￥<s:property value="dang_price"/>
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->
	</s:iterator>
</div>
<div class="clear"></div>