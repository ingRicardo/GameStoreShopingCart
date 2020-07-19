DROP TABLE IF EXISTS game;
CREATE TABLE public."game" (
	id SERIAL NOT NULL,
	"name" varchar NULL,
	"cost" decimal NULL,
	"category" varchar NULL,
	CONSTRAINT game_pk PRIMARY KEY (id)
); 
 INSERT INTO game(name,cost,category) values('GodOFWars',80.99,'Rol');
 INSERT INTO game(name,cost,category) values('FIFA20',78.99,'Sports');
 INSERT INTO game(name,cost,category) values('BATMAN',98,'Action');
 INSERT INTO game(name,cost,category) values('LAST OF 2',87,'Action');
 INSERT INTO game(name,cost,category) values('METAL GEAR',79.99,'Action');
 INSERT INTO game(name,cost,category) values('NEED FOR SPEED',90,'Action');
 INSERT INTO game(name,cost,category) values('SpiderMan',45.45,'Action');
 INSERT INTO game(name,cost,category) values('GHOST',95,'Action');  
 INSERT INTO game(name,cost,category) values('CALL OF DURRY',95.33,'Action');
 INSERT INTO game(name,cost,category) values('FINAL FANTASY',65,'Action');
 INSERT INTO game(name,cost,category) values('GRAN TURISMO',35,'Action');
   
DROP TABLE IF EXISTS user_tbl; 
CREATE TABLE public."user_tbl" (
	user_id SERIAL NOT NULL,
	"name" varchar NULL,
	"lastname" varchar NULL,
	"password" varchar NULL,
	"age" integer NULL,
	"email" varchar NULL,
	CONSTRAINT user_tbl_pk PRIMARY KEY (user_id)
);
 
 INSERT INTO user_tbl(name,lastname,password,age,email) values('riky','macias','pastrana8',90,'ramo2884@gmail.com');
 
 INSERT INTO user_tbl(name,lastname,password,age,email) values('rocco','macias','rocco',40,'ramo2884@gmail.com');