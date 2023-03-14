-- select *from book;
-- select *from publisher;
-- select *from book_publisher;
-- select *from authur;
-- select *from authur_book;
-- select *from li_administrator;
-- select *from reader;
-- select *from return_book;
-- select *from borrow;

-- create view book_and_publisher as 
-- select book.Book_id,book.Book_name,book.state,publisher.Publisher_name,publisher.address
-- from book,book_publisher,publisher
-- where book.Book_id = book_publisher.Book_id and book_publisher.Publisher_name = publisher.Publisher_name 
-- order by book.Book_id asc;
-- select *from book_and_publisher;

-- create view book_and_author as 
-- select book.Book_id,book.Book_name,book.state,authur.Authur_id,authur.Authur_name
-- from book,authur_book,authur
-- where book.Book_id = authur_book.Book_id and authur_book.Authur_id = authur.Authur_id  
-- order by book.Book_id asc;
-- select *from book_and_author;
delete from borrow where borrow.Borrow_Book_id='2' and borrow.Rorrow_Reader_id = '2012283' and borrow.Administrator_id = '14240220020226';
-- drop trigger if exists book_check_borrow; 
-- DELIMITER $$
-- create trigger book_check_borrow before update on return_book
--     for each row
-- 	begin 
--         update book set book.state = '在租' where return_book.Book_id = book.Book_id;
--     end $$;
-- DELIMITER ;

-- insert into borrow values ('2','2012283','14240220020226','2002-6-20');
-- select *from book;
-- select *from borrow;