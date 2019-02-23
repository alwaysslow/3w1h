<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<h2>
	编辑推荐
</h2>
<div id=__bianjituijian/danpin>
	<div class=second_c_02>
	
		<!--编辑推荐开始-->
		<s:iterator value="books">
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href='<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>' target='_blank'><img src="<s:url value="/productImages/%{img}"/>" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href='<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>' target='_blank' title='输赢'><s:property value="book_name"/></a>
				</h3>
				<h4>
					作者：<s:property value="author"/> 著
					<br />
					出版社：<s:property value="press"/>&nbsp;&nbsp;&nbsp;&nbsp;出版时间：<s:date name="up_date" format="yyyy-MM-dd"/>
				</h4>
				<h5>
					简介<s:property value="description1"/>
				</h5>
				<h6>
					定价：￥<s:property value="book_price"/>&nbsp;&nbsp;当当价：￥<s:property value="dang_price"/>
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		
		
		<!--编辑推荐结束-->
		</s:iterator>
	</div>
</div>
