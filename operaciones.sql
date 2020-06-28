CREATE DATABASE posts;

CREATE TABLE posts(
    id SERIAL,
    nombre_usuario VARCHAR(30),
    fecha_creacion DATE,
    contenido VARCHAR(500),
    descripcion VARCHAR(300));

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Pamela','2020/03/02', 'Comer en familia hace crecer niños sanos y felices y más seguros de si mismos','Comer en familia');

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Pamela','2020/04/02', 'El azúcar en exeso es dañino pero lo más adctivo es el bliss point','Soy adicto al azucar');

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('Carlos','2020/05/02', 'El teletrabajo en uarentena se hace pesado por que lso niños estan en la casa en vez de en el colegio','El teletrabajo');

ALTER TABLE posts ADD titulo VARCHAR(50);

UPDATE posts SET titulo='Comida y familia' WHERE id=1;
UPDATE posts SET titulo='Azúcar y adicción' WHERE id=2;
UPDATE posts SET titulo='Teletrabajo y cuarentena' WHERE id=3;

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Pedro','2020/06/02', 'Caminar bajo la lluvia es bueno para la salud','Caminar y la lluvia', 'La lluvia y la salud');

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Pedro','2020/06/04', 'Los bosques del sur son hermosos','Bosques del sur', 'Los Bosques del sur');

DELETE FROM posts WHERE nombre_usuario='Carlos';

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Carlos','2020/06/10', 'El teletrabajo en cuarentena se hace pesado por que lso niños estan en la casa en vez de en el colegio','El teletrabajo', 'La cuarentena y el teletrabajo');

ALTER TABLE posts ADD PRIMARY KEY(id);

CREATE TABLE comentarios(
    id_comentario SERIAL,
    id INT,
    fecha DATE,
    contenido_comentario VARCHAR(100),
    PRIMARY KEY (id_comentario),
    FOREIGN KEY (id) REFERENCES posts(id)
);

INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (1, '28/06/2020', 'fome');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (2, '28/06/2020 08:30', 'genial');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (6, '28/06/2020 09:00', 'mejorar');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (6, '28/06/2020 09:30', 'poner bibliografia');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (9, '28/06/2020 09:00', 'super bueno');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (9, '28/06/2020 10:00', 'corregir ortografia');

INSERT INTO posts(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('Margarita','2020/06/10', 'Los viajes prontamente se van a retomar','El viaje', 'Los viajes post cuarentena');

INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (10, '28/06/2020', 'corregir ortografia');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (10, '28/06/2020', 'agregar bibliografia');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (10, '28/06/2020', 'buena idea');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (10, '28/06/2020', 'alargar');
INSERT INTO comentarios(id, fecha, contenido_comentario) VALUES (10, '28/06/2020', 'incluir cita');
