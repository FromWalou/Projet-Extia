CREATE DATABASE IF NOT EXISTS myCoopt
	DEFAULT CHARSET utf8mb4;

CREATE TABLE IF NOT EXISTS myCoopt.role (
	ID SMALLINT  NOT NULL AUTO_INCREMENT,
	Description VARCHAR(50),
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS myCoopt.user (
	ID SMALLINT  NOT NULL AUTO_INCREMENT,
	Login VARCHAR(8),
	MDP VARCHAR(255),
	Nom VARCHAR(25),
	Prenom VARCHAR(25),
	Agence VARCHAR(40),
	Mail VARCHAR(30),
	Role SMALLINT,
	PRIMARY KEY (ID),
	FOREIGN KEY (Role) REFERENCES myCoopt.role(ID)
);

CREATE TABLE IF NOT EXISTS myCoopt.coopte (
	ID SMALLINT,
	Nom VARCHAR(25),
	Prenom VARCHAR(25),
	Metier VARCHAR(30),
	Statut VARCHAR(20),
	CV VARCHAR(60),
	PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS myCoopt.user_coopte (
	ID_user SMALLINT,
	ID_coopte SMALLINT,
	FOREIGN KEY (ID_user) REFERENCES myCoopt.user(ID),
	FOREIGN KEY (ID_coopte) REFERENCES myCoopt.coopte(ID)
);

INSERT INTO myCoopt.role (Description)
VALUES
	("Admin"),
	("RH"),
	("Cooptant");

INSERT INTO myCoopt.user (Login, MDP, Nom, Prenom, Agence, Mail, Role)
VALUES
	("brocha_a", "BurSYLqJ0BxxI","Brochard", "Alexandre", "Extia-Paris", "brochard.alexandre@gmail.com", 1),
	("hruf_s", "BuAEhPgQX/UPw","Hruf", "Samir", "Extia-Nantes", "Hruf.Samir@gmail.com", 2),
	("agario_f", "Bu7TYqSg/6q3U", "Agario", "Flavien", "Extia-Lille", "agario.flavien@gmail.com", 2),
	("phile_t", "Bu6UfLM88RjNE", "Phile", "Théo", "Extia-BX", "phile.théo@gmail.com", 2),
	("brotto_b", "BuQUpR4EzdP/g", "Brotto", "Bruno", "Extia-STWZ", "brotto.bruno@gmail.com", 2),
	("labego_s", "Buo6TJIXszTwo", "Labegorre", "Sébastien", "Extia-Lyon", "labegorre.sébastien@gmail.com", 3),
	("cozler_a", "BuZ4Tq9.LG.hQ", "Cozler", "Agathe", "Extia-Paris", "cozler.agathe@gmail.com", 3),
	("layach_y", "cddc6f4fc17114de5177f460ac0c3479", "Layachi", "Yassine", "Extia-Paris", "layachi.yassine@gmail.com", 3),
	("rinaz_s", "312f710a55ce8507b92c3e354283eda8", "Rinaz", "Samir", "Extia-Metz", "rinaz.samir@gmail.com", 3),
	("rinaz_a", "f18e82957c350c93da3de5211e7a803c", "Rinaz", "Selim", "Extia-BX", "rinaz.selim@gmail.com", 3),
	("do_r", "a8496929d8f2ff2fefa36b17838a8937", "Do", "Rémi", "Extia-Bordeaux", "do.rémi@gmail.com", 3),
	("ness_j", "3e3ffe6d06a1264a23fa9fdc70929ee4", "Ness", "Jordan", "Extia-USA", "ness.jordan@gmail.com", 3),
	("tambad_s", "647a56ba5bbbcaa86d986f1d15899d6f", "Tambadou", "Souleymane", "Extia-Lyon", "tambadou.souleymane@gmail.com", 3),
	("driss_m", "3e50291e8eb34b99c9f62ded6d9439a3", "Driss", "Matthieu", "Extia-Nantes", "driss.matthieu@gmail.com", 3),
	("cocard_a", "f5b49ad23e29434db4c7baded4662808", "Cocard", "Alexis", "Extia-Paris", "cocard.alexis@gmail.com", 3);