<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div id="NewProduct_1_o_t" onmouseover="">
	<ul>
	<s:iterator value="books">
		 <li><a href="<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>" target='_blank'><s:property value="book_name"/>&gt;&gt;</a></li>
		
	</s:iterator>
	</ul>
</div>