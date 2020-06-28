BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Labels" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Users" (
	"ID"	INTEGER NOT NULL,
	"Full name"	TEXT NOT NULL,
	"VOIP"	INTEGER,
	"Email"	TEXT,
	"UserName"	TEXT UNIQUE,
	"Team"	INTEGER,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Teams" (
	"ID"	INTEGER NOT NULL,
	"Full name"	TEXT NOT NULL,
	"Team leader"	INTEGER NOT NULL,
	"Mador"	TEXT NOT NULL,
	"Anaf"	TEXT NOT NULL,
	"Merkaz"	TEXT NOT NULL,
	"Yehida"	TEXT NOT NULL,
	FOREIGN KEY("Team leader") REFERENCES "Users"("ID"),
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "UsersLabels" (
	"UserID"	INTEGER NOT NULL,
	"LabelsID"	INTEGER NOT NULL,
	FOREIGN KEY("UserID") REFERENCES "Users"("ID"),
	FOREIGN KEY("LabelsID") REFERENCES "Labels"("ID"),
	PRIMARY KEY("UserID","LabelsID")
);
CREATE TABLE IF NOT EXISTS "PostsLabels" (
	"PostID"	INTEGER,
	"LabelsID"	INTEGER,
	FOREIGN KEY("LabelsID") REFERENCES "Labels"("ID"),
	FOREIGN KEY("PostID") REFERENCES "Posts"("ID"),
	PRIMARY KEY("PostID","LabelsID")
);
CREATE TABLE IF NOT EXISTS "Posts" (
	"ID"	INTEGER NOT NULL,
	"UserID"	INTEGER NOT NULL,
	"Title"	TEXT NOT NULL,
	"Date"	TEXT NOT NULL,
	"Views"	INTEGER,
	"Likes"	INTEGER,
	"Unlikes"	INTEGER,
	"Description"	TEXT,
	"Picture"	BLOB,
	FOREIGN KEY("UserID") REFERENCES "Users"("ID"),
	PRIMARY KEY("ID")
);
INSERT INTO "Labels" VALUES (1,'110');
INSERT INTO "Labels" VALUES (2,'c#');
INSERT INTO "Labels" VALUES (3,'screws');
INSERT INTO "Labels" VALUES (4,'Welding');
INSERT INTO "Labels" VALUES (5,'electrical power');
INSERT INTO "Labels" VALUES (6,'190');
INSERT INTO "Labels" VALUES (7,'130');
INSERT INTO "Labels" VALUES (8,'150');
INSERT INTO "Labels" VALUES (9,'160');
INSERT INTO "Labels" VALUES (10,'python');
INSERT INTO "Labels" VALUES (11,'SQL');
INSERT INTO "Labels" VALUES (12,'FLOW');
INSERT INTO "Labels" VALUES (13,'Communication');
INSERT INTO "Labels" VALUES (14,'RF');
INSERT INTO "Labels" VALUES (15,'Machines');
INSERT INTO "Labels" VALUES (16,'DB');
INSERT INTO "Labels" VALUES (17,'Weather');
INSERT INTO "Labels" VALUES (18,'C++');
INSERT INTO "Labels" VALUES (19,'JAVA');
INSERT INTO "Labels" VALUES (20,'Land types');
INSERT INTO "Users" VALUES (123456,'adir abu',9959,'adir@gmail.com','adirAbu','de vinci');
INSERT INTO "Users" VALUES (123457,'revi tal',9960,'rev@gmail.com','revrev','rocket');
INSERT INTO "Users" VALUES (123458,'ofir sha',9977,'ofir@gmail.com','ofiruha','zero');
INSERT INTO "Users" VALUES (123459,'ofir shtern
',9954,'pipi@gmail.com','ofirush','de vinci');
INSERT INTO "Users" VALUES (333213,'omer rimon',2619,'omer@neta.co.il','omeron','zero');
INSERT INTO "Users" VALUES (333413,'Maya barak
',2332,'maya@gmail.com','Mayush
','rocket');
INSERT INTO "Users" VALUES (333414,'gila glasser',2324,'gila@gmail.com','gilgil','buba');
INSERT INTO "Users" VALUES (333415,'david ber
',3234,'david@gmail.com','davdav
','toy');
INSERT INTO "Users" VALUES (333416,'gilad ner',5446,'gilad@gmail.com','giladi','game');
INSERT INTO "Teams" VALUES (1,'rocket',333413,'buba','game','7143','8200');
INSERT INTO "Teams" VALUES (2,'de vinci',123456,'buba','game','7143','8200');
INSERT INTO "Teams" VALUES (3,'zero',333213,'toy','game','7143','8200');
INSERT INTO "UsersLabels" VALUES (123459,3);
INSERT INTO "UsersLabels" VALUES (123459,4);
INSERT INTO "UsersLabels" VALUES (123459,5);
INSERT INTO "UsersLabels" VALUES (123456,19);
INSERT INTO "UsersLabels" VALUES (123456,18);
INSERT INTO "UsersLabels" VALUES (123456,2);
INSERT INTO "UsersLabels" VALUES (333413,11);
INSERT INTO "UsersLabels" VALUES (333413,12);
INSERT INTO "UsersLabels" VALUES (333414,1);
INSERT INTO "UsersLabels" VALUES (123457,7);
INSERT INTO "UsersLabels" VALUES (123457,8);
INSERT INTO "UsersLabels" VALUES (123457,11);
INSERT INTO "UsersLabels" VALUES (333415,6);
INSERT INTO "UsersLabels" VALUES (333213,15);
INSERT INTO "UsersLabels" VALUES (333213,20);
INSERT INTO "UsersLabels" VALUES (333213,17);
INSERT INTO "UsersLabels" VALUES (123459,13);
INSERT INTO "UsersLabels" VALUES (123459,14);
COMMIT;
