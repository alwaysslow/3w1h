
--书籍类目表
drop table b_category

create table b_category(
	category_id number(5) primary key,
	category_name varchar2(30),
	category_count number(5),
	father_id number(5) references b_category(category_id)
	)
	select my_seq.nextval from dual
create sequence my_seq start with 1 increment by 2

select *from b_category
--添加一级类别
insert into b_category values(myseq.nextval,'小说',50,null);
insert into b_category values(myseq.nextval,'青春',100,null);
insert into b_category values(myseq.nextval,'人文社科',60,null);
insert into b_category values(myseq.nextval,'管理',50,null);
insert into b_category values(myseq.nextval,'少儿',70,null);
insert into b_category values(myseq.nextval,'外语',80,null);
insert into b_category values(myseq.nextval,'计算机',30,null);
--插入二级类别
insert into b_category values(myseq.nextval,'当代小说',10,171);
insert into b_category values(myseq.nextval,'近现代小说',10,171);
insert into b_category values(myseq.nextval,'古典小说',10,171);
insert into b_category values(myseq.nextval,'四大名著',10,171);
insert into b_category values(myseq.nextval,'世界名著',10,171);


insert into b_category values(myseq.nextval,'校园',10,173);
insert into b_category values(myseq.nextval,'爱情/情感',20,173);
insert into b_category values(myseq.nextval,'叛逆/成长',15,173);
insert into b_category values(myseq.nextval,'玄幻',25,173);
insert into b_category values(myseq.nextval,'原创',30,173);




insert into b_category values(myseq.nextval,'政治',5,175);
insert into b_category values(myseq.nextval,'经济',10,175);
insert into b_category values(myseq.nextval,'法律',15,175);
insert into b_category values(myseq.nextval,'养殖学',12,175);
insert into b_category values(myseq.nextval,'哲学',9,175);
insert into b_category values(myseq.nextval,'历史',9,175);

insert into b_category values(myseq.nextval,'管理学',10,177);
insert into b_category values(myseq.nextval,'战略管理',10,177);
insert into b_category values(myseq.nextval,'市场营销',10,177);
insert into b_category values(myseq.nextval,'商业史传',10,177);
insert into b_category values(myseq.nextval,'电子商务',10,177);

insert into b_category values(myseq.nextval,'0-2岁',10,179);
insert into b_category values(myseq.nextval,'7-10岁',10,179);
insert into b_category values(myseq.nextval,'11-14岁',10,179);
insert into b_category values(myseq.nextval,'儿童文学',40,179);

insert into b_category values(myseq.nextval,'英语',20,181);
insert into b_category values(myseq.nextval,'日语',20,181);
insert into b_category values(myseq.nextval,'韩语',20,181);
insert into b_category values(myseq.nextval,'俄语',10,181);
insert into b_category values(myseq.nextval,'德语',10,181);

insert into b_category values(myseq.nextval,'计算机理论',10,183);
insert into b_category values(myseq.nextval,'数据库',5,183);
insert into b_category values(myseq.nextval,'程序设计',5,183);
insert into b_category values(myseq.nextval,'人工智能',5,183);
insert into b_category values(myseq.nextval,'计算机考试',5,183);

--创建书籍具体信息表
create table b_book(
  	book_id Integer primary key,
  	book_name varchar2(30),
  	author varchar2(30),
  	press varchar2(30),
  	up_date date,
  	book_price number(10,2),
  	dang_price number(10,2),
  	img varchar2(30),
  	description varchar2(30),
  	book_salecount number(10),
  	category_id Integer references b_category(category_id)
  	)
 select *from b_book 
 drop table b_book
 
 
--查询某一本书的具体信息
select  c.category_id cid,c.category_name cname ,b.*,d.category_id did ,d.category_name  dname
from b_book b inner join b_category c on b.category_id =c.category_id inner join b_category d on c.father_id=d.category_id
where b.book_id=100 

delete b_book where book_id=54
insert into b_book values(my_seq.nextval,'窗边的小豆豆','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'1.jpg','这书也忒好看了吧',123,'325');
insert into b_book values(my_seq.nextval,'童年在人间我的大学','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'2.jpg','这书也忒好看了吧',124,'327');
insert into b_book values(my_seq.nextval,'海水观赏鱼','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'3.jpg','这书也忒好看了吧',125,'329');
insert into b_book values(my_seq.nextval,'小妇人','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'4.jpg','这书也忒好看了吧',126,'331');
insert into b_book values(my_seq.nextval,'双螺旋','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'5.jpg','这书也忒好看了吧',127,'333');
insert into b_book values(my_seq.nextval,'jane eyre','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'6.jpg','这书也忒好看了吧',128,'335');
insert into b_book values(my_seq.nextval,'java就业培训教程','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'7.jpg','这书也忒好看了吧',129,'337');

insert into b_book values(my_seq.nextval,'茶花女','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'8.jpg','这书也忒好看了吧',133,'339');
insert into b_book values(my_seq.nextval,'雪莱诗选','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'9.jpg','这书也忒好看了吧',143,'341');
insert into b_book values(my_seq.nextval,'在人间','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'10.jpg','这书也忒好看了吧',153,'343');

insert into b_book values(my_seq.nextval,'飘','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'11.jpg','这书也忒好看了吧',223,'345');
insert into b_book values(my_seq.nextval,'关键管理问题','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'12.jpg','这书也忒好看了吧',233,'347');
insert into b_book values(my_seq.nextval,'孩子我们一路同行','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'13.jpg','这书也忒好看了吧',243,'349');
insert into b_book values(my_seq.nextval,'傲慢与偏见','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'14.jpg','这书也忒好看了吧',253,'351');
insert into b_book values(my_seq.nextval,'童年','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'15.jpg','这书也忒好看了吧',263,'353');;
insert into b_book values(my_seq.nextval,'一个陌生女人的来信','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'16.jpg','这书也忒好看了吧',283,'355');

insert into b_book values(my_seq.nextval,'鲁滨逊漂流记','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'17.jpg','这书也忒好看了吧',293,'353');
insert into b_book values(my_seq.nextval,'老子说','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'18.jpg','这书也忒好看了吧',333,'351');
insert into b_book values(my_seq.nextval,'达芬奇密码','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'19.jpg','这书也忒好看了吧',334,'349');
insert into b_book values(my_seq.nextval,'淘气包马小跳','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'20.jpg','这书也忒好看了吧',500,'347');
insert into b_book values(my_seq.nextval,'夏洛的网','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'21.jpg','这书也忒好看了吧',33,'345');
insert into b_book values(my_seq.nextval,'servlet与jsp的核心编程','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'22.jpg','这书也忒好看了吧',13,'343');
insert into b_book values(my_seq.nextval,'庐隐新作','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'23.jpg','这书也忒好看了吧',12,'341');
insert into b_book values(my_seq.nextval,'门口的野蛮人','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'24.jpg','这书也忒好看了吧',120,'339');
insert into b_book values(my_seq.nextval,'名字看不清','唐家三少','百知出版社第六分社',sysdate,33.9,21.8,'25.jpg','这书也忒好看了吧',10,'337');
--热销图书
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from(select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from (select *from b_book b order by book_salecount desc) )  
		where r<=4
--最新上架图书
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from (select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from  (select *from b_book b order by up_date desc) )  
		where r<=4
--编辑推荐图书
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from(select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from (select *from b_book b order by book_salecount asc ) )  
		where r<=2
--新品热卖
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from (select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from  (select *from b_book b order by up_date desc,book_salecount desc ) )  
		where r<=8
--自连接查询书籍种类表
      select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id
 		
--根据category_id 查找所有的一级种类书
select *from (
select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount ,d.*,rownum r                                
 		from b_category b inner join b_category c on b.category_id=c.father_id inner join b_book d on d.category_id =c.category_id where b.category_id=173)
 		where  r between 1 and 3
--根据category_id 查找所有的二级种类下的书
select *from(
select c.category_id cid,c.category_name cname,c.category_count ccount,b.*,rownum r
from b_category c inner join b_book b on c.category_id=b.category_id where c.category_id=353)
where r<=2
--根据一级类别id遍历出级别目录
	select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id 
 		where  b.category_id=175
 --根据二级类别遍历出级别目录
	select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id 
 		where  b.category_id=(select father_id from b_category d  where d.category_id=345)
--根据一级类别id查询总书籍书目
	
 select count(*)                               
 		from b_category b inner join b_category c on b.category_id=c.father_id inner join b_book d on d.category_id =c.category_id where b.category_id=173
 		
--根据二级类别id查询书籍总数目
	select count(*)                              
 		from b_category b inner join b_book c on b.category_id=c.category_id 
 		where  b.category_id=345
 		--查询某一类别的父id
select father_id from b_category where category_id=173


--用户表
create table b_user(
	user_id Integer primary key,
	user_email varchar2(30),
	user_nickname varchar2(30),
	user_password varchar2(30),
	user_state Integer
	)
	drop table  b_user
	select * from b_user
	delete from b_user where user_id =345
insert into b_user values(my_seq.nextval,'ayixitailu@163.com','倾耳倾听','123456',1)

 

select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id

 		
--创建收货地址表

drop table t_address
create table t_address(
	address_id Integer primary key,
	address_name varchar2(20),
	address_address varchar2(32),
	address_phone varchar2(32),
	address_statue Integer,
	user_id Integer references b_user(user_id)
	)
	
insert into t_address values(myseq.nextval,'张三','河南','123444',1,51);
insert into t_address values(myseq.nextval,'李四','河北','123555',0,51);
insert into t_address values(myseq.nextval,'王五','杭州','123666',0,51);
insert into t_address values(myseq.nextval,'赵六','苏州','123777',0,51);

select *from t_address
	
create table t_order(
	order_id Integer primary key,
	order_time Date,
	total_price number(20),
	order_status1 Integer, --0 未支付 1 已支付
	address_id Integer references t_address(address_id),
	user_id  Integer references b_user(user_id)
	)
	
select * from t_order 
delete t_order where order_id =365
(129,151,171,131,159,177)
	select myseq.nextval from dual
	
create table t_item(
	item_id Integer primary key,
	item_count Integer ,
	item_price number(20),
	book_id Integer references b_book(book_id),
	order_id Integer references t_order(order_id)
	)
	select * from t_item
	drop table t_item
select * from t_order o
inner join t_item i on  o.order_id=i.order_id
inner join b_book b on i.book_id=b.book_id

delete t_item where order_id=171
		
		select o.order_id ooid,o.order_time ootime,o.total_price otp ,o.order_status1 oos,
		    	i.item_id iid,
		    	i.item_count iic,i.item_price iip ,b.book_id bbi,b.book_name bbn,b.img bi
		    	 from t_order o
		inner join t_item i on  o.order_id=i.order_id
		inner join b_book b on i.book_id=b.book_id where o.user_id=51