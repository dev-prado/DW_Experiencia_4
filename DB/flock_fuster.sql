DROP DATABASE IF EXISTS flock_fuster;
CREATE DATABASE flock_fuster;
USE flock_fuster;

CREATE TABLE Peliculas (
	id INT UNSIGNED AUTO_INCREMENT,
	nombre VARCHAR(255) NOT NULL,
	sinopsis TEXT NOT NULL,
	fecha_estreno DATE NOT NULL,
	genero VARCHAR(255) NOT NULL,
	cantidad_stock INT UNSIGNED NOT NULL DEFAULT 0,
	cantidad_arredandas INT UNSIGNED NOT NULL DEFAULT 0,
	CONSTRAINT pk_peliculas PRIMARY KEY (id)
) Engine = InnoDB;

INSERT INTO
	`Peliculas` (`nombre`, `sinopsis`, `fecha_estreno`, `genero`, `cantidad_stock`, `cantidad_arredandas`)
VALUES
	('Gladiator', 'Máximo, General de las Legiones Romanas, es querido por todos, incluso por el César, Marco Aurelio, que antes de morir le elige a él como sucesor dejando de lado a su propio hijo, Cómodo. Cómodo movido por el odio prepara una conspiración contra Máximo, le condena a él y su familia a muerte. Máximo intentará salvar a su mujer y su hijo pero cuando llega es demasiado tarde, Cómodo se le ha adelantado. Máximo volverá a Roma como gladiador en busca de venganza.', '2000-05-01', 'Historico', '5', DEFAULT),
	('Ejecutivo Agresivo', 'Dave Buznik es un ejecutivo aparentemente muy pacífico. Sin embargo, durante un vuelo pierde el control a causa de un pequeño malentendido. Tras el incidente, el juez le impone una pena poco habitual: debe someterse a sesiones de terapia para controlar su ira. El responsable de la terapia es el excéntrico doctor Buddy Rydell. Cuando Buddy se extralimita en el ejercicio de sus funciones y se va a vivir a casa de su paciente, Dave supera su timidez y se enfrenta con él.', '2003-04-11', 'Comedia', '3', DEFAULT),
	('Harry Potter y la piedra filosofal', 'Harry Potter es un huérfano que vive con sus desagradables tíos, los Dursley, y su repelente primo Dudley. Se acerca su undécimo cumpleaños y tiene pocas esperanzas de recibir algún regalo, ya que nunca nadie se acuerda de él. Sin embargo, pocos días antes de su cumpleaños, una serie de misteriosas cartas dirigidas a él y escritas con una estridente tinta verde rompen la monotonía de su vida: Harry es un mago y sus padres también lo eran.', '2001-11-29', 'Fantasía', '2', DEFAULT),
	('Matrix', 'Thomas Anderson lleva una doble vida: por el día es programador en una importante empresa de software, y por la noche un hacker informático llamado Neo. Su vida no volverá a ser igual cuando unos misteriosos personajes le inviten a descubrir la pregunta que no le deja dormir, ¿Qué es Matrix?', '1999-03-30', 'Ciencia ficción', '3', DEFAULT) 
;
