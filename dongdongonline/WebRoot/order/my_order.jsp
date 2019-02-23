<%@page contentType="text/html;charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>订单</title>
		<link rel="stylesheet"href="../css/dingdan.css"type="text/css">
	</head>
	<body>
		<table class="table-head table-mod">
			<tbody>
				<tr>
					<th width="331px">宝贝</th>
					<th>单价</th>
					<th>数量</th>
					<th>实付款</th>
					<th>交易状态</th>
				</tr>
			</tbody>
		</table>
		<s:iterator value="orders" >
		<div class="dom">
			<label>
				<span class="time">
					<input type="checkbox"/>
					<span class="time"><s:date format="yyyy-MM-dd" name="order_time"/></span>
				</span>
				<span>
					<span>订单号</span>
					<span>:</span>
					<span><s:property value="order_id"/></span>
					<s:if test="order_status1==0">
					<span><a href='<s:url value="/index.jsp"/>?id=<s:property value="order_id"/>&total_price=<s:property value="total_price"/>'>去支付</a></span>
					<span><a href="<s:url action="order_delete" namespace="/order"/>?order_id=<s:property value="order_id"/>">取消订单</a></span>
					</s:if>
					
				</span>
			</label>
		</div>
		<table class="tb">
		<s:iterator value="itemdetails" status="sta" >
			<tr>
			
				<td width="330px">
					<div style="display: block;">
						<img src="<s:url value="/productImages/%{book.img}"/>" style="float: left;"/>
						<p style="width: 230px; margin-left:10px; float: left;">
							<a href="javascript::"><span class="sp"><s:property value="book.book_name"/></span></a>
						</p>
					</div>
				</td>
				<td width="238px" align="center">
					<div>
						<p><s:property value="item_price"/></p>
					</div>
				</td>
				<td width="238px" align="center"><s:property value="item_count"/></td>
				<s:if test="#sta.count==1">
				<td class="boder" rowspan="999"><s:property value="total_price"/></td>
				<td class="boder" width="239px" rowspan="999">
					<div>
					<s:if test="order_status1==0">
						<p>未付款</p>
						</s:if>
						<s:else>
							<p>已付款</p>
						</s:else>
					</div>
				</td>
				</s:if>
			</tr>
			</s:iterator>
			<!-- <tr>
				<td width="330px">
					<div style="display: block;">
						<img src="../images/hf.jpg" style="float: left;"/>
						<p style="width: 230px; margin-left:10px; float: left;">
							<a href="javascript::"><span class="sp">自动充值 河南联通话费50元手机充值50元快充50元 及时到账</span></a>
						</p>
					</div>
				</td>
				<td width="238px" align="center">
					<div>
						<p>$49.95</p>
					</div>
				</td>
				<td width="238px" align="center">1</td>
			</tr> -->
		</table>
		</s:iterator>
		<!-- <div class="dom">
			<label>
				<span class="time">
					<input type="checkbox"/>
					<span class="time">2018-1-1</span>
				</span>
				<span>
					<span>订单号</span>
					<span>:</span>
					<span>99999101010102</span>
				</span>
			</label>
		</div>
		<table class="tb">
			<tr>
				<td width="330px">
					<div style="display: block;">
						<img src="../images/hxcu.jpg" style="float: left;"/>
						<p style="width: 230px; margin-left:10px; float: left;">
							<a href="javascript::"><span class="sp">【双11狂欢价】恒顺镇江香醋六年陈580ml  酿造食醋 调味品料 江苏特产账</span></a>
						</p>
					</div>
				</td>
				<td width="238px" align="center">
					<div>
						<p>$28.00</p>
					</div>
				</td>
				<td width="238px" align="center">1</td>
				<td class="boder" rowspan="3">$63.8</td>
				<td class="boder" width="239px" rowspan="3">
					<div>
						<p>交易成功</p>
						<p>订单详情</p>
					</div>
				</td>
			</tr>
			<tr>
				<td width="330px">
					<div style="display: block;">
						<img src="../images/hxcu1.jpg" style="float: left;"/>
						<p style="width: 230px; margin-left:10px; float: left;">
							<a href="javascript::"><span class="sp">【双11狂欢价】恒顺香醋蟹醋500ml 大闸螃蟹好伴侣  镇江香醋 海鲜蘸食醋</span></a>
						</p>
					</div>
				</td>
				<td width="238px" align="center">
					<div>
						<p>$9.9</p>
					</div>
				</td>
				<td width="238px" align="center">1</td>
			</tr>
			<tr>
				<td width="330px">
					<div style="display: block;">
						<img src="../images/hxcu2.jpg" style="float: left;"/>
						<p style="width: 230px; margin-left:10px; float: left;">
							<a href="javascript::"><span class="sp">【双11狂欢价】恒顺香醋镇江香醋2000ml 调味品料 特产 蘸食饺子海鲜 酿造食醋</span></a>
						</p>
					</div>
				</td>
				<td width="238px" align="center">
					<div>
						<p>$25.9</p>
					</div>
				</td>
				<td width="238px" align="center">1</td>
			</tr>
		</table> -->
		
		<div style="margin: 50px;text-align: center;">
				<a href="javascript:history.go(-1);">
				<input 	class="button_1"  type="button" value="取消" /></a>  
	    </div>
	</body>
</html>