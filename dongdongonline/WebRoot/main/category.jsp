<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>
		<s:iterator value="list">
		<!--1级分类开始-->
			<div class="bg_old" onmouseover="this.className = 'bg_white';"
				onmouseout="this.className = 'bg_old';">
				<h3>
					[<a href='<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="category_id"/>&category_count=<s:property value="category_count"/>'><s:property value="category_name"/></a>]
				</h3>
				<ul class="ul_left_list">
						<s:iterator value="categories">
						<!--2级分类开始-->
						<li>
							<a href='<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="category_id"/>&category_count=<s:property value="category_count"/>'><s:property value="category_name"/></a>
						</li>
						
						<!--2级分类结束-->
						</s:iterator>
				</ul>
				<div class="empty_left">
				</div>
			</div>

			<div class="more2">
			</div>
			<!--1级分类结束-->
			</s:iterator>
		


		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
