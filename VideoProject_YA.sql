-----/*VIDEO TABLE*/-----
CREATE TABLE ya_videos(
vid_id SERIAL PRIMARY KEY,
title VARCHAR (250),
vid_duration FLOAT NOT NULL,
vid_link VARCHAR (250));

-----/*VIDEO TABLE DATA*/-----
INSERT INTO ya_videos 
VALUES(01,'4 SQL Tips For Data Scientists And Data Analysts',14.75, 'https://youtu.be/kSt9NV-qZkc')
(02,'Tips and Tricks for Using SQL Server Management Studio Effectively',57.22 , 'https://youtu.be/e476ZvVRuA0')
(03,'Efficiency Trick - Query Shortcuts - SQL in Sixty Seconds 143',2.55, 'https://youtu.be/DY2iTMzyxGw')
(04,'SQL BEST PRACTICES: 7 tips for junior data scientists and analysts (SQL tutorial for beginners EP#3)',24.05 , 'https://youtu.be/SrwB-nInhUA')
(05,'SQL Tips In 60 seconds',1.50 , 'https://sqltipsin60.com');

---/*VALIDATION*/---
SELECT * FROM ya_videos;
------------------------------------------------------
------/*REVIEW TABLE*/--------

CREATE TABLE ya_review(
reviewer_id SERIAL PRIMARY KEY,
reviewer_name VARCHAR (250),
vid_ID INT NOT NULL,
rating INT ,
review VARCHAR (300));

---//**REVIEW TABLE DATA**//-----
INSERT INTO ya_reviews
VALUES 
	(01, 'Bhishan P', 1, 3, 'Share database at the beginning not end')
	,(02, 'Manu', 1, 0, 'Better video structure')
	,(03, 'Scott Holiday', 2, 5, 'Brilliant!')
	,(04, 'Buddhist Dog', 2, 5, ' Great Video!')
	,(05, 'Anand',2, 5 ,'Great tips!')
	,(06, 'Betty F.', 2, 3, 'Too long!')
	,(07, 'Natascha', 3, 5, 'Good tip! Where can I find more videos?')
	,(08, 'Chris D.', 3, 4, 'Great Tip!')
	,(09, 'Harsha', 3, 3, 'Like this!')
	,(10, 'Dinesh', 3, 4, 'Good tip!')
	,(11, 'Paula', 4, 4, 'Great video! To the point!')
	,(12, 'Tony F', 4, 5, 'Great Video! Thank you for Article too!');
	
---/*VALIDATION*/---
SELECT * FROM ya_videos;
---------------------------------------------------------------	
----//**JOIN FOR DATA ON ALL TABLES***//-----
---//****Joins all data on both tables on the vid_id where there is a rating, ordered by highest rating****//----
SELECT * 
FROM ya_videos a
LEFT JOIN ya_reviews b ON a.vid_id = b.vid_id
WHERE rating IS NOT NULL
ORDER BY rating desc;