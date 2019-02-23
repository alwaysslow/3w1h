
--�鼮��Ŀ��
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
--���һ�����
insert into b_category values(myseq.nextval,'С˵',50,null);
insert into b_category values(myseq.nextval,'�ഺ',100,null);
insert into b_category values(myseq.nextval,'�������',60,null);
insert into b_category values(myseq.nextval,'����',50,null);
insert into b_category values(myseq.nextval,'�ٶ�',70,null);
insert into b_category values(myseq.nextval,'����',80,null);
insert into b_category values(myseq.nextval,'�����',30,null);
--����������
insert into b_category values(myseq.nextval,'����С˵',10,171);
insert into b_category values(myseq.nextval,'���ִ�С˵',10,171);
insert into b_category values(myseq.nextval,'�ŵ�С˵',10,171);
insert into b_category values(myseq.nextval,'�Ĵ�����',10,171);
insert into b_category values(myseq.nextval,'��������',10,171);


insert into b_category values(myseq.nextval,'У԰',10,173);
insert into b_category values(myseq.nextval,'����/���',20,173);
insert into b_category values(myseq.nextval,'����/�ɳ�',15,173);
insert into b_category values(myseq.nextval,'����',25,173);
insert into b_category values(myseq.nextval,'ԭ��',30,173);




insert into b_category values(myseq.nextval,'����',5,175);
insert into b_category values(myseq.nextval,'����',10,175);
insert into b_category values(myseq.nextval,'����',15,175);
insert into b_category values(myseq.nextval,'��ֳѧ',12,175);
insert into b_category values(myseq.nextval,'��ѧ',9,175);
insert into b_category values(myseq.nextval,'��ʷ',9,175);

insert into b_category values(myseq.nextval,'����ѧ',10,177);
insert into b_category values(myseq.nextval,'ս�Թ���',10,177);
insert into b_category values(myseq.nextval,'�г�Ӫ��',10,177);
insert into b_category values(myseq.nextval,'��ҵʷ��',10,177);
insert into b_category values(myseq.nextval,'��������',10,177);

insert into b_category values(myseq.nextval,'0-2��',10,179);
insert into b_category values(myseq.nextval,'7-10��',10,179);
insert into b_category values(myseq.nextval,'11-14��',10,179);
insert into b_category values(myseq.nextval,'��ͯ��ѧ',40,179);

insert into b_category values(myseq.nextval,'Ӣ��',20,181);
insert into b_category values(myseq.nextval,'����',20,181);
insert into b_category values(myseq.nextval,'����',20,181);
insert into b_category values(myseq.nextval,'����',10,181);
insert into b_category values(myseq.nextval,'����',10,181);

insert into b_category values(myseq.nextval,'���������',10,183);
insert into b_category values(myseq.nextval,'���ݿ�',5,183);
insert into b_category values(myseq.nextval,'�������',5,183);
insert into b_category values(myseq.nextval,'�˹�����',5,183);
insert into b_category values(myseq.nextval,'���������',5,183);

--�����鼮������Ϣ��
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
 
 
--��ѯĳһ����ľ�����Ϣ
select  c.category_id cid,c.category_name cname ,b.*,d.category_id did ,d.category_name  dname
from b_book b inner join b_category c on b.category_id =c.category_id inner join b_category d on c.father_id=d.category_id
where b.book_id=100 

delete b_book where book_id=54
insert into b_book values(my_seq.nextval,'���ߵ�С����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'1.jpg','����Ҳ߯�ÿ��˰�',123,'325');
insert into b_book values(my_seq.nextval,'ͯ�����˼��ҵĴ�ѧ','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'2.jpg','����Ҳ߯�ÿ��˰�',124,'327');
insert into b_book values(my_seq.nextval,'��ˮ������','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'3.jpg','����Ҳ߯�ÿ��˰�',125,'329');
insert into b_book values(my_seq.nextval,'С����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'4.jpg','����Ҳ߯�ÿ��˰�',126,'331');
insert into b_book values(my_seq.nextval,'˫����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'5.jpg','����Ҳ߯�ÿ��˰�',127,'333');
insert into b_book values(my_seq.nextval,'jane eyre','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'6.jpg','����Ҳ߯�ÿ��˰�',128,'335');
insert into b_book values(my_seq.nextval,'java��ҵ��ѵ�̳�','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'7.jpg','����Ҳ߯�ÿ��˰�',129,'337');

insert into b_book values(my_seq.nextval,'�軨Ů','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'8.jpg','����Ҳ߯�ÿ��˰�',133,'339');
insert into b_book values(my_seq.nextval,'ѩ��ʫѡ','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'9.jpg','����Ҳ߯�ÿ��˰�',143,'341');
insert into b_book values(my_seq.nextval,'���˼�','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'10.jpg','����Ҳ߯�ÿ��˰�',153,'343');

insert into b_book values(my_seq.nextval,'Ʈ','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'11.jpg','����Ҳ߯�ÿ��˰�',223,'345');
insert into b_book values(my_seq.nextval,'�ؼ���������','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'12.jpg','����Ҳ߯�ÿ��˰�',233,'347');
insert into b_book values(my_seq.nextval,'��������һ·ͬ��','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'13.jpg','����Ҳ߯�ÿ��˰�',243,'349');
insert into b_book values(my_seq.nextval,'������ƫ��','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'14.jpg','����Ҳ߯�ÿ��˰�',253,'351');
insert into b_book values(my_seq.nextval,'ͯ��','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'15.jpg','����Ҳ߯�ÿ��˰�',263,'353');;
insert into b_book values(my_seq.nextval,'һ��İ��Ů�˵�����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'16.jpg','����Ҳ߯�ÿ��˰�',283,'355');

insert into b_book values(my_seq.nextval,'³��ѷƯ����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'17.jpg','����Ҳ߯�ÿ��˰�',293,'353');
insert into b_book values(my_seq.nextval,'����˵','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'18.jpg','����Ҳ߯�ÿ��˰�',333,'351');
insert into b_book values(my_seq.nextval,'���������','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'19.jpg','����Ҳ߯�ÿ��˰�',334,'349');
insert into b_book values(my_seq.nextval,'��������С��','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'20.jpg','����Ҳ߯�ÿ��˰�',500,'347');
insert into b_book values(my_seq.nextval,'�������','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'21.jpg','����Ҳ߯�ÿ��˰�',33,'345');
insert into b_book values(my_seq.nextval,'servlet��jsp�ĺ��ı��','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'22.jpg','����Ҳ߯�ÿ��˰�',13,'343');
insert into b_book values(my_seq.nextval,'®������','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'23.jpg','����Ҳ߯�ÿ��˰�',12,'341');
insert into b_book values(my_seq.nextval,'�ſڵ�Ұ����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'24.jpg','����Ҳ߯�ÿ��˰�',120,'339');
insert into b_book values(my_seq.nextval,'���ֿ�����','�Ƽ�����','��֪�������������',sysdate,33.9,21.8,'25.jpg','����Ҳ߯�ÿ��˰�',10,'337');
--����ͼ��
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from(select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from (select *from b_book b order by book_salecount desc) )  
		where r<=4
--�����ϼ�ͼ��
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from (select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from  (select *from b_book b order by up_date desc) )  
		where r<=4
--�༭�Ƽ�ͼ��
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from(select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from (select *from b_book b order by book_salecount asc ) )  
		where r<=2
--��Ʒ����
select book_id,book_name,author,press,up_date,book_price,dang_price,img,description description1,book_salecount,r 
     	from (select book_id,book_name,author,press,up_date,book_price,dang_price,img,description,book_salecount,rownum r
		from  (select *from b_book b order by up_date desc,book_salecount desc ) )  
		where r<=8
--�����Ӳ�ѯ�鼮�����
      select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id
 		
--����category_id �������е�һ��������
select *from (
select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount ,d.*,rownum r                                
 		from b_category b inner join b_category c on b.category_id=c.father_id inner join b_book d on d.category_id =c.category_id where b.category_id=173)
 		where  r between 1 and 3
--����category_id �������еĶ��������µ���
select *from(
select c.category_id cid,c.category_name cname,c.category_count ccount,b.*,rownum r
from b_category c inner join b_book b on c.category_id=b.category_id where c.category_id=353)
where r<=2
--����һ�����id����������Ŀ¼
	select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id 
 		where  b.category_id=175
 --���ݶ���������������Ŀ¼
	select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id 
 		where  b.category_id=(select father_id from b_category d  where d.category_id=345)
--����һ�����id��ѯ���鼮��Ŀ
	
 select count(*)                               
 		from b_category b inner join b_category c on b.category_id=c.father_id inner join b_book d on d.category_id =c.category_id where b.category_id=173
 		
--���ݶ������id��ѯ�鼮����Ŀ
	select count(*)                              
 		from b_category b inner join b_book c on b.category_id=c.category_id 
 		where  b.category_id=345
 		--��ѯĳһ���ĸ�id
select father_id from b_category where category_id=173


--�û���
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
insert into b_user values(my_seq.nextval,'ayixitailu@163.com','�������','123456',1)

 

select b.category_id bid,b.category_name bname,b.category_count bcount,
      c.category_id cid,c.category_name cname,c.category_count ccount                                 
 		from b_category b inner join b_category c on b.category_id=c.father_id

 		
--�����ջ���ַ��

drop table t_address
create table t_address(
	address_id Integer primary key,
	address_name varchar2(20),
	address_address varchar2(32),
	address_phone varchar2(32),
	address_statue Integer,
	user_id Integer references b_user(user_id)
	)
	
insert into t_address values(myseq.nextval,'����','����','123444',1,51);
insert into t_address values(myseq.nextval,'����','�ӱ�','123555',0,51);
insert into t_address values(myseq.nextval,'����','����','123666',0,51);
insert into t_address values(myseq.nextval,'����','����','123777',0,51);

select *from t_address
	
create table t_order(
	order_id Integer primary key,
	order_time Date,
	total_price number(20),
	order_status1 Integer, --0 δ֧�� 1 ��֧��
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