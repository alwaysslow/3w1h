<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<link href="../css/book.css" rel="stylesheet" type="text/css" />
		<link href="../css/second.css" rel="stylesheet" type="text/css" />
		<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="../css/list.css" rel="stylesheet" type="text/css" />
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
		&nbsp;

		<!-- 头部开始 -->
		<%@include file="../common/head.jsp"%>
		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="../images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href='<s:url value="/main/main.jsp"/>'>当当图书</a> &gt;&gt;
	        <s:if test="father_id==null">
	        <font style='color: #cc3300'><strong><s:property value="category.category_name"/></strong> </font>
	        </s:if>
	       
	        <s:elseif test="books==null">
	        <font style='color: #cc3300'><strong><a href="<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="category.category_id"/>"><s:property value="category.category_name"/></a>&nbsp;&gt;&gt;&nbsp;
				<font style='color: #00cc33'><strong>该类别下还未有图书</strong> </font>
				</strong> </font>
			</s:elseif>
			 <s:else>
			 <font style='color: #cc3300'><strong><a href="<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="category.category_id"/>"><s:property value="category.category_name"/></a>&nbsp;&gt;&gt;&nbsp;
				<font style='color: #00cc33'><strong><s:property value="category_name"/></strong> </font>
				</strong> </font>
	         </s:else>
			
		</div>

		<div class="book">
		
			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										&middot;<s:property value="category.category_name"/>&nbsp;<s:property value="category.category_count"/>
									</div>
								</div>
							</li>
							<div class="clear"></div>
							
							<!--2级分类开始-->
							<s:iterator value="category.categories">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei>
										<a href="<s:url action="category_selectFirstSecond" namespace="/category" />?category_id=<s:property value="category_id"/>&category_count=<s:property value="category_count"/>"><s:property value="category_name"/>&nbsp;<s:property value="category_count"/></a>
									</div>
								</div>
							</li>
						    <div class="clear"></div>
						    
							<!-- <li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei3>
										<a href="#">近现在小说&nbsp;(8)</a>
									</div>
								</div>
							</li>
							<div class="clear"></div>
							<li>
								<div>
									<div class=second_fenlei>
											&middot;
									</div>
									<div class=second_fenlei>
										<a href="#">四大名著&nbsp;(5)</a>
									</div>
								</div>
							</li>
							<div class="clear"></div> -->
							<!--2级分类结束-->
							</s:iterator>
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">
			
				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div id="divTopPageNavi" class="list_r_title_text3">
							
							<!--分页导航开始-->
							<!-- 判断按钮是否生效 -->
							<s:if test="pageindex<=1">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="#">
								<img src='../images/page_up.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url action="category_selectFirstSecond" namespace="/category"/>?pageindex=<s:property value="pageindex-1"/>&category_id=<s:property value="category_id"/>&category_count=<s:property value="category_count"/>">
								<img src='../images/page_up.gif' /> </a>
							</div>
							</s:else>
							<div class='list_r_title_text3a'>
								<img src='../images/page_up_gray.gif' />
							</div>
						
							<div class='list_r_title_text3b'>
								第<s:property value="pageindex"/>页/共<s:property value="totalpage"/>页
							</div>
							<!-- 判断按钮是否生效 -->
							<s:if test="pageindex<totalpage">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="<s:url action="category_selectFirstSecond" namespace="/category"/>?pageindex=<s:property value="pageindex+1"/>&category_id=<s:property value="category_id"/>&category_count=<s:property value="category_count"/>">
									<img src='../images/page_down.gif' /> </a>
							</div>
							</s:if>
							<s:else>
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="#">
									<img src='../images/page_down.gif' /> </a>
							</div>
							</s:else>
							<div class='list_r_title_text3a'>
								<img src='../images/page_down_gray.gif' />
							</div>
							
							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
						<s:iterator value="books">
						<div class="list_r_line"></div>
						<div class="clear"></div>

						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>'>
								<img src="<s:url value="/productImages"/>/<s:property value="img"/> " /> </a> </span>
							<h2>
								<a name="link_prd_name" href='<s:url action="book_selectOne" namespace="/book"/>?book_id=<s:property value="book_id"/>'><s:property value="book_name"/></a>
							</h2>
							<h3>
								顾客评分：99.9
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'><s:property value="author"/></a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'><s:property value="press"/></a>
							</h4>
							<h4>
								出版时间：<s:property value="up_date"/>
							</h4>
							<h5>
								<s:property value="description1"/>
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥<s:property value="book_price"/></span>
								<span class="red">￥<s:property value="dang_price"/></span>
								节省：￥<s:property value="book_price-dang_price"/>
							</h6>
							<span class="list_r_list_button"> 
							<a href="#"> 
							<img src='../images/buttom_goumai.gif' class="abc"
								onclick=""/><span style="display:none"><s:property value="book_id"/></span> </a>
							<span id="cartinfo"></span>
						</div>
						<div class="clear"></div>

						<%-- <div class="clear"></div>
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='#'>
								<img src="../productImages/1.jpg" /> </a> </span>
							<h2>
								<a name="link_prd_name" href='#'>精通JavaEE轻量级框架整合方案</a>
							</h2>
							<h3>
								顾客评分：100
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'>菜鸟</a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'>人民邮电出版社</a>
							</h4>
							<h4>
								出版时间：2009-01-01
							</h4>
							<h5>
								这是一本好书，描述了Struts、Hibernate和Spring等框架的整合应用！
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥79</span>
								<span class="red">￥60</span>
								节省：￥19
							</h6>
							<span class="list_r_list_button"> 
							<a href="#"> 
							<img src='../images/buttom_goumai.gif' /> </a>
							<span id="cartinfo"></span>
						</div>
						<div class="clear"></div>
						
												<div class="clear"></div>
						<div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='#'>
								<img src="../productImages/1.jpg" /> </a> </span>
							<h2>
								<a name="link_prd_name" href='#'>精通JavaEE轻量级框架整合方案</a>
							</h2>
							<h3>
								顾客评分：100
							</h3>
							<h4 class="list_r_list_h4">
								作 者:
								<a href='#' name='作者'>菜鸟</a>
							</h4>
							<h4>
								出版社：
								<a href='#' name='出版社'>人民邮电出版社</a>
							</h4>
							<h4>
								出版时间：2009-01-01
							</h4>
							<h5>
								这是一本好书，描述了Struts、Hibernate和Spring等框架的整合应用！
							</h5>
							<div class="clear"></div>
							<h6>
								<span class="del">￥79</span>
								<span class="red">￥60</span>
								节省：￥19
							</h6>
							<span class="list_r_list_button"> 
							<a href="#"> 
							<img src='../images/buttom_goumai.gif' /> </a>
							<span id="cartinfo"></span>
						</div>
						<div class="clear"></div> --%>
					
						<!--商品条目结束-->
						</s:iterator>
					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->
				
			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
