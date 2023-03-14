-- delete from book;
-- delete from authur;
-- delete from authur_book;
-- delete from publisher;
-- delete from book_publisher;
-- delete from li_administrator;
-- delete from reader;
-- delete from borrow;
-- delete from return_book;

insert into book values ('0001','深入理解计算机系统','在租');
insert into book values ('0002','深入理解计算机系统','已还');
insert into book values ('0003','深入理解计算机系统','在租');
insert into book values ('0004','深入理解计算机系统','在租');
insert into book values ('0005','深入理解计算机系统','已还');
insert into book values ('0006','计算机网络','在租');
insert into book values ('0007','计算机网络','在租');
insert into book values ('0008','计算机网络','在租');
insert into book values ('0009','计算机网络','已还');
insert into book values ('0010','计算机网络','已还');
insert into book values ('0011','计算机网络','已还');
insert into book values ('0012','计算机网络','已还');
insert into book values ('0013','数据库系统概念','在租');
insert into book values ('0014','数据库系统概念','已还');
insert into book values ('0015','数据库系统概念','在租');
insert into book values ('0016','数据库系统概念','已还');
insert into book values ('0017','数据库系统概念','在租');
insert into book values ('0018','GitHub从入门到精通','已还');
insert into book values ('0019','GitHub从入门到精通','在租');
insert into book values ('0020','GitHub从入门到精通','已还');
insert into book values ('0021','GitHub从入门到精通','在租');
insert into book values ('0022','GitHub从入门到精通','已还');
insert into book values ('0023','GitHub从入门到精通','已还');

insert into authur values ('Bryant,R.E.','10001');
insert into authur values ('谢希仁','10002');
insert into authur values ('Abraham Silberschatz','10003');
insert into authur values ('高见龙','10004');

insert into authur_book values ('10001','0001');
insert into authur_book values ('10001','0002');
insert into authur_book values ('10001','0003');
insert into authur_book values ('10001','0004');
insert into authur_book values ('10001','0005');
insert into authur_book values ('10002','0006');
insert into authur_book values ('10002','0007');
insert into authur_book values ('10002','0008');
insert into authur_book values ('10002','0009');
insert into authur_book values ('10002','0010');
insert into authur_book values ('10002','0011');
insert into authur_book values ('10002','0012');
insert into authur_book values ('10003','0013');
insert into authur_book values ('10003','0014');
insert into authur_book values ('10003','0015');
insert into authur_book values ('10003','0016');
insert into authur_book values ('10003','0017');
insert into authur_book values ('10004','0018');
insert into authur_book values ('10004','0019');
insert into authur_book values ('10004','0020');
insert into authur_book values ('10004','0021');
insert into authur_book values ('10004','0022');
insert into authur_book values ('10004','0023');

insert into publisher values ('机械工业出版社','北京市西城区百万庄大街22号');
insert into publisher values ('电子工业出版社','北京市海淀区万寿路288号华信大厦');
insert into publisher values ('北京大学出版社','北京市海淀西大街36号昊海楼213号');

insert into book_publisher values ('0001','机械工业出版社');
insert into book_publisher values ('0002','机械工业出版社');
insert into book_publisher values ('0003','机械工业出版社');
insert into book_publisher values ('0004','机械工业出版社');
insert into book_publisher values ('0005','机械工业出版社');
insert into book_publisher values ('0006','电子工业出版社');
insert into book_publisher values ('0007','电子工业出版社');
insert into book_publisher values ('0008','电子工业出版社');
insert into book_publisher values ('0009','电子工业出版社');
insert into book_publisher values ('00010','电子工业出版社');
insert into book_publisher values ('00011','电子工业出版社');
insert into book_publisher values ('00012','电子工业出版社');
insert into book_publisher values ('0013','机械工业出版社');
insert into book_publisher values ('0014','机械工业出版社');
insert into book_publisher values ('0015','机械工业出版社');
insert into book_publisher values ('0016','机械工业出版社');
insert into book_publisher values ('0017','机械工业出版社');
insert into book_publisher values ('0018','北京大学出版社');
insert into book_publisher values ('0019','北京大学出版社');
insert into book_publisher values ('0020','北京大学出版社');
insert into book_publisher values ('0021','北京大学出版社');
insert into book_publisher values ('0022','北京大学出版社');
insert into book_publisher values ('0023','北京大学出版社');

insert into li_administrator values ('14240220020226','李彦昊','15522081221','123456');
insert into li_administrator values ('14240220020227','邵天时','17720036688','123456');
insert into li_administrator values ('14240220020228','李朋澔','13132074602','123456');

insert into reader values ('2012283','曹烨','15222521023','女');
insert into reader values ('2012284','陈嘉林','18630950066','男');
insert into reader values ('2012285','王清铎','15222650049','男');
insert into reader values ('2012286','张睿','18602602895','男');
insert into reader values ('2012287','张子晔','18526513828','女');

insert into borrow values ('0001','2012283','14240220020226','2022-6-4');
insert into borrow values ('0003','2012283','14240220020227','2022-6-5');
insert into borrow values ('0004','2012283','14240220020228','2022-6-6');
insert into borrow values ('0006','2012284','14240220020226','2022-6-3');
insert into borrow values ('0007','2012285','14240220020227','2022-6-7');
insert into borrow values ('0008','2012285','14240220020228','2022-6-9');
insert into borrow values ('0013','2012285','14240220020226','2022-6-19');
insert into borrow values ('0015','2012286','14240220020227','2022-6-22');
insert into borrow values ('0017','2012286','14240220020228','2022-6-11');
insert into borrow values ('0019','2012287','14240220020226','2022-6-21');
insert into borrow values ('0021','2012287','14240220020227','2022-6-9');

insert into return_book values ('0002','2012287','14240220020226','2022-6-4');
insert into return_book values ('0005','2012287','14240220020227','2022-6-5');
insert into return_book values ('0009','2012287','14240220020228','2022-6-6');
insert into return_book values ('0010','2012286','14240220020226','2022-6-7');
insert into return_book values ('0011','2012286','14240220020227','2022-6-8');
insert into return_book values ('0012','2012286','14240220020228','2022-6-9');
insert into return_book values ('0014','2012285','14240220020226','2022-6-10');
insert into return_book values ('0016','2012285','14240220020227','2022-6-11');
insert into return_book values ('0018','2012284','14240220020228','2022-6-12');
insert into return_book values ('0020','2012284','14240220020226','2022-6-14');
insert into return_book values ('0022','2012283','14240220020227','2022-6-13');
insert into return_book values ('0023','2012283','14240220020228','2022-6-12');








