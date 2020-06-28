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
INSERT INTO "Users" VALUES (123456,'adir abu',9959,'adir@gmail.com','adirAbu','de vinci');
INSERT INTO "Users" VALUES (123457,'revi tal',9960,'rev@gmail.com','revrev','rocket');
INSERT INTO "Users" VALUES (123458,'ofir zero',9977,'ofir@gmail.com','ofiruha','zero');
INSERT INTO "Users" VALUES (123459,'ofir pipi',9954,'pipi@gmail.com','ofirush','de vinci');
INSERT INTO "Users" VALUES (333213,'omer rimon',2619,'omer@neta.co.il','omeron','zero');
INSERT INTO "Users" VALUES (333412,'',NULL,NULL,NULL,NULL);
COMMIT;
