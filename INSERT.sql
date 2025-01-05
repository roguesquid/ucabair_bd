--TABLA LUGAR

-- Estados de Venezuela
INSERT INTO Lugar (
	lugar_nombre, lugar_tipo, lugar_fk_lugar)
	VALUES
	('Amazonas', 'estado', null),
	('Anzoátegui', 'estado', null),
	('Apure', 'estado', null),
	('Aragua', 'estado', null),
	('Barinas', 'estado', null),
	('Bolívar', 'estado', null),
	('Carabobo', 'estado', null),
	('Cojedes', 'estado', null),
	('Delta Amacuro', 'estado', null),
        ('Distrito Capital', 'estado', null),
	('Falcón', 'estado', null),
	('Guárico', 'estado', null),
	('Lara', 'estado', null),
        ('La Guaira', 'estado', null),
	('Mérida', 'estado', null),
	('Miranda', 'estado', null),
	('Monagas', 'estado', null),
	('Nueva Esparta', 'estado', null),
	('Portuguesa', 'estado', null),
	('Sucre', 'estado', null),
	('Táchira', 'estado', null),
	('Trujillo', 'estado', null),
	('Yaracuy', 'estado', null),
	('Zulia', 'estado', null);

--Municipios del Estado Amazonas
INSERT INTO Lugar (
	lugar_nombre, lugar_tipo, lugar_fk_lugar)
	VALUES
	('Alto Orinoco', 'municipio', 1), 
	('Atabapo', 'municipio', 1),
	('Atures', 'municipio', 1),
	('Autana', 'municipio', 1),
	('Manapiare', 'municipio', 1),
	('Maroa', 'municipio', 1),
	('Río Negro', 'municipio', 1);

-- Municipios del Estado Anzoátegui
INSERT INTO Lugar (
	lugar_nombre, lugar_tipo, lugar_fk_lugar)
	VALUES
	('Anaco', 'municipio', 2),
	('Aragua', 'municipio', 2),
	('Bolívar', 'municipio', 2),
	('Bruzual', 'municipio', 2), 
	('Cajigal', 'municipio', 2),
	('Carvajal', 'municipio', 2),
	('Freites', 'municipio', 2),
	('Guanipa', 'municipio', 2),
	('Guanta', 'municipio', 2),
	('Independencia', 'municipio', 2),
	('Libertad', 'municipio', 2),
	('Sir Arthur McGregor', 'municipio', 2),
	('Miranda', 'municipio', 2),
	('Monagas', 'municipio', 2),
	('Peñalver', 'municipio', 2),
	('Píritu', 'municipio', 2),
	('San Juan de Capistrano', 'municipio', 2),
	('Santa Ana', 'municipio', 2),
	('Simón Rodríguez', 'municipio', 2),
	('Sotillo', 'municipio', 2),
	('Turístico Diego Bautista Urbaneja', 'municipio', 2);

-- Municipios del Estado Apure
INSERT INTO Lugar (
	lugar_nombre, lugar_tipo, lugar_fk_lugar)
	VALUES
	('Achaguas', 'municipio', 3),
	('Biruaca', 'municipio', 3),
	('Pedro Camejo', 'municipio', 3),
	('Muñoz', 'municipio', 3),
	('Páez', 'municipio', 3),
	('Rómulo Gallegos', 'municipio', 3),
	('San Fernando', 'municipio', 3);

-- Municipios del Estado Aragua
INSERT INTO Lugar (
    lugar_nombre, lugar_tipo, lugar_fk_lugar)
    VALUES
    ('Alcántara', 'municipio', 4),
    ('Bolívar', 'municipio', 4),
    ('Camatagua', 'municipio', 4),
    ('Maracay', 'municipio', 4),
    ('Iragorry', 'municipio', 4),
    ('Lamas', 'municipio', 4),
    ('Libertador', 'municipio', 4),
    ('Mariño', 'municipio', 4),
    ('Michelena', 'municipio', 4),
    ('Ocumare de la Costa de Oro', 'municipio', 4),
    ('Revenga', 'municipio', 4),
    ('Ribas', 'municipio', 4),  
    ('San Casimiro', 'municipio', 4),
    ('San Sebastián', 'municipio', 4),
    ('Sucre', 'municipio', 4),
    ('Tovar', 'municipio', 4),
    ('Urdaneta', 'municipio', 4),
    ('Zamora', 'municipio', 4);

-- Municipios del Estado Barinas
INSERT INTO Lugar (
    lugar_nombre, lugar_tipo, lugar_fk_lugar)
    VALUES
    ('Alberto Arvelo Torrealba', 'municipio', 5),
    ('Andrés Eloy Blanco', 'municipio', 5),
    ('Antonio José de Sucre', 'municipio', 5),
    ('Arismendi', 'municipio', 5),
    ('Barinas', 'municipio', 5),
    ('Bolívar', 'municipio', 5),
    ('Cruz Paredes', 'municipio', 5),
    ('Ezequiel Zamora', 'municipio', 5),
    ('Obispos', 'municipio', 5),
    ('Pedraza', 'municipio', 5),
    ('Rojas', 'municipio', 5),
    ('Sosa', 'municipio', 5);

-- Municipios del Estado Bolívar
INSERT INTO Lugar (
    lugar_nombre, lugar_tipo, lugar_fk_lugar)
    VALUES
    ('Angostura', 'municipio', 6),
    ('Angostura del Orinoco', 'municipio', 6),
    ('Caroní', 'municipio', 6),
    ('Cedeño', 'municipio', 6),
    ('Chien', 'municipio', 6),
    ('El Callao', 'municipio', 6),
    ('Gran Sabana', 'municipio', 6),
    ('Piar', 'municipio', 6),
    ('Roscio', 'municipio', 6),
    ('Sifontes', 'municipio', 6),
    ('Sucre', 'municipio', 6);

-- Municipios del Estado Carabobo
INSERT INTO Lugar  (
    lugar_nombre, lugar_tipo, lugar_fk_lugar)
    VALUES
    ('Bejuma', 'municipio', 7),
    ('Carlos Arvelo', 'municipio', 7),
    ('Diego Ibarra', 'municipio', 7),
    ('Guacara', 'municipio', 7),
    ('Juan José Mora', 'municipio', 7),
    ('Libertador', 'municipio', 7),
    ('Los Guayos', 'municipio', 7),
    ('Miranda', 'municipio', 7),
    ('Montalbán', 'municipio', 7),
    ('Naguanagua', 'municipio', 7),
    ('Puerto Cabello', 'municipio', 7),
    ('San Diego', 'municipio', 7),
    ('San Joaquín', 'municipio', 7),
    ('Valencia', 'municipio', 7);

-- Municipios del Estado Cojedes
INSERT INTO Lugar (
    lugar_nombre, lugar_tipo, lugar_fk_lugar)
    VALUES
    ('Anzoátegui', 'municipio', 8),
    ('San Carlos', 'municipio', 8),
    ('Girardot', 'municipio', 8),
    ('Lima Blanco', 'municipio', 8),
    ('Pao de San Juan Bautista', 'municipio', 8),
    ('Ricaurte', 'municipio', 8),
    ('Rómulo Gallegos', 'municipio', 8),
    ('Tinaco', 'municipio', 8),
    ('Tinaquillo', 'municipio', 8);

-- Municipios del Estado Delta Amacuro
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Antonio Díaz', 'municipio', 9),
  ('Casacoima', 'municipio', 9),
  ('Pedernales', 'municipio', 9),
  ('Tucupita', 'municipio', 9);

-- Municipios del Distrito Capital
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Caracas', 'municipio', 10);

-- Municipios del Estado Falcón
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Acosta', 'municipio', 11),
  ('Bolívar', 'municipio', 11),
  ('Buchivacoa', 'municipio', 11),
  ('Carirubana', 'municipio', 11),
  ('Colina', 'municipio', 11),
  ('Dabajuro', 'municipio', 11),
  ('Democracia', 'municipio', 11),
  ('Falcón', 'municipio', 11),
  ('Federación', 'municipio', 11),
  ('Iturriza', 'municipio', 11),
  ('Jacura', 'municipio', 11),
  ('Los Taques', 'municipio', 11),
  ('Manaure', 'municipio', 11),
  ('Mauroa', 'municipio', 11),
  ('Miranda', 'municipio', 11),
  ('Palmasola', 'municipio', 11),
  ('Petit', 'municipio', 11),
  ('Píritu', 'municipio', 11),
  ('San Francisco', 'municipio', 11),
  ('Sucre', 'municipio', 11),
  ('Silva', 'municipio', 11),
  ('Tocópero', 'municipio', 11),
  ('Unión', 'municipio', 11),
  ('Urumaco', 'municipio', 11),
  ('Zamora', 'municipio', 11);

-- Municipios del Estado Guárico
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Camaguán', 'municipio', 12),
  ('Chaguaramas', 'municipio', 12),
  ('El Socorro', 'municipio', 12),
  ('Francisco de Miranda', 'municipio', 12),
  ('José Félix Ribas', 'municipio', 12),
  ('José Tadeo Monagas', 'municipio', 12),
  ('Juan Germán Roscio', 'municipio', 12),
  ('Juan José Rondón', 'municipio', 12),
  ('Julián Mellado', 'municipio', 12),
  ('Leonardo Infante', 'municipio', 12),
  ('Ortiz', 'municipio', 12),
  ('San Gerónimo de Guayabal', 'municipio', 12),
  ('San José de Guaribe', 'municipio', 12),
  ('Santa María de Ipire', 'municipio', 12),
  ('Zaraza', 'municipio', 12);

-- Municipios del Estado Lara
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 13),
  ('Crespo', 'municipio', 13),
  ('Iribarren', 'municipio', 13),
  ('Jiménez', 'municipio', 13),
  ('Morán', 'municipio', 13),
  ('Palavecino', 'municipio', 13),
  ('Simón Planas', 'municipio', 13),
  ('Torres', 'municipio', 13),
  ('Urdaneta', 'municipio', 13);

-- Municipios del Estado La Guaira
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Vargas', 'municipio', 14);

-- Municipios del Estado Mérida
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Alberto Adriani', 'municipio', 15),
  ('Andrés Bello', 'municipio', 15),
  ('Antonio Pinto Salinas', 'municipio', 15),
  ('Aricagua', 'municipio', 15),
  ('Arzobispo Chacón', 'municipio', 15),
  ('Campo Elías', 'municipio', 15),
  ('Caracciolo Parra Olmedo', 'municipio', 15),
  ('Cardenal Quintero', 'municipio', 15),
  ('Guaraque', 'municipio', 15),
  ('Julio César Salas', 'municipio', 15),
  ('Justo Briceño', 'municipio', 15),
  ('Libertador', 'municipio', 15),
  ('Miranda', 'municipio', 15),
  ('Obispo Ramos de Lora', 'municipio', 15),
  ('Padre Noguera', 'municipio', 15),
  ('Pueblo Llano', 'municipio', 15),
  ('Rangel', 'municipio', 15),
  ('Rivas Dávila', 'municipio', 15),
  ('Santos Marquina', 'municipio', 15),
  ('Sucre', 'municipio', 15),
  ('Tovar', 'municipio', 15),
  ('Tulio Febres Cordero', 'municipio', 15),
  ('Zea', 'municipio', 15);

-- Municipios del Estado Miranda
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Acevedo', 'municipio', 16),
  ('Andrés Bello', 'municipio', 16),
  ('Baruta', 'municipio', 16),
  ('Bolívar', 'municipio', 16),
  ('Brión', 'municipio', 16),
  ('Buroz', 'municipio', 16),
  ('Carrizal', 'municipio', 16),
  ('Chacao', 'municipio', 16),
  ('Cristóbal Rojas', 'municipio', 16),
  ('El Hatillo', 'municipio', 16),
  ('Guaicaipuro', 'municipio', 16),
  ('Gual', 'municipio', 16),
  ('Independencia', 'municipio', 16),
  ('Lander', 'municipio', 16),
  ('Los Salias', 'municipio', 16),
  ('Páez', 'municipio', 16),
  ('Paz Castillo', 'municipio', 16),
  ('Plaza', 'municipio', 16),
  ('Sucre', 'municipio', 16),
  ('Urdaneta', 'municipio', 16),
  ('Zamora', 'municipio', 16);

-- Municipios del Estado Monagas
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Acosta', 'municipio', 17),
  ('Aguasay', 'municipio', 17),
  ('Bolívar', 'municipio', 17),
  ('Caripe', 'municipio', 17),
  ('Cedeño', 'municipio', 17),
  ('Libertador', 'municipio', 17),
  ('Maturín', 'municipio', 17),
  ('Piar', 'municipio', 17),
  ('Punceres', 'municipio', 17),
  ('Santa Bárbara', 'municipio', 17),
  ('Sotillo', 'municipio', 17),
  ('Uracoa', 'municipio', 17),
  ('Zamora', 'municipio', 17);

-- Municipios del Estado Nueva Esparta
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Antolín del Campo', 'municipio', 18),
  ('Antonio Díaz', 'municipio', 18),
  ('Arismendi', 'municipio', 18),
  ('García', 'municipio', 18),
  ('Gómez', 'municipio', 18),
  ('Macanao', 'municipio', 18),
  ('Maneiro', 'municipio', 18),
  ('Marcano', 'municipio', 18),
  ('Mariño', 'municipio', 18),
  ('Tubores', 'municipio', 18),
  ('Villalba', 'municipio', 18);

-- Municipios del Estado Portuguesa
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Agua Blanca', 'municipio', 19),
  ('Araure', 'municipio', 19),
  ('Esteller', 'municipio', 19),
  ('Guanare', 'municipio', 19),
  ('Guanarito', 'municipio', 19),
  ('José Vicente de Unda', 'municipio', 19),
  ('Ospino', 'municipio', 19),
  ('Páez', 'municipio', 19),
  ('Papelón', 'municipio', 19),
  ('San Genaro de Boconoíto', 'municipio', 19),
  ('San Rafael de Onoto', 'municipio', 19),
  ('Santa Rosalía', 'municipio', 19),
  ('Sucre', 'municipio', 19),
  ('Turén', 'municipio', 19);

-- Municipios del Estado Sucre
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 20),
  ('Andrés Mata', 'municipio', 20),
  ('Arismendi', 'municipio', 20),
  ('Benítez', 'municipio', 20),
  ('Bermúdez', 'municipio', 20),
  ('Bolívar', 'municipio', 20),
  ('Cajigal', 'municipio', 20),
  ('Cruz Salmerón Acosta', 'municipio', 20),
  ('Libertador', 'municipio', 20),
  ('Mariño', 'municipio', 20),
  ('Mejía', 'municipio', 20),
  ('Montes', 'municipio', 20),
  ('Ribero', 'municipio', 20),
  ('Sucre', 'municipio', 20),
  ('Valdez', 'municipio', 20);

-- Municipios del Estado Táchira
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar) 
VALUES
  ('Andrés Bello', 'municipio', 21),
  ('Antonio Rómulo Costa', 'municipio', 21),
  ('Ayacucho', 'municipio', 21),
  ('Bolívar', 'municipio', 21),
  ('Cárdenas', 'municipio', 21),
  ('Córdoba', 'municipio', 21),
  ('Fernández', 'municipio', 21),
  ('Francisco de Miranda', 'municipio', 21),
  ('García de Hevia', 'municipio', 21),
  ('Guásimos', 'municipio', 21),
  ('Independencia', 'municipio', 21),
  ('Jáuregui', 'municipio', 21),
  ('José María Vargas', 'municipio', 21),
  ('Junín', 'municipio', 21),
  ('Libertad', 'municipio', 21),
  ('Libertador', 'municipio', 21),
  ('Lobatera', 'municipio', 21),
  ('Michelena', 'municipio', 21),
  ('Panamericano', 'municipio', 21),
  ('Pedro María Ureña', 'municipio', 21),
  ('Rafael Urdaneta', 'municipio', 21),
  ('Samuel Dario Maldonado', 'municipio', 21),
  ('San Cristóbal', 'municipio', 21),
  ('San Judas Tadeo', 'municipio', 21),
  ('Seboruco', 'municipio', 21),
  ('Simón Rodríguez', 'municipio', 21),
  ('Sucre', 'municipio', 21),
  ('Torbes', 'municipio', 21),
  ('Uribante', 'municipio', 21);

-- Municipios del Estado Trujillo
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar) 
VALUES
  ('Andrés Bello', 'municipio', 22),
  ('Boconó', 'municipio', 22),
  ('Bolívar', 'municipio', 22),
  ('Candelaria', 'municipio', 22),
  ('Carache', 'municipio', 22),
  ('Carvajal', 'municipio', 22),
  ('Escuque', 'municipio', 22),
  ('Juan Vicente Campos Elías', 'municipio', 22),
  ('La Ceiba', 'municipio', 22),
  ('Márquez Cañizales', 'municipio', 22),
  ('Miranda', 'municipio', 22),
  ('Monte Carmelo', 'municipio', 22),
  ('Motatán', 'municipio', 22),
  ('Pampán', 'municipio', 22),
  ('Pampanito', 'municipio', 22),
  ('Rangel', 'municipio', 22),
  ('Sucre', 'municipio', 22),
  ('Trujillo', 'municipio', 22),
  ('Urdaneta', 'municipio', 22),
  ('Valera', 'municipio', 22);

-- Municipios del Estado Yaracuy
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar) 
VALUES
  ('Arístides Bastidas', 'municipio', 23),
  ('Bolívar', 'municipio', 23),
  ('Bruzual', 'municipio', 23),
  ('Cocorote', 'municipio', 23),
  ('Independencia', 'municipio', 23),
  ('José Antonio Páez', 'municipio', 23),
  ('La Trinidad', 'municipio', 23),
  ('Manuel Monge', 'municipio', 23),
  ('Nirgua', 'municipio', 23),
  ('Peña', 'municipio', 23),
  ('San Felipe', 'municipio', 23),
  ('Sucre', 'municipio', 23),
  ('Urachiche', 'municipio', 23),
  ('Veroes', 'municipio', 23);

-- Municipios del Estado Zulia
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar) 
VALUES
  ('Almirante Padilla', 'municipio', 24),
  ('Baralt', 'municipio', 24),
  ('Cabimas', 'municipio', 24),
  ('Catatumbo', 'municipio', 24),
  ('Colón', 'municipio', 24),
  ('Francisco Javier Pulgar', 'municipio', 24),
  ('Guajira', 'municipio', 24),
  ('Jesús Enrique Losada', 'municipio', 24),
  ('Jesús María Semprún', 'municipio', 24),
  ('La Cañada de Urdaneta', 'municipio', 24),
  ('Lagunillas', 'municipio', 24),
  ('Machiques de Perijá', 'municipio', 24),
  ('Mara', 'municipio', 24),
  ('Maracaibo', 'municipio', 24),
  ('Miranda', 'municipio', 24),
  ('Rosario de Perijá', 'municipio', 24),
  ('San Francisco', 'municipio', 24),
  ('Santa Rita', 'municipio', 24),
  ('Simón Bolívar', 'municipio', 24),
  ('Sucre', 'municipio', 24),
  ('Valmore Rodríguez', 'municipio', 24);
  
-- ##################  Parroquias  #########################

-- Parroquias del municipio Alto Orinoco, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA ESMERALDA', 'parroquia', 25),
  ('HUACHAMACARE', 'parroquia', 25),
  ('MARAWAKA', 'parroquia', 25),
  ('MAVACA', 'parroquia', 25),
  ('SIERRA PARIMA', 'parroquia', 25);

-- Parroquias del municipio Atabapo, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN FERNANDO DE ATABA', 'parroquia', 26),
  ('UCATA', 'parroquia', 26),
  ('YAPACANA', 'parroquia', 26),
  ('CANAME', 'parroquia', 26);

-- Parroquias del municipio Atures, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('FERNANDO GIRON TOVAR', 'parroquia', 27),
  ('LUIS ALBERTO GOMEZ', 'parroquia', 27),
  ('PARHUEÑA', 'parroquia', 27),
  ('PLATANILLAL', 'parroquia', 27);

-- Parroquias del municipio Autana, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ISLA DE RATON', 'parroquia', 28),
  ('SAMARIAPO', 'parroquia', 28),
  ('SIPAPO', 'parroquia', 28),
  ('MUNDUAPO', 'parroquia', 28),
  ('GUAYAPO', 'parroquia', 28);

-- Parroquias del municipio Manapiare, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN JUAN DE MANAPIARE', 'parroquia', 29),
  ('ALTO VENTUARI', 'parroquia', 29),
  ('MEDIO VENTUARI', 'parroquia', 29),
  ('BAJO VENTUARI', 'parroquia', 29);

-- Parroquias del municipio Maroa, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MAROA', 'parroquia', 30),
  ('VICTORINO', 'parroquia', 30),
  ('COMUNIDAD', 'parroquia', 30);

-- Parroquias del municipio Río Negro, Amazonas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN CARLOS DE RIO NEG', 'parroquia', 31),
  ('SOLANO', 'parroquia', 31),
  ('COCUY', 'parroquia', 31);

-- Parroquias del municipio Anaco, Anzoátegui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ANACO', 'parroquia', 32),
  ('SAN JOAQUIN', 'parroquia', 32),
  ('BUENA VISTA', 'parroquia', 32);

-- Parroquias del municipio Aragua, Anzoátegui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ARAGUA DE BARCELONA', 'parroquia', 33),
  ('CACHIPO', 'parroquia', 33);

-- Parroquias del municipio Bolívar, Anzoátegui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL CARMEN', 'parroquia', 34),
  ('SAN CRISTOBAL', 'parroquia', 34),
  ('BERGANTIN', 'parroquia', 34),
  ('CAIGUA', 'parroquia', 34),
  ('EL PILAR', 'parroquia', 34),
  ('NARICUAL', 'parroquia', 34);

-- Parroquias del municipio Bruzual, Anzoátegui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. CLARINES', 'parroquia', 35),
  ('GUANAPE', 'parroquia', 35),
  ('SABANA DE UCHIRE', 'parroquia', 35);

--Parroquias del municipio Cajigal, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. ONOTO', 'parroquia', 36),
  ('SAN PABLO', 'parroquia', 36);

--Parroquias del municipio Carvajal, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('VALLE DE GUANAPE', 'parroquia', 37),
  ('SANTA BARBARA', 'parroquia', 37);

-- Parroquias del municipio Freites, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. CANTAURA', 'parroquia', 38),
  ('LIBERTADOR', 'parroquia', 38),
  ('SANTA ROSA', 'parroquia', 38),
  ('URICA', 'parroquia', 38);

--Parroquia del municipio Guanipa, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. SAN JOSE DE GUANIPA', 'parroquia', 39);

--Parroquias del municipio Guanta, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('GUANTA', 'parroquia', 40),
  ('CHORRERON', 'parroquia', 40);

--Parroquias del municipio Independencia, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. SOLEDAD', 'parroquia', 41),
  ('MAMO', 'parroquia', 41);

--Parroquias del municipio Libertad, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. SAN MATEO', 'parroquia', 42),
  ('EL CARITO', 'parroquia', 42),
  ('SANTA INES', 'parroquia', 42);

--Parroquias del municipio McGregor
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('EL CHAPARRO', 'parroquia', 43),
  ('TOMAS ALFARO CALATRAVA', 'parroquia', 43);

--Parroquias del municicpio Miranda, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. PARIAGUAN', 'parroquia', 44),
  ('ATAPIRIRE', 'parroquia', 44),
  ('BOCA DEL PAO', 'parroquia', 44),
  ('EL PAO', 'parroquia', 44);

--Parroquias del municipio Monagas, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. MAPIRE', 'parroquia', 45),
  ('PIAR', 'parroquia', 45),
  ('SN DIEGO DE CABRUTICA', 'parroquia', 45),
  ('SANTA CLARA', 'parroquia', 45),
  ('UVERITO', 'parroquia', 45),
  ('ZUATA', 'parroquia', 45);

--Parroquias del municipio Peñalver, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('CM. PUERTO PIRITU', 'parroquia', 46),
  ('SAN MIGUEL', 'parroquia', 46),
  ('SUCRE', 'parroquia', 46);

--Parroquias del municipio Piritu, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('PIRITU', 'parroquia', 47),
  ('SAN FRANCISCO', 'parroquia', 47);

--Parroquias del municipio San Juan de Capistrano, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('BOCA UCHIRE', 'parroquia', 48),
  ('BOCA DE CHAVEZ', 'parroquia', 48);

--Parroquias del municicpio Santa Ana, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('SANTA ANA', 'parroquia', 49),
  ('PUEBLO NUEVO', 'parroquia', 49);

--Parroquias del municicpio Simon Rodriguez, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('EDMUNDO BARRIOS', 'parroquia', 50),
  ('MIGUEL OTERO SILVA', 'parroquia', 50),
  ('CM. EL TIGRE', 'parroquia', 50);

--Parroquias del municipio /sotillo, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('POZUELOS', 'parroquia', 51),
  ('CM PTO. LA CRUZ', 'parroquia', 51);

--Parroquias del municipio Diego Bautista Urdaneja, Anzoategui
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('LECHERIAS', 'parroquia', 52),
  ('EL MORRO', 'parroquia', 52);

--Parroquias del municipio Achaguas, Apure
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('ACHAGUAS', 'parroquia', 53),
  ('APURITO', 'parroquia', 53),
  ('EL YAGUAL', 'parroquia', 53),
  ('GUACHARA', 'parroquia', 53),
  ('MUCURITAS', 'parroquia', 53),
  ('QUESERAS DEL MEDIO', 'parroquia', 53);

-- Parroquia del municipio Biruaca, Apure
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BIRUACA', 'parroquia', 54);

-- Parroquias del municipio Pedro Camejo, Apure
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JUAN DE PAYARA', 'parroquia', 55),
  ('CODAZZI', 'parroquia', 55),
  ('CUNAVICHE', 'parroquia', 55);

--PArroquias del municipio Bruzual, Apure
INSERT INTO Lugar (
  lugar_nombre, lugar_tipo, lugar_fk_lugar)
  VALUES
  ('BRUZUAL', 'parroquia', 56),
  ('MANTECAL', 'parroquia', 56),
  ('QUINTERO', 'parroquia', 56),
  ('SAN VICENTE', 'parroquia', 56),
  ('RINCON HONDO', 'parroquia', 56);

-- Parroquias del municipio Paez, Apure
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUASDUALITO', 'parroquia', 57),
  ('ARAMENDI', 'parroquia', 57),
  ('EL AMPARO', 'parroquia', 57),
  ('SAN CAMILO', 'parroquia', 57),
  ('URDANETA', 'parroquia', 57);

-- Parroquias del municipio Romulo GAllegos, Apure
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ELORZA', 'parroquia', 58),
  ('LA TRINIDAD', 'parroquia', 58);

-- Parroquias del municipio San Fernando, Apure
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN FERNANDO', 'parroquia', 59),
  ('PEÑALVER', 'parroquia', 59),
  ('EL RECREO', 'parroquia', 59),
  ('SN RAFAEL DE ATAMAICA', 'parroquia', 59);

-- Parroquias del municipio Alcantara, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SANTA RITA', 'parroquia', 60),
  ('FRANCISCO DE MIRANDA', 'parroquia', 60),
  ('MONS FELICIANO G', 'parroquia', 60);

-- Parroquia del municipio Bolivar, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN MATEO', 'parroquia', 61);

-- Parroquias del municipio Camatagua, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAMATAGUA', 'parroquia', 62),
  ('CARMEN DE CURA', 'parroquia', 62);

-- Parroquias del municipio Girardot, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LAS DELICIAS', 'parroquia', 63),
  ('CHORONI', 'parroquia', 63),
  ('MADRE MA DE SAN JOSE', 'parroquia', 63),
  ('JOAQUIN CRESPO', 'parroquia', 63),
  ('PEDRO JOSE OVALLES', 'parroquia', 63),
  ('JOSE CASANOVA GODOY', 'parroquia', 63),
  ('ANDRES ELOY BLANCO', 'parroquia', 63),
  ('LOS TACARIGUAS', 'parroquia', 63);

-- Parroquias del municipio Iragorry, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. EL LIMON', 'parroquia', 64),
  ('CA A DE AZUCAR', 'parroquia', 64);

--Parroquia del municipio Lamas, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SANTA CRUZ', 'parroquia', 65);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PALO NEGRO', 'parroquia', 66),
  ('SAN MARTIN DE PORRES', 'parroquia', 66);

-- Parroquias del municipio MAriño, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TURMERO', 'parroquia', 67),
  ('SAMAN DE GUERE', 'parroquia', 67),
  ('ALFREDO PACHECO M', 'parroquia', 67),
  ('CHUAO', 'parroquia', 67),
  ('AREVALO APONTE', 'parroquia', 67);

-- PArroquias del municipio Michelenas, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LAS TEJERIAS', 'parroquia', 68),
  ('TIARA', 'parroquia', 68);

-- Parroquia del municipio Ocumare de la costa de oro, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('OCUMARE DE LA COSTA', 'parroquia', 69);

-- Parroquia del municipio Revenga, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. EL CONSEJO', 'parroquia', 70);

-- Parroquias del municipio Ribas, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA VICTORIA', 'parroquia', 71),
  ('ZUATA', 'parroquia', 71),
  ('PAO DE ZARATE', 'parroquia', 71),
  ('CASTOR NIEVES RIOS', 'parroquia', 71),
  ('LAS GUACAMAYAS', 'parroquia', 71);

-- Parroquias del municipio San Casimiro, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN CASIMIRO', 'parroquia', 72),
  ('VALLE MORIN', 'parroquia', 72),
  ('GUIRIPA', 'parroquia', 72),
  ('OLLAS DE CARAMACATE', 'parroquia', 72);

-- Parroquia del municipio San Sebastian, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN SEBASTIAN', 'parroquia', 73);

-- Parroquias del municipio Sucre, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAGUA', 'parroquia', 74),
  ('BELLA VISTA', 'parroquia', 74);

-- Parroquia del municipio Tovar, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. COLONIA TOVAR', 'parroquia', 75);

-- PArroquias del municipio Urdaneta, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BARBACOAS', 'parroquia', 76),
  ('SAN FRANCISCO DE CARA', 'parroquia', 76),
  ('TAGUAY', 'parroquia', 76),
  ('LAS PEÑITAS', 'parroquia', 76);

-- Parroquias del municipio Zamora, Aragua
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. VILLA DE CURA', 'parroquia', 77),
  ('MAGDALENO', 'parroquia', 77),
  ('SAN FRANCISCO DE ASIS', 'parroquia', 77),
  ('VALLES DE TUCUTUNEMO', 'parroquia', 77),
  ('PQ AUGUSTO MIJARES', 'parroquia', 77);

-- Parroquias del municipio Alberto Arvelo Torrealba, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('RODRIGUEZ DOMINGUEZ', 'parroquia', 78),
  ('SABANETA', 'parroquia', 78);

-- Parroquias del municipio Andres Eloy Blanco
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL CANTON', 'parroquia', 79),
  ('SANTA CRUZ DE GUACAS', 'parroquia', 79),
  ('PUERTO VIVAS', 'parroquia', 79);

-- Parroquias del municipio Antonio Jose de Sucre, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TICOPORO', 'parroquia', 80),
  ('NICOLAS PULIDO', 'parroquia', 80),
  ('ANDRES BELLO', 'parroquia', 80);

-- Parroquias del municipio Arismendi, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ARISMENDI', 'parroquia', 81),
  ('GUADARRAMA', 'parroquia', 81),
  ('LA UNION', 'parroquia', 81),
  ('SAN ANTONIO', 'parroquia', 81);

-- PArroquias del municipio Barinas, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('Méndez', 'parroquia', 82),
  ('Alto Barinas', 'parroquia', 82),
  ('Corazón de Jesús', 'parroquia', 82),
  ('El Carmen', 'parroquia', 82),
  ('Betancourt', 'parroquia', 82),
  ('Barinas', 'parroquia', 82),
  ('Torunos', 'parroquia', 82),
  ('Fajardo', 'parroquia', 82),
  ('Larriva', 'parroquia', 82),
  ('Páez', 'parroquia', 82),
  ('San Silvestre', 'parroquia', 82),
  ('Santa Inés', 'parroquia', 82),
  ('Santa Lucía', 'parroquia', 82),
  ('Domínguez', 'parroquia', 82);

-- Parroquias del municipio Bolivar, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ALTAMIRA', 'parroquia', 83),
  ('BARINITAS', 'parroquia', 83),
  ('CALDERAS', 'parroquia', 83);

-- Parroquias de municipio Cruz Paredes, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BARRANCAS', 'parroquia', 84),
  ('EL SOCORRO', 'parroquia', 84),
  ('MASPARRITO', 'parroquia', 84);

-- Parroquias del municipio Ezequiel Zamora, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA BARBARA', 'parroquia', 85),
  ('JOSE IGNACIO DEL PUMAR', 'parroquia', 85),
  ('RAMON IGNACIO MENDEZ', 'parroquia', 85),
  ('PEDRO BRICEÑO MENDEZ', 'parroquia', 85);

-- Parroquias del municipio Obispos, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL REAL', 'parroquia', 86),
  ('LA LUZ', 'parroquia', 86),
  ('OBISPOS', 'parroquia', 86),
  ('LOS GUASIMITOS', 'parroquia', 86);

-- Parroquias del municipio Pedraza, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CIUDAD BOLIVIA', 'parroquia', 87),
  ('IGNACIO BRICEÑO', 'parroquia', 87),
  ('PAEZ', 'parroquia', 87),
  ('JOSE FELIX RIBAS', 'parroquia', 87);

-- Parroquias del municipio Rojas, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('DOLORES', 'parroquia', 88),
  ('LIBERTAD', 'parroquia', 88),
  ('PALACIO FAJARDO', 'parroquia', 88),
  ('SANTA ROSA', 'parroquia', 88);

-- Parroquias el municipio Sosa, Barinas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CIUDAD DE NUTRIAS', 'parroquia', 89),
  ('EL REGALO', 'parroquia', 89),
  ('PUERTO DE NUTRIAS', 'parroquia', 89),
  ('SANTA CATALINA', 'parroquia', 89);

-- Parroquias del municipio Angostura, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CIUDAD PIAR', 'parroquia', 90),
  ('SAN FRANCISCO', 'parroquia', 90),
  ('BARCELONETA', 'parroquia', 90),
  ('SANTA BARBARA', 'parroquia', 90);

-- PArroquias del municipio Angostura del orinoco, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CATEDRAL', 'parroquia', 91),
  ('AGUA SALADA', 'parroquia', 91),
  ('LA SABANITA', 'parroquia', 91),
  ('VISTA HERMOSA', 'parroquia', 91),
  ('MARHUANTA', 'parroquia', 91),
  ('JOSE ANTONIO PAEZ', 'parroquia', 91),
  ('ORINOCO', 'parroquia', 91),
  ('PANAPANA', 'parroquia', 91),
  ('ZEA', 'parroquia', 91);

-- Parroquias del municipio Caroni, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SIMON BOLIVAR', 'parroquia', 92),
  ('ONCE DE ABRIL', 'parroquia', 92),
  ('VISTA AL SOL', 'parroquia', 92),
  ('CHIRICA', 'parroquia', 92),
  ('DALLA COSTA', 'parroquia', 92),
  ('CACHAMAY', 'parroquia', 92),
  ('UNIVERSIDAD', 'parroquia', 92),
  ('UNARE', 'parroquia', 92),
  ('YOCOIMA', 'parroquia', 92),
  ('POZO VERDE', 'parroquia', 92);

-- PArroquias del municipio cedeño, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAICARA DEL ORINOCO', 'parroquia', 93),
  ('ASCENSION FARRERAS', 'parroquia', 93),
  ('ALTAGRACIA', 'parroquia', 93),
  ('LA URBANA', 'parroquia', 93),
  ('GUANIAMO', 'parroquia', 93),
  ('PIJIGUAOS', 'parroquia', 93);

-- Parroquias del municipio Chien, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES  
  ('CM. EL PALMAR', 'parroquia', 94);

--PAroquia del municipio El Callao, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. EL CALLAO', 'parroquia', 95);

-- Parroquias del municipio Gran Sabana, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SANTA ELENA DE UAIREN', 'parroquia', 96),
  ('IKABARU', 'parroquia', 96);

-- Parroquias del municipio Piar, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. UPATA', 'parroquia', 97),
  ('ANDRES ELOY BLANCO', 'parroquia', 97),
  ('PEDRO COVA', 'parroquia', 97);

-- Parroquias del municipio Roscio, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. GUASIPATI', 'parroquia', 98),
  ('SALOM', 'parroquia', 98);

-- Parroquias del municipio Sifontes, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TUMEREMO', 'parroquia', 99),
  ('DALLA COSTA', 'parroquia', 99),
  ('SAN ISIDRO', 'parroquia', 99);

-- Parroquias del municipio Sucre, Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MARIPA', 'parroquia', 100),
  ('ARIPAO', 'parroquia', 100),
  ('LAS MAJADAS', 'parroquia', 100),
  ('MOITACO', 'parroquia', 100),
  ('GUARATARO', 'parroquia', 100);

-- Parroquias del municipio Bejuma, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BEJUMA', 'parroquia', 101),
  ('CANOABO', 'parroquia', 101),
  ('SIMON BOLIVAR', 'parroquia', 101);

-- Parroquias del municipio Carlos Arvelo, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUIGUE', 'parroquia', 102),
  ('BELEN', 'parroquia', 102),
  ('TACARIGUA', 'parroquia', 102);

-- Parroquias del municipio Dieo IBarra, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MARIARA', 'parroquia', 103),
  ('AGUAS CALIENTES', 'parroquia', 103);

-- Parroquias del municipio Guacara, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUACARA', 'parroquia', 104),
  ('CIUDAD ALIANZA', 'parroquia', 104),
  ('YAGUA', 'parroquia', 104);

-- Parroquias del municipio Juan Jose Mora, Carabobo  
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MORON', 'parroquia', 105),
  ('URAMA', 'parroquia', 105);

--Parroquias del municipio Libertador, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('U TOCUYITO', 'parroquia', 106),
  ('U INDEPENDENCIA', 'parroquia', 106);

--Parroquias del municipio Los Guayos, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('U LOS GUAYOS', 'parroquia', 107);

-- Parroquia del municipio Miranda, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MIRANDA', 'parroquia', 108);

--Parroquia del municipio Montalban, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MONTALBAN', 'parroquia', 109);

--Parroquia del municipio NAguanagua, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('NAGUANAGUA', 'parroquia', 110);

-- Parroquias del municipio Puerto Cabello, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('DEMOCRACIA', 'parroquia', 111),
  ('FRATERNIDAD', 'parroquia', 111),
  ('GOAIGOAZA', 'parroquia', 111),
  ('JUAN JOSE FLORES', 'parroquia', 111),
  ('BARTOLOME SALOM', 'parroquia', 111),
  ('UNION', 'parroquia', 111),
  ('BORBURATA', 'parroquia', 111),
  ('PATANEMO', 'parroquia', 111);

-- Parroquia del municipio San Diego, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('URB SAN DIEGO', 'parroquia', 112);

--PArroquia del municipio San Joaquin, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOAQUIN', 'parroquia', 113);

--PArroquias del municipio Valencia, Carabobo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CANDELARIA', 'parroquia', 114),
  ('CATEDRAL', 'parroquia', 114),
  ('EL SOCORRO', 'parroquia', 114),
  ('MIGUEL PEÑA', 'parroquia', 114),
  ('SAN BLAS', 'parroquia', 114),
  ('SAN JOSE', 'parroquia', 114),
  ('SANTA ROSA', 'parroquia', 114),
  ('RAFAEL URDANETA', 'parroquia', 114),
  ('NEGRO PRIMERO', 'parroquia', 114);

-- Parroquias del municipio Anzoategui, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('COJEDES', 'parroquia', 115),
  ('JUAN DE MATA SUAREZ', 'parroquia', 115);

--PArroquias del municipio San Carlos, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN CARLOS DE AUSTRIA', 'parroquia', 116),
  ('JUAN ANGEL BRAVO', 'parroquia', 116),
  ('MANUEL MANRIQUE', 'parroquia', 116);

--PArroquias del municipio Girardot, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL BAUL', 'parroquia', 117),
  ('SUCRE', 'parroquia', 117);

--Parroquias del municipio Lima Blanco, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MACAPO', 'parroquia', 118),
  ('LA AGUADITA', 'parroquia', 118);

--PArroquias del municipio PAo de San Juan Bautista, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL PAO', 'parroquia', 119);

--Parroquias del municipio Ricaurte, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LIBERTAD DE COJEDES', 'parroquia', 120),
  ('EL AMPARO', 'parroquia', 120);
  
--Parroquia del municipio Romulo Gallegos, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ROMULO GALLEGOS', 'parroquia', 121);

-- Parroquia del municipio Tinaco, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GRL/JEFE JOSE L SILVA', 'parroquia', 122);

-- PArroquia del municipio Tinaquillo, Cojedes
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TINAQUILLO', 'parroquia', 123);

-- Parroquias del municipio ANdres Diaz, Delta Amacura
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CURIAPO', 'parroquia', 124),
  ('SANTOS DE ABELGAS', 'parroquia', 124),
  ('MANUEL RENAUD', 'parroquia', 124),
  ('PADRE BARRAL', 'parroquia', 124),
  ('ANICETO LUGO', 'parroquia', 124),
  ('ALMIRANTE LUIS BRION', 'parroquia', 124);

-- Parroquias del municipio Casacoima, Delta Amacuro
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('IMATACA', 'parroquia', 125),
  ('ROMULO GALLEGOS', 'parroquia', 125),
  ('JUAN BAUTISTA ARISMEN', 'parroquia', 125),
  ('MANUEL PIAR', 'parroquia', 125),
  ('5 DE JULIO', 'parroquia', 125);

-- Parroquias del municipio Pedernales, Delta Amacuro
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PEDERNALES', 'parroquia', 126),
  ('LUIS B PRIETO FIGUERO', 'parroquia', 126);

-- Parroquia del municipio Tucupita, Delta Amacuro
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOSE', 'parroquia', 127),
  ('VIRGEN DEL VALLE', 'parroquia', 127),
  ('SAN RAFAEL', 'parroquia', 127),
  ('JOSE VIDAL MARCANO', 'parroquia', 127),
  ('LEONARDO RUIZ PINEDA', 'parroquia', 127),
  ('MONS. ARGIMIRO GARCIA', 'parroquia', 127),
  ('MCL.ANTONIO J DE SUCRE', 'parroquia', 127),
  ('JUAN MILLAN', 'parroquia', 127);

-- Parroquias del municipio Distrito Capital, Caracas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ALTAGRACIA', 'parroquia', 128),
  ('CANDELARIA', 'parroquia', 128),
  ('CATEDRAL', 'parroquia', 128),
  ('LA PASTORA', 'parroquia', 128),
  ('SAN AGUSTIN', 'parroquia', 128),
  ('SAN JOSE', 'parroquia', 128),
  ('SAN JUAN', 'parroquia', 128),
  ('SANTA ROSALIA', 'parroquia', 128),
  ('SANTA TERESA', 'parroquia', 128),
  ('SUCRE', 'parroquia', 128),
  ('23 DE ENERO', 'parroquia', 128),
  ('ANTIMANO', 'parroquia', 128),
  ('EL RECREO', 'parroquia', 128),
  ('EL VALLE', 'parroquia', 128),
  ('LA VEGA', 'parroquia', 128),
  ('MACARAO', 'parroquia', 128),
  ('CARICUAO', 'parroquia', 128),
  ('EL JUNQUITO', 'parroquia', 128),
  ('COCHE', 'parroquia', 128),
  ('SAN PEDRO', 'parroquia', 128),
  ('SAN BERNARDINO', 'parroquia', 128),
  ('EL PARAISO', 'parroquia', 128);

-- Parroquiasd el municipio Acosta, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JUAN DE LOS CAYOS', 'parroquia', 129),
  ('CAPADARE', 'parroquia', 129),
  ('LA PASTORA', 'parroquia', 129),
  ('LIBERTADOR', 'parroquia', 129);

-- Parroquias del municipio Bolivar, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN LUIS', 'parroquia', 130),
  ('ARACUA', 'parroquia', 130),
  ('LA PEÑA', 'parroquia', 130);

-- Parroquias del municipio Buchivacoa, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CAPATARIDA', 'parroquia', 131),
  ('BOROJO', 'parroquia', 131),
  ('SEQUE', 'parroquia', 131),
  ('ZAZARIDA', 'parroquia', 131),
  ('BARIRO', 'parroquia', 131),
  ('GUAJIRO', 'parroquia', 131);

-- Parroquias del municipio Carirubana, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('NORTE', 'parroquia', 132),
  ('CARIRUBANA', 'parroquia', 132),
  ('PUNTA CARDON', 'parroquia', 132),
  ('SANTA ANA', 'parroquia', 132);

-- Parroquias del municipio COlina, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LA VELA DE CORO', 'parroquia', 133),
  ('ACURIGUA', 'parroquia', 133),
  ('GUAIBACOA', 'parroquia', 133),
  ('MACORUCA', 'parroquia', 133),
  ('LAS CALDERAS', 'parroquia', 133);

-- Parroquia del municipio Dabajuro, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. DABAJURO', 'parroquia', 134);

-- Parroquias del municipio Democracia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PEDREGAL', 'parroquia', 135),
  ('AGUA CLARA', 'parroquia', 135),
  ('AVARIA', 'parroquia', 135),
  ('PIEDRA GRANDE', 'parroquia', 135),
  ('PURURECHE', 'parroquia', 135);

--Parroquias del municipio Falcon, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PUEBLO NUEVO', 'parroquia', 136),
  ('ADICORA', 'parroquia', 136),
  ('BARAIVED', 'parroquia', 136),
  ('BUENA VISTA', 'parroquia', 136),
  ('JADACAQUIVA', 'parroquia', 136),
  ('MORUY', 'parroquia', 136),
  ('EL VINCULO', 'parroquia', 136),
  ('EL HATO', 'parroquia', 136),
  ('ADAURE', 'parroquia', 136);

-- Parroquias del municipio Federacion, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHURUGUARA', 'parroquia', 137),
  ('AGUA LARGA', 'parroquia', 137),
  ('INDEPENDENCIA', 'parroquia', 137),
  ('MAPARARI', 'parroquia', 137),
  ('EL PAUJI', 'parroquia', 137);

--Parroquias del municipio Iturriza, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHICHIRIVICHE', 'parroquia', 138),
  ('BOCA DE TOCUYO', 'parroquia', 138),
  ('TOCUYO DE LA COSTA', 'parroquia', 138);

--Parroquias del municipio JAcura, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('JACURA', 'parroquia', 139),
  ('AGUA LINDA', 'parroquia', 139),
  ('ARAURIMA', 'parroquia', 139);

-- Parroquias del municipio Los Taques, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LOS TAQUES', 'parroquia', 140),
  ('JUDIBANA', 'parroquia', 140);

-- Parroquia del minicipio Manaure, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. YARACAL', 'parroquia', 141);

-- Parroquias del municipio Mauroa, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MENE DE MAUROA', 'parroquia', 142),
  ('CASIGUA', 'parroquia', 142),
  ('SAN FELIX', 'parroquia', 142);

-- Parroquias del municipio Miranda, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN ANTONIO', 'parroquia', 143),
  ('SAN GABRIEL', 'parroquia', 143),
  ('SANTA ANA', 'parroquia', 143),
  ('GUZMAN GUILLERMO', 'parroquia', 143),
  ('MITARE', 'parroquia', 143),
  ('SABANETA', 'parroquia', 143),
  ('RIO SECO', 'parroquia', 143);

--Parroquia del municipio Palmasola, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PALMA SOLA', 'parroquia', 144);

-- Parroquias del municipio Petit, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CABURE', 'parroquia', 145),
  ('CURIMAGUA', 'parroquia', 145),
  ('COLINA', 'parroquia', 145);

--Parroquias del municipio Piritu, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PIRITU', 'parroquia', 146),
  ('SAN JOSE DE LA COSTA', 'parroquia', 146);

--PArroquia del municipio San Francisco, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MIRIMIRE', 'parroquia', 147);

--Parroquias del municipio Sucre, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SUCRE', 'parroquia', 148),
  ('PECAYA', 'parroquia', 148);

-- Parroquias del municipio Silva, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TUCACAS', 'parroquia', 149),
  ('BOCA DE AROA', 'parroquia', 149);

-- Parroquia del municipio Tocopero, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TOCOPERO', 'parroquia', 150);

-- Parroquias del municipio Union
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('STA.CRUZ DE BUCARAL', 'parroquia', 151),
  ('EL CHARAL', 'parroquia', 151),
  ('LAS VEGAS DEL TUY', 'parroquia', 151);

--PArroquias del municipio Urumaco, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('URUMACO', 'parroquia', 152),
  ('BRUZUAL', 'parroquia', 152);

--PArroquias del municipio Zamora, Falcon
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PUERTO CUMAREBO', 'parroquia', 153),
  ('LA CIENAGA', 'parroquia', 153),
  ('LA SOLEDAD', 'parroquia', 153),
  ('PUEBLO CUMAREBO', 'parroquia', 153),
  ('ZAZARIDA', 'parroquia', 153);

--Parroquias del municipio Camaguan, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CAMAGUAN', 'parroquia', 154),
  ('PUERTO MIRANDA', 'parroquia', 154),
  ('UVERITO', 'parroquia', 154);

-- Parroquia del municipio Chaguaramas, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHAGUARAMAS', 'parroquia', 155);

--PArroquias del municipio El Socorro, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL SOCORRO', 'parroquia', 156);

-- Parroquias del municipio Frnacisco de Miranda, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CALABOZO', 'parroquia', 157),
  ('EL CALVARIO', 'parroquia', 157),
  ('EL RASTRO', 'parroquia', 157),
  ('GUARDATINAJAS', 'parroquia', 157);

-- Parroquias del municipio Jose Felix Ribas, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TUCUPIDO', 'parroquia', 158),
  ('SAN RAFAEL DE LAYA', 'parroquia', 158);
  
-- Parroquias del municicpio Jose Tadeo Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ALTAGRACIA DE ORITUCO', 'parroquia', 161),
  ('LEZAMA', 'parroquia', 161),
  ('LIBERTAD DE ORITUCO', 'parroquia', 161),
  ('SAN FCO DE MACAIRA', 'parroquia', 161),
  ('SAN RAFAEL DE ORITUCO', 'parroquia', 161),
  ('SOUBLETTE', 'parroquia', 161),
  ('PASO REAL DE MACAIRA', 'parroquia', 161);

--Parroquias del municipio Juan Roman Roscio
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JUAN DE LOS MORROS', 'parroquia', 160),
  ('PARAPARA', 'parroquia', 160),
  ('CANTAGALLO', 'parroquia', 160);

--Parroquias del municipio Juan Jose Rondon, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LAS MERCEDES', 'parroquia', 161),
  ('STA RITA DE MANAPIRE', 'parroquia', 161),
  ('CABRUTA', 'parroquia', 161);

--Parroquias del municipio Julian Mellado, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL SOMBRERO', 'parroquia', 162),
  ('SOSA', 'parroquia', 162);

--Parroquias del municipio Leonardo Infante, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('VALLE DE LA PASCUA', 'parroquia', 163),
  ('ESPINO', 'parroquia', 163);

--Parroquias del municipio Ortiz, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ORTIZ', 'parroquia', 164),
  ('SAN FCO. DE TIZNADOS', 'parroquia', 164),
  ('SAN JOSE DE TIZNADOS', 'parroquia', 164),
  ('S LORENZO DE TIZNADOS', 'parroquia', 164);

-- Parroquias del municipio San Geronimo de Guayabal, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUAYABAL', 'parroquia', 165),
  ('CAZORLA', 'parroquia', 165);

--Parroquias del municipio San Jose de Guaribe
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOSE DE GUARIBE', 'parroquia', 166);

-- Parroquias del municipio Santa Maria de Ipire, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA MARIA DE IPIRE', 'parroquia', 167),
  ('ALTAMIRA', 'parroquia', 167);

-- Parroquias del municipio Zaraza, Guarico
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ZARAZA', 'parroquia', 168),
  ('SAN JOSE DE UNARE', 'parroquia', 168);

-- Parroquias del municipio Andres Eloy Blanco, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PIO TAMAYO', 'parroquia', 169),
  ('YACAMBU', 'parroquia', 169),
  ('QBDA. HONDA DE GUACHE', 'parroquia', 169);

-- Parroquias del municipio Crespo, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('FREITEZ', 'parroquia', 170),
  ('JOSE MARIA BLANCO', 'parroquia', 170);

-- Parroquias del municipio Iribarren
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CATEDRAL', 'parroquia', 171),
  ('LA CONCEPCION', 'parroquia', 171),
  ('SANTA ROSA', 'parroquia', 171),
  ('UNION', 'parroquia', 171),
  ('EL CUJI', 'parroquia', 171),
  ('TAMACA', 'parroquia', 171),
  ('JUAN DE VILLEGAS', 'parroquia', 171),
  ('AGUEDO F. ALVARADO', 'parroquia', 171),
  ('BUENA VISTA', 'parroquia', 171),
  ('JUAREZ', 'parroquia', 171);

-- Parroquias del municipio Jimenez, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('JUAN B RODRIGUEZ', 'parroquia', 172),
  ('DIEGO DE LOZADA', 'parroquia', 172),
  ('SAN MIGUEL', 'parroquia', 172),
  ('CUARA', 'parroquia', 172),
  ('PARAISO DE SAN JOSE', 'parroquia', 172),
  ('TINTORERO', 'parroquia', 172),
  ('JOSE BERNARDO DORANTE', 'parroquia', 172),
  ('CRNEL. MARIANO PERAZA', 'parroquia', 172);

-- Parroquias del municipio Moran, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BOLIVAR', 'parroquia', 173),
  ('ANZOATEGUI', 'parroquia', 173),
  ('GUARICO', 'parroquia', 173),
  ('HUMOCARO ALTO', 'parroquia', 173),
  ('HUMOCARO BAJO', 'parroquia', 173),
  ('MORAN', 'parroquia', 173),
  ('HILARIO LUNA Y LUNA', 'parroquia', 173),
  ('LA CANDELARIA', 'parroquia', 173);

-- Parroquias del municipio Palavecino, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CABUDARE', 'parroquia', 174),
  ('JOSE G. BASTIDAS', 'parroquia', 174),
  ('AGUA VIVA', 'parroquia', 174);

-- Parroquias del municipio Simon Planas, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SARARE', 'parroquia', 175),
  ('GUSTAVO VEGAS LEON', 'parroquia', 175),
  ('BURIA', 'parroquia', 175);

-- Parroquias del municipio Torres, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TRINIDAD SAMUEL', 'parroquia', 176),
  ('ANTONIO DIAZ', 'parroquia', 176),
  ('CAMACARO', 'parroquia', 176),
  ('CASTAÑEDA', 'parroquia', 176),
  ('CHIQUINQUIRA', 'parroquia', 176),
  ('ESPINOZA LOS MONTEROS', 'parroquia', 176),
  ('LARA', 'parroquia', 176),
  ('MANUEL MORILLO', 'parroquia', 176),
  ('MONTES DE OCA', 'parroquia', 176),
  ('TORRES', 'parroquia', 176),
  ('EL BLANCO', 'parroquia', 176),
  ('MONTA A VERDE', 'parroquia', 176),
  ('HERIBERTO ARROYO', 'parroquia', 176),
  ('LAS MERCEDES', 'parroquia', 176),
  ('CECILIO ZUBILLAGA', 'parroquia', 176),
  ('REYES VARGAS', 'parroquia', 176),
  ('ALTAGRACIA', 'parroquia', 176);

-- Parroquias del municipio Urdaneta, Lara
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SIQUISIQUE', 'parroquia', 177),
  ('SAN MIGUEL', 'parroquia', 177),
  ('XAGUAS', 'parroquia', 177),
  ('MOROTURO', 'parroquia', 177);

-- Parroquias del municipio Vargas, La Guaira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CARABALLEDA', 'parroquia', 178),
  ('CARAYACA', 'parroquia', 178),
  ('CARUAO', 'parroquia', 178),
  ('CATIA LA MAR', 'parroquia', 178),
  ('LA GUAIRA', 'parroquia', 178),
  ('MACUTO', 'parroquia', 178),
  ('MAIQUETIA', 'parroquia', 178),
  ('NAIGUATA', 'parroquia', 178),
  ('EL JUNKO', 'parroquia', 178),
  ('PQ RAUL LEONI', 'parroquia', 178),
  ('PQ CARLOS SOUBLETTE', 'parroquia', 178);

-- Parroquias del municipio Alberto Adriani, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GABRIEL PICON G.', 'parroquia', 179),
  ('HECTOR AMABLE MORA', 'parroquia', 179),
  ('JOSE NUCETE SARDI', 'parroquia', 179),
  ('PULIDO MENDEZ', 'parroquia', 179),
  ('PTE. ROMULO GALLEGOS', 'parroquia', 179),
  ('PRESIDENTE BETANCOURT', 'parroquia', 179),
  ('PRESIDENTE PAEZ', 'parroquia', 179);

-- Parroquia del municipio Andres Bello, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA AZULITA', 'parroquia', 180);

-- Parroquias del municipio Antonio pinto Salinas, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. STA CRUZ DE MORA', 'parroquia', 181),
  ('MESA BOLIVAR', 'parroquia', 181),
  ('MESA DE LAS PALMAS', 'parroquia', 181);

-- Parroquias del municipio Aricagua, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ARICAGUA', 'parroquia', 182),
  ('SAN ANTONIO', 'parroquia', 182);

-- Parroquias del municipio Arzobispo Chacon, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CANAGUA', 'parroquia', 183),
  ('CAPURI', 'parroquia', 183),
  ('CHACANTA', 'parroquia', 183),
  ('EL MOLINO', 'parroquia', 183),
  ('GUAIMARAL', 'parroquia', 183),
  ('MUCUTUY', 'parroquia', 183),
  ('MUCUCHACHI', 'parroquia', 183);

-- Parroquias del municipio Campo Elias, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ACEQUIAS', 'parroquia', 184),
  ('JAJI', 'parroquia', 184),
  ('LA MESA', 'parroquia', 184),
  ('SAN JOSE', 'parroquia', 184),
  ('MONTALBAN', 'parroquia', 184),
  ('MATRIZ', 'parroquia', 184),
  ('FERNANDEZ PEÑA', 'parroquia', 184);

-- Parroquias del municipio Caracciolo Parra Olmedo, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TUCANI', 'parroquia', 185),
  ('FLORENCIO RAMIREZ', 'parroquia', 185);

-- Parroquias del municipio Cardenal Quintero, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SANTO DOMINGO', 'parroquia', 186),
  ('LAS PIEDRAS', 'parroquia', 186);

-- Parroquias del municipio Guaraque, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. GUARAQUE', 'parroquia', 187),
  ('MESA DE QUINTERO', 'parroquia', 187),
  ('RIO NEGRO', 'parroquia', 187);


-- Parroquias del municipio Julio Cesar Salas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ARAPUEY', 'parroquia', 188),
  ('PALMIRA', 'parroquia', 188);

-- Parroquias del municipio Justo Briceño, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TORONDOY', 'parroquia', 189),
  ('SAN CRISTOBAL DE T', 'parroquia', 189);

-- Parroquias del municipio Libertador, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ARIAS', 'parroquia', 190),
  ('SAGRARIO', 'parroquia', 190),
  ('MILLA', 'parroquia', 190),
  ('EL LLANO', 'parroquia', 190),
  ('JUAN RODRIGUEZ SUAREZ', 'parroquia', 190),
  ('JACINTO PLAZA', 'parroquia', 190),
  ('DOMINGO PEÑA', 'parroquia', 190),
  ('GONZALO PICON FEBRES', 'parroquia', 190),
  ('OSUNA RODRIGUEZ', 'parroquia', 190),
  ('LASSO DE LA VEGA', 'parroquia', 190),
  ('CARACCIOLO PARRA P', 'parroquia', 190),
  ('MARIANO PICON SALAS', 'parroquia', 190),
  ('ANTONIO SPINETTI DINI', 'parroquia', 190),
  ('EL MORRO', 'parroquia', 190),
  ('LOS NEVADOS', 'parroquia', 190);

--Parroquias del municipio Miranda, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TIMOTES', 'parroquia', 191),
  ('ANDRES ELOY BLANCO', 'parroquia', 191),
  ('PIÑANGO', 'parroquia', 191),
  ('LA VENTA', 'parroquia', 191);

-- Parroquias del municipio Obispo Ramos de Lora, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. STA ELENA DE ARENALES', 'parroquia', 192),
  ('ELOY PAREDES', 'parroquia', 192),
  ('PQ R DE ALCAZAR', 'parroquia', 192);

-- Parroquias del municipio Padre Noguera, MErida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. STA MARIA DE CAPARO', 'parroquia', 193);

-- PArroquia del municipio Pueblo Llano, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PUEBLO LLANO', 'parroquia', 194);

-- Parroquias del municipio Rangel, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MUCUCHIES', 'parroquia', 195),
  ('MUCURUBA', 'parroquia', 195),
  ('SAN RAFAEL', 'parroquia', 195),
  ('CACUTE', 'parroquia', 195),
  ('LA TOMA', 'parroquia', 195);

-- Parroquias del municipio Rivas Davila, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BAILADORES', 'parroquia', 196),
  ('GERONIMO MALDONADO', 'parroquia', 196);

-- PArroquias del municipio Santos MArquina, MErida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TABAY', 'parroquia', 197);

-- Parroquias del municipio Sucre, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LAGUNILLAS', 'parroquia', 198),
  ('CHIGUARA', 'parroquia', 198),
  ('ESTANQUES', 'parroquia', 198),
  ('SAN JUAN', 'parroquia', 198),
  ('PUEBLO NUEVO DEL SUR', 'parroquia', 198),
  ('LA TRAMPA', 'parroquia', 198);

-- PArroquias del municipio Tovar, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL LLANO', 'parroquia', 199),
  ('TOVAR', 'parroquia', 199),
  ('EL AMPARO', 'parroquia', 199),
  ('SAN FRANCISCO', 'parroquia', 199);

-- Parroquias del municipio Tulio Febres Cordero, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. NUEVA BOLIVIA', 'parroquia', 200),
  ('INDEPENDENCIA', 'parroquia', 200),
  ('MARIA C PALACIOS', 'parroquia', 200),
  ('SANTA APOLONIA', 'parroquia', 200);

-- Parroquias del municipio Zea, Merida
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ZEA', 'parroquia', 201),
  ('CAÑO EL TIGRE', 'parroquia', 201);

-- PArroquias del municipio Acevedo, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CAUCAGUA', 'parroquia', 202),
  ('ARAGUITA', 'parroquia', 202),
  ('AREVALO GONZALEZ', 'parroquia', 202),
  ('CAPAYA', 'parroquia', 202),
  ('PANAQUIRE', 'parroquia', 202),
  ('RIBAS', 'parroquia', 202),
  ('EL CAFE', 'parroquia', 202),
  ('MARIZAPA', 'parroquia', 202);

-- Parroquias del municipio Andres BEllo, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOSE DE BARLOVENTO', 'parroquia', 203),
  ('CUMBO', 'parroquia', 203);

-- PArroquias del municipio Baruta, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BARUTA', 'parroquia', 204),
  ('EL CAFETAL', 'parroquia', 204),
  ('LAS MINAS DE BARUTA', 'parroquia', 204);

-- Parroquias del municipio Bolivar, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN FCO DE YARE', 'parroquia', 205),
  ('S ANTONIO DE YARE', 'parroquia', 205);

-- Parroquias del municipio Brion, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('HIGUEROTE', 'parroquia', 206),
  ('CURIEPE', 'parroquia', 206),
  ('TACARIGUA', 'parroquia', 206);

-- PArroquia del municipio Buroz, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MAMPORAL', 'parroquia', 207);

-- Parroquia del municipio Carrizal, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CARRIZAL', 'parroquia', 208);

-- Parroquia del municipio Chacao, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHACAO', 'parroquia', 209);

-- Parroquias del municipio Cristobal Rojas, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHARALLAVE', 'parroquia', 210),
  ('LAS BRISAS', 'parroquia', 210);

-- Parroquia del municipio El Hatillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL HATILLO', 'parroquia', 211);

-- Parroquias del municipio Guaicaipuro, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LOS TEQUES', 'parroquia', 212),
  ('CECILIO ACOSTA', 'parroquia', 212),
  ('PARACOTOS', 'parroquia', 212),
  ('SAN PEDRO', 'parroquia', 212),
  ('TACATA', 'parroquia', 212),
  ('EL JARILLO', 'parroquia', 212),
  ('ALTAGRACIA DE LA M', 'parroquia', 212);

-- PArroquias del municipio Gual, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CUPIRA', 'parroquia', 213),
  ('MACHURUCUTO', 'parroquia', 213);

-- Parroquias del municipio Independencia, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('STA TERESA DEL TUY', 'parroquia', 214),
  ('EL CARTANAL', 'parroquia', 214);

-- Parroquias del municipio Lander, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('OCUMARE DEL TUY', 'parroquia', 215),
  ('LA DEMOCRACIA', 'parroquia', 215),
  ('SANTA BARBARA', 'parroquia', 215);

-- Parroquia del municipio Los Salias, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN ANTONIO LOS ALTOS', 'parroquia', 216);

-- Parroquias del municipio Paez, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('RIO CHICO', 'parroquia', 217),
  ('EL GUAPO', 'parroquia', 217),
  ('TACARIGUA DE LA LAGUNA', 'parroquia', 217),
  ('PAPARO', 'parroquia', 217),
  ('SN FERNANDO DEL GUAPO', 'parroquia', 217);

-- Parroquia del municipio Paz Castillo, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA LUCIA', 'parroquia', 218);

-- PArroquia del municipio Plaza, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUARENAS', 'parroquia', 219);

-- PArroquias del municipio Sucre, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PETARE', 'parroquia', 220),
  ('LEONCIO MARTINEZ', 'parroquia', 220),
  ('CAUCAGUITA', 'parroquia', 220),
  ('FILAS DE MARICHES', 'parroquia', 220),
  ('LA DOLORITA', 'parroquia', 220);

-- Parroquias del municipio Urdaneta, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CUA', 'parroquia', 221),
  ('NUEVA CUA', 'parroquia', 221);

-- Parroquias del municipio Zamora, Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUATIRE', 'parroquia', 222),
  ('ARAIRA', 'parroquia', 222);

-- Parroquias del municipio Acosta, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN ANTONIO', 'parroquia', 223),
  ('SAN FRANCISCO', 'parroquia', 223);

-- Parroquia del municipio Aguasay
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. AGUASAY', 'parroquia', 224);

-- Parroquia del municipio Bolivar, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CARIPITO', 'parroquia', 225);

--PArroquias del municipio Caripe, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CARIPE', 'parroquia', 226),
  ('TERESEN', 'parroquia', 226),
  ('EL GUACHARO', 'parroquia', 226),
  ('SAN AGUSTIN', 'parroquia', 226),
  ('LA GUANOTA', 'parroquia', 226),
  ('SABANA DE PIEDRA', 'parroquia', 226);

-- Parroquias del municipio Cedeño, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAICARA', 'parroquia', 227),
  ('AREO', 'parroquia', 227),
  ('SAN FELIX', 'parroquia', 227),
  ('VIENTO FRESCO', 'parroquia', 227);

-- Parroquias del municipio Libertador, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TEMBLADOR', 'parroquia', 228),
  ('TABASCA', 'parroquia', 228),
  ('LAS ALHUACAS', 'parroquia', 228),
  ('CHAGUARAMAS', 'parroquia', 228);

-- Parroquias del municipio MAturin, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL FURRIAL', 'parroquia', 229),
  ('JUSEPIN', 'parroquia', 229),
  ('EL COROZO', 'parroquia', 229),
  ('SAN VICENTE', 'parroquia', 229),
  ('LA PICA', 'parroquia', 229),
  ('ALTO DE LOS GODOS', 'parroquia', 229),
  ('BOQUERON', 'parroquia', 229),
  ('LAS COCUIZAS', 'parroquia', 229),
  ('SANTA CRUZ', 'parroquia', 229),
  ('SAN SIMON', 'parroquia', 229);

-- Parroquias del municipio Piar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ARAGUA', 'parroquia', 230),
  ('CHAGUARAMAL', 'parroquia', 230),
  ('GUANAGUANA', 'parroquia', 230),
  ('APARICIO', 'parroquia', 230),
  ('TAGUAYA', 'parroquia', 230),
  ('EL PINTO', 'parroquia', 230),
  ('LA TOSCANA', 'parroquia', 230);

-- Parroquias del municipio Punceres, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. QUIRIQUIRE', 'parroquia', 231),
  ('CACHIPO', 'parroquia', 231);

-- Parroquias del municipio Santa Barbara, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MORON', 'parroquia', 232),
  ('CM. SANTA BARBARA', 'parroquia', 232);

-- Parroquias del municipio Sotillo, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BARRANCAS', 'parroquia', 233),
  ('LOS BARRANCOS DE FAJARDO', 'parroquia', 233);

-- Parroquias del municipio Uracoa, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. URACOA', 'parroquia', 234);

-- Parroquias del municipio Zamora, Monagas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PUNTA DE MATA', 'parroquia', 235),
  ('EL TEJERO', 'parroquia', 235);

-- Parroquia del municipio Antolin del CAmpo, Nueva esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ANTOLIN DEL CAMPO', 'parroquia', 236),
  ('CM.LA PLAZA DE PARAGUACHI', 'parroquia', 236);

-- Parroquias del municipio Antonio Diaz, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN JUAN BAUTISTA', 'parroquia', 237),
  ('ZABALA', 'parroquia', 237);

-- Parroquia del muncicipio Arismendi, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ARISMENDI', 'parroquia', 238),
  ('CM. LA ASUNCION', 'parroquia', 238);

-- PArroquias del municipio GArcia, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. VALLE ESP SANTO', 'parroquia', 239),
  ('FRANCISCO FAJARDO', 'parroquia', 239);

-- Parroquias del municipio Gomez, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SANTA ANA', 'parroquia', 240),
  ('GUEVARA', 'parroquia', 240),
  ('MATASIETE', 'parroquia', 240),
  ('BOLIVAR', 'parroquia', 240),
  ('SUCRE', 'parroquia', 240);

-- Parroquias del municipio Macanao, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BOCA DEL RIO', 'parroquia', 241),
  ('SAN FRANCISCO', 'parroquia', 241);

-- Parroquias del municipio MAneiro, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PAMPATAR', 'parroquia', 242),
  ('AGUIRRE', 'parroquia', 242);

-- PArroquia del municipio Marcano, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. JUAN GRIEGO', 'parroquia', 243),
  ('ADRIAN', 'parroquia', 243);

-- Parroquias del municipio Mariño, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MARIÑO', 'parroquia', 244),
  ('CM. PORLAMAR', 'parroquia', 244);

-- Parroquias del municipio Tubores, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PUNTA DE PIEDRAS', 'parroquia', 245),
  ('LOS BARALES', 'parroquia', 245);

-- Parroquias del municipio Villalba, Nueva Esparta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN PEDRO DE COCHE', 'parroquia', 246),
  ('VICENTE FUENTES', 'parroquia', 246);

-- Parroquia del municipio Agua Blanca, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. AGUA BLANCA', 'parroquia', 247);

-- Parroquias del municipio Araure, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ARAURE', 'parroquia', 248),
  ('RIO ACARIGUA', 'parroquia', 248);

-- Parroquias del municipio Esteller, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PIRITU', 'parroquia', 249),
  ('UVERAL', 'parroquia', 249);

-- Parroquias del municipio Guanare, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. GUANARE', 'parroquia', 250),
  ('CORDOBA', 'parroquia', 250),
  ('SAN JUAN GUANAGUANARE', 'parroquia', 250),
  ('VIRGEN DE LA COROMOTO', 'parroquia', 250),
  ('SAN JOSE DE LA MONTAÑA', 'parroquia', 250);

-- Parroquias del municipio Guanarito, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. GUANARITO', 'parroquia', 251),
  ('TRINIDAD DE LA CAPILLA', 'parroquia', 251),
  ('DIVINA PASTORA', 'parroquia', 251);

-- Parroquias del municipio Jose Vicente de Unda, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CHABASQUEN', 'parroquia', 252),
  ('PEÑA BLANCA', 'parroquia', 252);

-- Parroquias del municipio OSpino, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. OSPINO', 'parroquia', 253),
  ('APARICION', 'parroquia', 253),
  ('LA ESTACION', 'parroquia', 253);

-- Parroquias del municipio Paez, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ACARIGUA', 'parroquia', 254),
  ('PAYARA', 'parroquia', 254),
  ('PIMPINELA', 'parroquia', 254),
  ('RAMON PERAZA', 'parroquia', 254);

-- Parroquias del municipio Papelon, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PAPELON', 'parroquia', 255),
  ('CAÑO DELGADITO', 'parroquia', 255);

-- Parroquias del municipio San Genaro de Boconoito, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BOCONOITO', 'parroquia', 256),
  ('ANTOLIN TOVAR AQUINO', 'parroquia', 256);

-- Parroquias del municipio San Rafael de Onoto, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN RAFAEL DE ONOTO', 'parroquia', 257),
  ('SANTA FE', 'parroquia', 257),
  ('THERMO MORLES', 'parroquia', 257);

-- Parroquias del municipio Santa Rosalia, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. EL PLAYON', 'parroquia', 258),
  ('FLORIDA', 'parroquia', 258);

-- Parroquias del municipio Sucre, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BISCUCUY', 'parroquia', 259),
  ('CONCEPCION', 'parroquia', 259),
  ('SAN RAFAEL PALO ALZADO', 'parroquia', 259),
  ('UVENCIO A VELASQUEZ', 'parroquia', 259),
  ('SAN JOSE DE SAGUAZ', 'parroquia', 259),
  ('VILLA ROSA', 'parroquia', 259);

-- PArroquias del municipio Turen, Portuguesa
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. VILLA BRUZUAL', 'parroquia', 260),
  ('CANELONES', 'parroquia', 260),
  ('SANTA CRUZ', 'parroquia', 260),
  ('SAN ISIDRO LABRADOR', 'parroquia', 260);

-- Parroquias del municipio Andres Eloy Blanco, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MARIÑO', 'parroquia', 261),
  ('ROMULO GALLEGOS', 'parroquia', 261);

-- Parroquias del municipio Andres Mata, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOSE DE AREOCUAR', 'parroquia', 262),
  ('TAVERA ACOSTA', 'parroquia', 262);

-- Parroquias del municipio Arismendi, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('RIO CARIBE', 'parroquia', 263),
  ('SAN JUAN GALDONAS', 'parroquia', 263),
  ('PUERTO SANTO', 'parroquia', 263),
  ('EL MORRO DE PTO SANTO', 'parroquia', 263),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 263);

-- Parroquias del municipio Benitez, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL PILAR', 'parroquia', 264),
  ('EL RINCON', 'parroquia', 264),
  ('GUARAUNOS', 'parroquia', 264),
  ('TUNAPUICITO', 'parroquia', 264),
  ('UNION', 'parroquia', 264),
  ('GRAL FCO. A VASQUEZ', 'parroquia', 264);

-- Parroquiasd el municipio Bermudez, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA CATALINA', 'parroquia', 265),
  ('SANTA ROSA', 'parroquia', 265),
  ('SANTA TERESA', 'parroquia', 265),
  ('BOLIVAR', 'parroquia', 265),
  ('MACARAPANA', 'parroquia', 265);

-- Parroquias del municipio Bolivar, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MARIGUITAR', 'parroquia', 266);

-- Parroquias del municipio Cajigal, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('YAGUARAPARO', 'parroquia', 267),
  ('LIBERTAD', 'parroquia', 267),
  ('PAUJIL', 'parroquia', 267);

-- PArroquias del municipio Cruz Salmeron Acosta, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ARAYA', 'parroquia', 268),
  ('MANICUARE', 'parroquia', 268),
  ('CHACOPATA', 'parroquia', 268);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('TUNAPUY', 'parroquia', 269),
  ('CAMPO ELIAS', 'parroquia', 269);

-- Parroquias del municipio Mariño, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('IRAPA', 'parroquia', 270),
  ('CAMPO CLARO', 'parroquia', 270),
  ('SORO', 'parroquia', 270),
  ('SAN ANTONIO DE IRAPA', 'parroquia', 270),
  ('MARABAL', 'parroquia', 270);

-- Parroqui del municipio Mejia, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN ANT DEL GOLFO', 'parroquia', 271);

-- Parroquias del municipio Montes, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CUMANACOA', 'parroquia', 272),
  ('ARENAS', 'parroquia', 272),
  ('ARICAGUA', 'parroquia', 272),
  ('COCOLLAR', 'parroquia', 272),
  ('SAN FERNANDO', 'parroquia', 272),
  ('SAN LORENZO', 'parroquia', 272);

-- Parroquias del municipio Ribero, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CARIACO', 'parroquia', 273),
  ('CATUARO', 'parroquia', 273),
  ('RENDON', 'parroquia', 273),
  ('SANTA CRUZ', 'parroquia', 273),
  ('SANTA MARIA', 'parroquia', 273);

-- Parroquias del municipio Sucre, Sucre
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ALTAGRACIA', 'parroquia', 274),
  ('AYACUCHO', 'parroquia', 274),
  ('SANTA INES', 'parroquia', 274),
  ('VALENTIN VALIENTE', 'parroquia', 274),
  ('SAN JUAN', 'parroquia', 274),
  ('GRAN MARISCAL', 'parroquia', 274),
  ('RAUL LEONI', 'parroquia', 274);

-- Parroquias del municipio Valdez
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GUIRIA', 'parroquia', 275),
  ('CRISTOBAL COLON', 'parroquia', 275),
  ('PUNTA DE PIEDRA', 'parroquia', 275),
  ('BIDEAU', 'parroquia', 275);

-- Parroquias del municipio Andres BEllo, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CORDERO', 'parroquia', 276);

-- Parroquias del municipio Antonio Romulo Costa, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LAS MESAS', 'parroquia', 277);

-- Parroquias del municipio Ayacucho, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. COLON', 'parroquia', 278),
  ('RIVAS BERTI', 'parroquia', 278),
  ('SAN PEDRO DEL RIO', 'parroquia', 278);

-- Parroquias del municipio Bolivar, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN ANT DEL TACHIRA', 'parroquia', 279),
  ('PALOTAL', 'parroquia', 279),
  ('JUAN VICENTE GOMEZ', 'parroquia', 279),
  ('ISAIAS MEDINA ANGARITA', 'parroquia', 279);

-- Parroquias del municipio Cardenas, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. TARIBA', 'parroquia', 280),
  ('LA FLORIDA', 'parroquia', 280),
  ('AMENODORO RANGEL LAMU', 'parroquia', 280);

-- Parroquias del municipio Cordoba, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. STA. ANA  DEL TACHIRA', 'parroquia', 281);

-- Parroquias del municipio Fernandez, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM.SAN RAFAEL DEL PINAL', 'parroquia', 282),
  ('SANTO DOMINGO', 'parroquia', 282),
  ('ALBERTO ADRIANI', 'parroquia', 282);

-- Parroquia del municipio Francisco de Miranda
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN JOSE DE BOLIVAR', 'parroquia', 283);

-- Parroquias del municipio Garcia de Hevia, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA FRIA', 'parroquia', 284),
  ('BOCA DE GRITA', 'parroquia', 284),
  ('JOSE ANTONIO PAEZ', 'parroquia', 284);

-- Parroquias del municipio Guasimas, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PALMIRA', 'parroquia', 285);

-- Parroquias del municipio Independencia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAPACHO NUEVO', 'parroquia', 286),
  ('JUAN GERMAN ROSCIO', 'parroquia', 286),
  ('ROMAN CARDENAS', 'parroquia', 286);

-- Parroquias del municipio Jauregui, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA GRITA', 'parroquia', 287),
  ('EMILIO C. GUERRERO', 'parroquia', 287),
  ('MONS. MIGUEL A SALAS', 'parroquia', 287);

-- Parroquia del municipio Jose MAria Vargas, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. EL COBRE', 'parroquia', 288);

-- Parroquias del municipio Junin, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. RUBIO', 'parroquia', 289),
  ('BRAMON', 'parroquia', 289),
  ('LA PETROLEA', 'parroquia', 289),
  ('QUINIMARI', 'parroquia', 289);

-- PArroquias del municipio Libertad, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CAPACHO VIEJO', 'parroquia', 290),
  ('CIPRIANO CASTRO', 'parroquia', 290),
  ('MANUEL FELIPE RUGELES', 'parroquia', 290);

-- Parroquias del municipio Libertador, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. ABEJALES', 'parroquia', 291),
  ('SAN JOAQUIN DE NAVAY', 'parroquia', 291),
  ('DORADAS', 'parroquia', 291),
  ('EMETERIO OCHOA', 'parroquia', 291);

-- Parroquias del municipio Lobatera, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LOBATERA', 'parroquia', 292),
  ('CONSTITUCION', 'parroquia', 292);

-- Parroquia del municipio Michelena
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. MICHELENA', 'parroquia', 293);

-- Parroquias del municipio Panamericano, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. COLONCITO', 'parroquia', 294),
  ('LA PALMITA', 'parroquia', 294);

-- Parroquias del municipio Pedro Maria Ureña, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. UREÑA', 'parroquia', 295),
  ('NUEVA ARCADIA', 'parroquia', 295);

-- Parroqui del municipio Rafael Urdaneta, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. DELICIAS', 'parroquia', 296);

-- Parroquias del municipio Samuel Dario Maldonado
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. LA TENDIDA', 'parroquia', 297),
  ('BOCONO', 'parroquia', 297),
  ('HERNANDEZ', 'parroquia', 297);

-- Parroquias del municipio San Cristobal, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LA CONCORDIA', 'parroquia', 298),
  ('PEDRO MARIA MORANTES', 'parroquia', 298),
  ('SN JUAN BAUTISTA', 'parroquia', 298),
  ('SAN SEBASTIAN', 'parroquia', 298),
  ('DR. FCO. ROMERO LOBO', 'parroquia', 298);

-- Parroquia del municipio San Judas Tadeo, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. UMUQUENA', 'parroquia', 299);

-- Parroquias del municipio Seboruco, TAchira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SEBORUCO', 'parroquia', 300);

-- Parroquias del municipio Simon Rodriguez, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN SIMON', 'parroquia', 301);

-- Parroquias del municipio Sucre, TAchira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. QUENIQUEA', 'parroquia', 302),
  ('SAN PABLO', 'parroquia', 302),
  ('ELEAZAR LOPEZ CONTRERA', 'parroquia', 302);

-- Parroquias del municipio Torbes, Tachira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN JOSECITO', 'parroquia', 303);

-- Parroquias del municipio Uribante, TAchira
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. PREGONERO', 'parroquia', 304),
  ('CARDENAS', 'parroquia', 304),
  ('POTOSI', 'parroquia', 304),
  ('JUAN PABLO PEÑALOZA', 'parroquia', 304);


-- PArroquias del municipio Andres Bello, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA ISABEL', 'parroquia', 305),
  ('ARAGUANEY', 'parroquia', 305),
  ('EL JAGUITO', 'parroquia', 305),
  ('LA ESPERANZA', 'parroquia', 305);

-- Parroquias del municipio Bocono, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BOCONO', 'parroquia', 306),
  ('EL CARMEN', 'parroquia', 306),
  ('MOSQUEY', 'parroquia', 306),
  ('AYACUCHO', 'parroquia', 306),
  ('BURBUSAY', 'parroquia', 306),
  ('GENERAL RIVAS', 'parroquia', 306),
  ('MONSEÑOR JAUREGUI', 'parroquia', 306),
  ('RAFAEL RANGEL', 'parroquia', 306),
  ('SAN JOSE', 'parroquia', 306),
  ('SAN MIGUEL', 'parroquia', 306),
  ('GUARAMACAL', 'parroquia', 306),
  ('LA VEGA DE GUARAMACAL', 'parroquia', 306);

-- Parroquias del municipio Bolivar
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SABANA GRANDE', 'parroquia', 307),
  ('CHEREGUE', 'parroquia', 307),
  ('GRANADOS', 'parroquia', 307);

-- Parroquias del municipio Candelaria, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CHEJENDE', 'parroquia', 308),
  ('CARRILLO', 'parroquia', 308),
  ('CEGARRA', 'parroquia', 308),
  ('BOLIVIA', 'parroquia', 308),
  ('MANUEL SALVADOR ULLOA', 'parroquia', 308),
  ('SAN JOSE', 'parroquia', 308),
  ('ARNOLDO GABALDON', 'parroquia', 308);

-- Parroquias del municipio Carache, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CARACHE', 'parroquia', 309),
  ('LA CONCEPCION', 'parroquia', 309),
  ('CUICAS', 'parroquia', 309),
  ('PANAMERICANA', 'parroquia', 309),
  ('SANTA CRUZ', 'parroquia', 309);

-- Parroquias del municipio Carvajal, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CARVAJAL', 'parroquia', 310),
  ('ANTONIO N BRICEÑO', 'parroquia', 310),
  ('CAMPO ALEGRE', 'parroquia', 310),
  ('JOSE LEONARDO SUAREZ', 'parroquia', 310);

-- Parroquias del municipio Escuque
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ESCUQUE', 'parroquia', 311),
  ('SABANA LIBRE', 'parroquia', 311),
  ('LA UNION', 'parroquia', 311),
  ('SANTA RITA', 'parroquia', 311);

-- Parroquias del municipio Juan Vicente Campos Elias
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CAMPO ELIAS', 'parroquia', 312),
  ('ARNOLDO GABALDON', 'parroquia', 312),
  ('SANTA APOLONIA', 'parroquia', 312);

-- PArroquias del municipio La Ceiba, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LA CEIBA', 'parroquia', 313),
  ('EL PROGRESO', 'parroquia', 313),
  ('TRES DE FEBRERO', 'parroquia', 313);

-- Parroquias del municipio Marquez Cañizales
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL SOCORRO', 'parroquia', 314),
  ('LOS CAPRICHOS', 'parroquia', 314),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 314);

-- PArroquias del municipio Miranda, TRujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('EL DIVIDIVE', 'parroquia', 315),
  ('AGUA CALIENTE', 'parroquia', 315),
  ('EL CENIZO', 'parroquia', 315),
  ('AGUA SANTA', 'parroquia', 315),
  ('VALERITA', 'parroquia', 315);

-- Parroquias del municipio Monte Carmelo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MONTE CARMELO', 'parroquia', 316),
  ('BUENA VISTA', 'parroquia', 316),
  ('STA MARIA DEL HORCON', 'parroquia', 316);

-- PArroquias del municipio Motatan, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MOTATAN', 'parroquia', 317),
  ('EL BAÑO', 'parroquia', 317),
  ('JALISCO', 'parroquia', 317);

-- Parroquias del municipio Pampan, TRujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PAMPAN', 'parroquia', 318),
  ('SANTA ANA', 'parroquia', 318),
  ('LA PAZ', 'parroquia', 318),
  ('FLOR DE PATRIA', 'parroquia', 318);

-- Parroquias del municipio PAmpanito, TRujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PAMPANITO', 'parroquia', 319),
  ('PAMPANITO II', 'parroquia', 319),
  ('LA CONCEPCION', 'parroquia', 319);

-- Parroquias del municipio Rangel, TRujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BETIJOQUE', 'parroquia', 320),
  ('JOSE G HERNANDEZ', 'parroquia', 320),
  ('LA PUEBLITA', 'parroquia', 320),
  ('EL CEDRO', 'parroquia', 320);

-- Parroquias del municipio Sucre, TRujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SABANA DE MENDOZA', 'parroquia', 321),
  ('JUNIN', 'parroquia', 321),
  ('VALMORE RODRIGUEZ', 'parroquia', 321),
  ('EL PARAISO', 'parroquia', 321);

-- Parroquias del municipio Trujillo, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CRISTOBAL MENDOZA', 'parroquia', 322),
  ('CHIQUINQUIRA', 'parroquia', 322),
  ('MATRIZ', 'parroquia', 322),
  ('MONSEÑOR CARRILLO', 'parroquia', 322),
  ('CRUZ CARRILLO', 'parroquia', 322),
  ('ANDRES LINARES', 'parroquia', 322),
  ('TRES ESQUINAS', 'parroquia', 322);

-- Parroquias del municipio Urdaneta, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LA QUEBRADA', 'parroquia', 323),
  ('JAJO', 'parroquia', 323),
  ('LA MESA', 'parroquia', 323),
  ('SANTIAGO', 'parroquia', 323),
  ('CABIMBU', 'parroquia', 323),
  ('TUÑAME', 'parroquia', 323);

--Parroquias del municipio Valera, Trujillo
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MERCEDES DIAZ', 'parroquia', 324),
  ('JUAN IGNACIO MONTILLA', 'parroquia', 324),
  ('LA BEATRIZ', 'parroquia', 324),
  ('MENDOZA', 'parroquia', 324),
  ('LA PUERTA', 'parroquia', 324),
  ('SAN LUIS', 'parroquia', 324);

-- Parroquias del municipio Aristides Bastidas, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN PABLO', 'parroquia', 325);

-- Parroquia del municipio Bolivar, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. AROA', 'parroquia', 326);

-- Parroquias del municipio Bruzual
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. CHIVACOA', 'parroquia', 327),
  ('CAMPO ELIAS', 'parroquia', 327);

-- Parroquias del municipio Cocorote, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. COCOROTE', 'parroquia', 328);

-- Parroquia del municipio Independencia, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. INDEPENDENCIA', 'parroquia', 329);

-- Parroquia del municipio Jose Antonio Paez, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SABANA DE PARRA', 'parroquia', 330);

-- Parroquia del municipio La Trinidad, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. BORAURE', 'parroquia', 331);

-- Parroquia del municipio MAnuel Monge, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. YUMARE', 'parroquia', 332);

-- Parroquias del municipio Nirgua, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. NIRGUA', 'parroquia', 333),
  ('SALOM', 'parroquia', 333),
  ('TEMERLA', 'parroquia', 333);

-- Parroquias del municipio Peña, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. YARITAGUA', 'parroquia', 334),
  ('SAN ANDRES', 'parroquia', 334);

-- Parroquias del municipio San Felipe
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. SAN FELIPE', 'parroquia', 335),
  ('ALBARICO', 'parroquia', 335),
  ('SAN JAVIER', 'parroquia', 335);

-- Parroquia del municipio Sucre, Yaracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. GUAMA', 'parroquia', 336);

-- PArroquia del municipio Urachiche, YAracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. URACHICHE', 'parroquia', 337);

-- Parroquias del municipio Veroes, YAracuy
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('CM. FARRIAR', 'parroquia', 338),
  ('EL GUAYABO', 'parroquia', 338);

-- Parroquias del municipio Almirante Padilla, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MONAGAS', 'parroquia', 339),
  ('ISLA DE TOAS', 'parroquia', 339);

-- Parroquias del municipio BAralt, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GENERAL URDANETA', 'parroquia', 340),
  ('LIBERTADOR', 'parroquia', 340),
  ('MANUEL GUANIPA MATOS', 'parroquia', 340),
  ('MARCELINO BRICEÑO', 'parroquia', 340),
  ('SAN TIMOTEO', 'parroquia', 340),
  ('PUEBLO NUEVO', 'parroquia', 340);

-- Parroquias del municipio Cabimas, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('AMBROSIO', 'parroquia', 341),
  ('GERMAN RIOS LINARES', 'parroquia', 341),
  ('JORGE HERNANDEZ', 'parroquia', 341),
  ('LA ROSA', 'parroquia', 341),
  ('PUNTA GORDA', 'parroquia', 341),
  ('CARMEN HERRERA', 'parroquia', 341),
  ('SAN BENITO', 'parroquia', 341),
  ('ROMULO BETANCOURT', 'parroquia', 341),
  ('ARISTIDES CALVANI', 'parroquia', 341);

-- PArroquias del municipio Catatumbo, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('UDON PEREZ', 'parroquia', 342),
  ('ENCONTRADOS', 'parroquia', 342);

-- Parroquias del municipio Colon, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SANTA CRUZ DEL ZULIA', 'parroquia', 343),
  ('URRIBARRI', 'parroquia', 343),
  ('MORALITO', 'parroquia', 343),
  ('SAN CARLOS DEL ZULIA', 'parroquia', 343),
  ('SANTA BARBARA', 'parroquia', 343);

-- Parroquias del municipio Francisco JAvier Pulgar, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SIMON RODRIGUEZ', 'parroquia', 344),
  ('CARLOS QUEVEDO', 'parroquia', 344),
  ('FRANCISCO J PULGAR', 'parroquia', 344);

-- PArroquias del municipio Guajira, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GOAJIRA', 'parroquia', 345),
  ('ELIAS SANCHEZ RUBIO', 'parroquia', 345),
  ('SINAMAICA', 'parroquia', 345),
  ('ALTA GUAJIRA', 'parroquia', 345);

-- Parroquias del municipio Jesus Enrique Lossada, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('JOSE RAMON YEPEZ', 'parroquia', 346),
  ('LA CONCEPCION', 'parroquia', 346),
  ('SAN JOSE', 'parroquia', 346),
  ('MARIANO PARRA LEON', 'parroquia', 346);

-- Parroquias del municipio Jesus Maria Semprun
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BARI', 'parroquia', 347),
  ('JESUS M SEMPRUN', 'parroquia', 347);

-- Parroquias del municipio La Cañada de Urdaneta
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ANDRES BELLO', 'parroquia', 348),
  ('POTRERITOS', 'parroquia', 348),
  ('EL CARMELO', 'parroquia', 348),
  ('CHIQUINQUIRA', 'parroquia', 348),
  ('CONCEPCION', 'parroquia', 348);

-- Parroquias del municipio Lagunillas
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('ELEAZAR LOPEZ C', 'parroquia', 349),
  ('ALONSO DE OJEDA', 'parroquia', 349),
  ('VENEZUELA', 'parroquia', 349),
  ('CAMPO LARA', 'parroquia', 349),
  ('LIBERTAD', 'parroquia', 349);

-- PArroquias del municipio Machiques de Perija, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('SAN JOSE DE PERIJA', 'parroquia', 350),
  ('BARTOLOME DE LAS CASAS', 'parroquia', 350),
  ('LIBERTAD', 'parroquia', 350),
  ('RIO NEGRO', 'parroquia', 350);

-- Parroquias del municipio Mara, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('LUIS DE VICENTE', 'parroquia', 351),
  ('RICAURTE', 'parroquia', 351),
  ('MONS.MARCOS SERGIO G', 'parroquia', 351),
  ('SAN RAFAEL', 'parroquia', 351),
  ('LAS PARCELAS', 'parroquia', 351),
  ('TAMARE', 'parroquia', 351),
  ('LA SIERRITA', 'parroquia', 351);

-- Parroquias del municipio Maracaibo, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('BOLIVAR', 'parroquia', 352),
  ('COQUIVACOA', 'parroquia', 352),
  ('CRISTO DE ARANZA', 'parroquia', 352),
  ('CHIQUINQUIRA', 'parroquia', 352),
  ('SANTA LUCIA', 'parroquia', 352),
  ('OLEGARIO VILLALOBOS', 'parroquia', 352),
  ('JUANA DE AVILA', 'parroquia', 352),
  ('CARACCIOLO PARRA PEREZ', 'parroquia', 352),
  ('IDELFONZO VASQUEZ', 'parroquia', 352),
  ('CACIQUE MARA', 'parroquia', 352),
  ('CECILIO ACOSTA', 'parroquia', 352),
  ('RAUL LEONI', 'parroquia', 352),
  ('FRANCISCO EUGENIO B', 'parroquia', 352),
  ('MANUEL DAGNINO', 'parroquia', 352),
  ('LUIS HURTADO HIGUERA', 'parroquia', 352),
  ('VENANCIO PULGAR', 'parroquia', 352),
  ('ANTONIO BORJAS ROMERO', 'parroquia', 352),
  ('SAN ISIDRO', 'parroquia', 352);

-- Parroquias del municipio Miranda, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('FARIA', 'parroquia', 353),
  ('SAN ANTONIO', 'parroquia', 353),
  ('ANA MARIA CAMPOS', 'parroquia', 353),
  ('SAN JOSE', 'parroquia', 353),
  ('ALTAGRACIA', 'parroquia', 353);

-- Parroquias del municipio Rosario de Perija, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('DONALDO GARCIA', 'parroquia', 354),
  ('SIXTO ZAMBRANO', 'parroquia', 354),
  ('EL ROSARIO', 'parroquia', 354);

-- Parroquia del municipio San Francisco, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('MARCIAL HERNANDEZ', 'parroquia', 355),
  ('FRANCISCO OCHOA', 'parroquia', 355),
  ('SAN FRANCISCO', 'parroquia', 355),
  ('EL BAJO', 'parroquia', 355),
  ('DOMITILA FLORES', 'parroquia', 355),
  ('LOS CORTIJOS', 'parroquia', 355);

-- Parroquias del municipio Santa Rita, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('PEDRO LUCAS URRIBARRI', 'parroquia', 356),
  ('SANTA RITA', 'parroquia', 356),
  ('JOSE CENOVIO URRIBARR', 'parroquia', 356),
  ('EL MENE', 'parroquia', 356);

-- PArroquias del municipio Simon Bolivar, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('RAFAEL MARIA BARALT', 'parroquia', 357),
  ('MANUEL MANRIQUE', 'parroquia', 357),
  ('RAFAEL URDANETA', 'parroquia', 357);

-- Parroquias del municipio Sucre, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('GIBRALTAR', 'parroquia', 358),
  ('HERAS', 'parroquia', 358),
  ('M.ARTURO CELESTINO A', 'parroquia', 358),
  ('ROMULO GALLEGOS', 'parroquia', 358),
  ('BOBURES', 'parroquia', 358),
  ('EL BATEY', 'parroquia', 358);

-- Parroquias del municipio Valmore Rodriguez, Zulia
INSERT INTO Lugar (lugar_nombre, lugar_tipo, lugar_fk_lugar)
VALUES
  ('RAUL CUENCA', 'parroquia', 359),
  ('LA VICTORIA', 'parroquia', 359),
  ('RAFAEL URDANETA', 'parroquia', 359);

-- PERSONA JURIDICA
INSERT INTO Persona_Juridica (
    persona_jur_rif, 
    persona_jur_direccion_fiscal, 
    persona_jur_razon_social, 
    persona_jur_pagina_web, 
    persona_jur_direccion_fisica, 
    pj_fk_lugar_fiscal, 
    pj_fk_lugar_fisica, 
    persona_jur_fecha_inicio_op
)VALUES
('J-00000001-1', 'Calle 1, Amazonas', 'Empresa A1', 'www.empresaA1.com', 'Calle 1, Amazonas', 1, 1, '2023-01-01'),
('J-00000002-1', 'Calle 2, Amazonas', 'Empresa A2', 'www.empresaA2.com', 'Calle 2, Amazonas', 1, 1, '2023-01-02'),
('J-00000003-1', 'Calle 3, Amazonas', 'Empresa A3', 'www.empresaA3.com', 'Calle 3, Amazonas', 1, 1, '2023-01-03'),
('J-00000004-1', 'Calle 4, Amazonas', 'Empresa A4', 'www.empresaA4.com', 'Calle 4, Amazonas', 1, 1, '2023-01-04'),
('J-00000001-2', 'Calle 1, Anzoategui', 'Empresa An1', 'www.empresaA1.com', 'Calle 1, Anzoategui', 2, 2, '2023-01-01'),
('J-00000002-2', 'Calle 2, Anzoategui', 'Empresa An2', 'www.empresaA2.com', 'Calle 2, Anzoategui', 2, 2, '2023-01-02'),
('J-00000003-2', 'Calle 3,Anzoategui', 'Empresa An3', 'www.empresaA3.com', 'Calle 3, Anzoategui', 2, 2, '2023-01-03'),
('J-00000004-2', 'Calle 4,Anzoategui', 'Empresa An4', 'www.empresaA4.com', 'Calle 4, Anzoategui', 2, 2, '2023-01-04'),
('J-00000001-3', 'Calle 1, Apure', 'Empresa Ap1', 'www.empresaA1.com', 'Calle 1, Anzoategui', 3, 3, '2023-01-01'),
('J-00000002-3', 'Calle 2, Apure', 'Empresa Ap2', 'www.empresaA2.com', 'Calle 2, Anzoategui', 3, 3, '2023-01-02'),
('J-00000003-3', 'Calle 3,Apure', 'Empresa Ap3', 'www.empresaA3.com', 'Calle 3, Anzoategui', 3, 3, '2023-01-03'),
('J-00000004-3', 'Calle 4,Apure', 'Empresa Ap4', 'www.empresaA4.com', 'Calle 4, Anzoategui', 3, 3, '2023-01-04'),
('J-00000001-4', 'Calle 1, Aragua', 'Empresa Ar1', 'www.empresaA1.com', 'Calle 1, Aragua', 4, 4, '2023-01-01'),
('J-00000002-4', 'Calle 2, Aragua', 'Empresa Ar2', 'www.empresaA2.com', 'Calle 2, Aragua', 4, 4, '2023-01-02'),
('J-00000003-4', 'Calle 3,Aragua', 'Empresa Ar3', 'www.empresaA3.com', 'Calle 3, Aragua', 4, 4, '2023-01-03'),
('J-00000004-4', 'Calle 4,Aragua', 'Empresa Ar4', 'www.empresaA4.com', 'Calle 4, Aragua', 4, 4, '2023-01-04'),
('J-00000004-5', 'Calle 1, Barinas', 'Empresa B1', 'www.empresaA4.com', 'Calle 4, Barinas', 5, 5, '2023-01-04'),
('J-00000001-5', 'Calle 2, Barinas', 'Empresa B2', 'www.empresaA1.com', 'Calle 1, Barinas', 5, 5, '2023-01-01'),
('J-00000002-5', 'Calle 3, Barinas', 'Empresa B3', 'www.empresaA2.com', 'Calle 2, Barinas', 5, 5, '2023-01-02'),
('J-00000003-5', 'Calle 4, Barinas', 'Empresa B4', 'www.empresaA3.com', 'Calle 3, Barinas', 5, 5, '2023-01-03'),
('J-00000004-6', 'Calle 1, Bolivar', 'Empresa Bo1', 'www.empresaA4.com', 'Calle 4, Bolivar', 6, 6, '2023-01-04'),
('J-00000001-6', 'Calle 2, Bolivar', 'Empresa Bo2', 'www.empresaA1.com', 'Calle 1, Bolivar', 6, 6, '2023-01-01'),
('J-00000002-6', 'Calle 3, Bolivar', 'Empresa Bo3', 'www.empresaA2.com', 'Calle 2, Bolivar', 6, 6, '2023-01-02'),
('J-00000003-6', 'Calle 4,Bolivar', 'Empresa Bo4', 'www.empresaA3.com', 'Calle 3,Bolivar', 6, 6, '2023-01-03'),
('J-00000004-7', 'Calle 1, Carabobo', 'Empresa C1', 'www.empresaA4.com', 'Calle 4, Carabobo', 7, 7, '2023-01-04'),
('J-00000001-7', 'Calle 2, Carabobo', 'Empresa C2', 'www.empresaA1.com', 'Calle 1, Carabobo', 7, 7, '2023-01-01'),
('J-00000002-7', 'Calle 3, Carabobo', 'Empresa C3', 'www.empresaA2.com', 'Calle 2, Carabobo', 7, 7, '2023-01-02'),
('J-00000003-7', 'Calle 4,Carabobo', 'Empresa C4', 'www.empresaA3.com', 'Calle 3,Carabobo', 7, 7, '2023-01-03'),
('J-00000004-8', 'Calle 1, Cojedes', 'Empresa Co1', 'www.empresaA4.com', 'Calle 4, Cojedes', 8, 8, '2023-01-04'),
('J-00000001-8', 'Calle 2, Cojedes', 'Empresa Co2', 'www.empresaA1.com', 'Calle 1, Cojedes', 8, 8, '2023-01-01'),
('J-00000002-8', 'Calle 3, Cojedes', 'Empresa Co3', 'www.empresaA2.com', 'Calle 2, Cojedes', 8, 8, '2023-01-02'),
('J-00000003-8', 'Calle 4,Cojedes', 'Empresa Co4', 'www.empresaA3.com', 'Calle 3,Cojedes', 8 , 8, '2023-01-03'),
('J-00000004-9', 'Calle 1, Delta Amacuro', 'Empresa DA1', 'www.empresaA4.com', 'Calle 4, Delta Amacuro', 9, 9, '2023-01-04'),
('J-00000001-9', 'Calle 2, Delta Amacuro', 'Empresa DA2', 'www.empresaA1.com', 'Calle 1, Delta Amacuro', 9, 9, '2023-01-01'),
('J-00000002-9', 'Calle 3, Delta Amacuro', 'Empresa DA3', 'www.empresaA2.com', 'Calle 2, Delta Amacuro', 9, 9, '2023-01-02'),
('J-00000003-9', 'Calle 4, Delta Amacuro', 'Empresa DA4', 'www.empresaA3.com', 'Calle 3,Delta Amacuro', 9 , 9, '2023-01-03'),
('J-00000004-10', 'Calle 1, Distrito Capital', 'Empresa DC1', 'www.empresaA4.com', 'Calle 4, Distrito Capital', 10, 10, '2023-01-04'),
('J-00000001-10', 'Calle 2, Distrito Capital', 'Empresa DC2', 'www.empresaA1.com', 'Calle 1, Distrito Capital', 10, 10, '2023-01-01'),
('J-00000002-10', 'Calle 3, Distrito Capital', 'Empresa DC3', 'www.empresaA2.com', 'Calle 2, Distrito Capital', 10, 10, '2023-01-02'),
('J-00000003-10', 'Calle 4, Distrito Capital', 'Empresa DC4', 'www.empresaA3.com', 'Calle 3, Distrito Capital', 10, 10, '2023-01-03'),
('J-00000004-11', 'Calle 1, Falcon', 'Empresa f1', 'www.empresaA4.com', 'Calle 4, Falcon', 11, 11, '2023-01-04'),
('J-00000001-11', 'Calle 2, Falcon', 'Empresa f2', 'www.empresaA1.com', 'Calle 1, Falcon', 11, 11, '2023-01-01'),
('J-00000002-11', 'Calle 3, Falcon', 'Empresa f3', 'www.empresaA2.com', 'Calle 2, Falcon', 11, 11, '2023-01-02'),
('J-00000003-11', 'Calle 4, Falcon', 'Empresa f4', 'www.empresaA3.com', 'Calle 3, Falcon', 11, 11, '2023-01-03'),
('J-00000004-12', 'Calle 1, Guarico', 'Empresa g1', 'www.empresaA4.com', 'Calle 4, Guarico', 12, 12, '2023-01-04'),
('J-00000001-12', 'Calle 2, Guarico', 'Empresa g2', 'www.empresaA1.com', 'Calle 1, Guarico', 12, 12, '2023-01-01'),
('J-00000002-12', 'Calle 3, Guarico', 'Empresa g3', 'www.empresaA2.com', 'Calle 2, Guarico', 12, 12, '2023-01-02'),
('J-00000003-12', 'Calle 4, Guarico', 'Empresa g4', 'www.empresaA3.com', 'Calle 3, Guarico', 12, 12, '2023-01-03'),
('J-00000004-13', 'Calle 1, Lara', 'Empresa L1', 'www.empresaA4.com', 'Calle 4, Lara', 13, 13, '2023-01-04'),
('J-00000001-13', 'Calle 2, Lara', 'Empresa L2', 'www.empresaA1.com', 'Calle 1, Lara', 13, 13, '2023-01-01'),
('J-00000002-13', 'Calle 3, Lara', 'Empresa L3', 'www.empresaA2.com', 'Calle 2, Lara', 13, 13, '2023-01-02'),
('J-00000003-13', 'Calle 4, Lara', 'Empresa L4', 'www.empresaA3.com', 'Calle 3, Lara', 13, 13, '2023-01-03'),
('J-00000004-14', 'Calle 1, La Guaira', 'Empresa Lg1', 'www.empresaA4.com', 'Calle 4, La Guaira', 14, 14, '2023-01-04'),
('J-00000001-14', 'Calle 2, La Guaira', 'Empresa Lg2', 'www.empresaA1.com', 'Calle 1, La Guaira', 14, 14, '2023-01-01'),
('J-00000002-14', 'Calle 3, La Guaira', 'Empresa Lg3', 'www.empresaA2.com', 'Calle 2, La Guaira', 14, 14, '2023-01-02'),
('J-00000003-14', 'Calle 4, La Guaira', 'Empresa Lg4', 'www.empresaA3.com', 'Calle 3, La Guaira', 14, 14, '2023-01-03'),
('J-00000004-15', 'Calle 1, Merida', 'Empresa m1', 'www.empresaA4.com', 'Calle 4, Merida', 15, 15, '2023-01-04'),
('J-00000001-15', 'Calle 2, Merida', 'Empresa m2', 'www.empresaA1.com', 'Calle 1, Merida', 15, 15, '2023-01-01'),
('J-00000002-16', 'Calle 3, Miranda', 'Empresa mi3', 'www.empresaA2.com', 'Calle 2, Miranda', 16, 16, '2023-01-02'),
('J-00000003-16', 'Calle 4, Miranda', 'Empresa mi4', 'www.empresaA3.com', 'Calle 3, Miranda', 16, 16, '2023-01-03'),
('J-00000004-17', 'Calle 1, Monagas', 'Empresa mo1', 'www.empresaA4.com', 'Calle 4,  Monagas', 17, 17, '2023-01-04'),
('J-00000001-17', 'Calle 2, Monagas', 'Empresa mo2', 'www.empresaA1.com', 'Calle 1,  Monagas', 17, 17, '2023-01-01'),
('J-00000002-18', 'Calle 3, Nueva Esparta', 'Empresa mi3', 'www.empresaA2.com', 'Calle 2, Miranda', 18, 18, '2023-01-02'),
('J-00000003-18', 'Calle 4, Nueva Esparta', 'Empresa mi4', 'www.empresaA3.com', 'Calle 3, Miranda', 18, 18, '2023-01-03'),
('J-00000004-19', 'Calle 1, Portuguesa', 'Empresa p1', 'www.empresaA4.com', 'Calle 4,  Portuguesa', 19, 19, '2023-01-04'),
('J-00000001-19', 'Calle 2, Portuguesa', 'Empresa p2', 'www.empresaA1.com', 'Calle 1,  Portuguesa', 19, 19, '2023-01-01'),
('J-00000002-20', 'Calle 3, Sucre', 'Empresa mi3', 'www.empresaA2.com', 'Calle 2, Miranda', 20, 20, '2023-01-02'),
('J-00000003-20', 'Calle 4, Sucre', 'Empresa mi4', 'www.empresaA3.com', 'Calle 3, Sucre', 20, 20, '2023-01-03'),
('J-00000004-21', 'Calle 1, Tachira', 'Empresa t1', 'www.empresaA4.com', 'Calle 4,  Tachira', 21, 21, '2023-01-04'),
('J-00000001-21', 'Calle 2,  Tachira', 'Empresa t2', 'www.empresaA1.com', 'Calle 1,   Tachira', 21, 21, '2023-01-01'),
('J-00000002-22', 'Calle 3, Trujillo', 'Empresa tru3', 'www.empresaA2.com', 'Calle 2, Trujillo', 22, 22, '2023-01-02'),
('J-00000003-22', 'Calle 4, Trujillo', 'Empresa tru4', 'www.empresaA3.com', 'Calle 3, Trujillo', 22, 22, '2023-01-03'),
('J-00000004-23', 'Calle 1, Yaracuy', 'Empresa y1', 'www.empresaA4.com', 'Calle 4,  Yaracuy', 23, 23, '2023-01-04'),
('J-00000001-23', 'Calle 2,  Yaracuy', 'Empresa y2', 'www.empresaA1.com', 'Calle 1,   Yaracuy', 23, 23, '2023-01-01'),
('J-00000002-24', 'Calle 3, Zulia', 'Empresa zu3', 'www.empresaA2.com', 'Calle 2, Zulia', 24, 24, '2023-01-02'),
('J-00000003-24', 'Calle 4, Zulia', 'Empresa zu4', 'www.empresaA3.com', 'Calle 3, Zulia', 24, 24, '2023-01-03');


--CLIENTE JURIDICO
INSERT INTO Cliente_Juridico (cj_fk_persona_juri)
VALUES
(1), (2), (3), (4), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37),
(38), (39), (40), (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51), (52), (53), (54), (55), (56), (57), (58), (59), (60), (61);


-- CORREO

INSERT INTO Correo (
  correo_nombre, FK_persona_jur)
VALUES 
  ('abc@gmail.com', 1),
  ('xyz@gmail.com', 2),
  ('lmn@gmails.com', 3),
  ('pqr@gmail.com', 4),
  ('uvw@gmail.com', 5),
  ('alpha@gmail.com', 6),
  ('beta@gmail.com', 7),
  ('gamma@gmail.com', 8),
  ('delta@gmails.com', 9),
  ('omega@gmailp.com', 10),
  ('aeropostal@gmail.com', 11),
  ('rutaca@gmail.com', 12),
  ('conviasa@gmail.com', 13),
  ('avior@gmail.com', 14),
  ('laser@gmail.com', 15);


-- TELEFONO
INSERT INTO Telefono (
  telefono_codigo_area, telefono_numero, FK_persona_jur)
VALUES 
  ('0212','1234567', 1),
  ('0212','9876543', 2),
  ('0212','8765432', 3),
  ('0212','7654321', 4),
  ('0212','6543210', 5),
  ('0212','5432109', 6),
  ('0212','4321098', 7),
  ('0212','3210987', 8),
  ('0212','2109876', 9),
  ('0212','1098765', 10),
  ('0212','7560184', 11),
  ('0212','0001071', 12),
  ('0212','3133033', 13),
  ('0212','5142635', 14),
  ('0212','3002159', 15);

-- Proveedor (calificacion del 1 al 10)

INSERT INTO proveedor (prov_fk_persona_juri, proveedor_calificacion)
VALUES
  (1, 8),
  (2, 7),
  (3, 6),
  (4, 5),
  (5, 4),
  (6, 3),
  (7, 2),
  (8, 1),
  (9, 10),
  (10, 9),
  (11, 7),
  (12, 6),
  (13, 5),
  (14, 4),
  (15, 3),
  (16, 2),
  (17, 1),
  (18, 10),
  (19, 9),
  (20, 4),
  (21, 3),
  (22, 2),
  (23, 1),
  (24, 10),
  (25, 10),
  (26, 9),
  (27, 7),
  (28, 6),
  (29, 5),
  (30, 4),
  (31, 3),
  (32, 2),
  (33, 2),
  (34, 2),
  (44, 2),
  (55, 1),
  (56, 10),
  (66, 9),
  (67, 4),
  (68, 3),
  (69, 2),
  (70,6),
  (71,9),
  (72,2),
  (73,5),
  (74,9),
  (75,8),
  (76,8);

INSERT INTO Persona_Natural (
  persona_nat_rif, persona_nat_direccion_fiscal, persona_nat_cedula, persona_nat_p_nombre, persona_nat_s_nombre,
  persona_nat_p_apellido, persona_nat_s_apellido, persona_nat_fecha_nac, FK_lugar_fiscal
) VALUES
  ('V123456789', 'Av. Principal, Edificio Residencial', '21478963', 'Juan', 'Carlos', 'Pérez', 'Gómez', '1990-05-15', 15),
  ('V98765432', 'Calle Empresarial, Edif. Ejecutivo', '28569714', 'María', 'Isabel', 'López', 'González', '1985-12-08', 15),
  ('V876543210', 'Ruta Empresarial, Edif. Plaza', '15896374', 'Carlos', NULL, 'Martínez', 'Fernández', '1978-09-23', 15),
  ('V567890123', 'Calle de Negocios, Torre A', '20076865', 'Ana', 'Carolina', 'Rodríguez', 'Mendoza', '1982-03-02', 15),
  ('V940837293', 'Zona Industrial, Edif. Central', '29097425', 'Luis', NULL, 'Gutiérrez', NULL, '1995-06-10', 16),
  ('V274639284', 'Avenida Principal, Edificio Comercial', '8987651', 'Elena', 'María', 'Fernández', 'Pérez', '1987-11-30', 16),
  ('V093749273', 'Calle Empresarial, Edif. Ejecutivo', '8098943', 'Miguel', NULL, 'Sánchez', NULL, '1992-08-17', 16),
  ('V016384245', 'Ruta Empresarial, Edif. Plaza', '10987654', 'Laura', 'Isabel', 'Gómez', 'Pérez', '1980-02-25', 16),
  ('V293847567', 'Calle de Negocios, Torre A', '30980765', 'Pedro', 'Antonio', 'Fernández', 'Martínez', '1989-07-12', 17),
  ('V103948203', 'Zona Industrial, Edif. Central', '9542378', 'Mónica', NULL, 'González', NULL, '1984-04-05', 17),
  ('V102493728', 'Avenida Principal, Edificio Comercial', '15521768', 'Carlos', 'José', 'Pérez', 'Gómez', '1991-09-20', 17),
  ('V294758493', 'Calle Empresarial, Edif. Ejecutivo', '9987095', 'Isabel', 'María', 'Martínez', 'Fernández', '1983-12-03', 17),
  ('V101201394', 'Ruta Empresarial, Edif. Plaza', '26987654', 'Francisco', 'Javier', 'Gómez', 'Pérez', '1975-06-18', 18),
  ('V302930134', 'Calle de Negocios, Torre A', '29015732', 'Carla', NULL, 'Fernández', NULL, '1994-02-08', 18),
  ('V729173650', 'Ruta Empresarial, Edif. Plaza', '27588935', 'Estefany', NULL, 'Torres', 'Mendoza', '2000-11-26', 18),
  ('V938467502', 'Av. Principal, Edif. Residencial', '27246584', 'Luis', 'Ricardo', 'Martín', 'Lira', '2000-09-15', 18),
  ('V374819203', 'Calle de Negocios, Torre A', '26838242', 'Maria', 'Fernanda', 'Suarez', 'Malave', '1999-03-08', 19),
  ('V289103675', 'Torre Empresarial, Piso 4', '26838243', 'Zarah', 'Valentina', 'Roa', 'Pacheco', '2001-07-09', 19),
  ('V389201374', 'Torre Empresarial, Piso 1', '30136096', 'Leandro', 'Emanuel', 'Andrade', 'Da Silva', '2003-06-08', 19),
  ('V493765392', 'Calle de Negocio, Torre B', '30005364', 'Rafael', 'Eduardo', 'Marcano', 'Mora', '2003-04-28', 19),
  ('V654321098', 'Calle Empresarial, Edif. Residencial', '38571624', 'Luis', 'Alberto', 'González', 'Pérez', '1988-07-05', 20),
  ('V876543211', 'Av. Principal, Edificio Comercial', '26783201', 'Verónica', 'Isabel', 'Martínez', 'Fernández', '1993-12-18', 20),
  ('V234567890', 'Ruta Empresarial, Edif. Plaza', '7871233', 'David', NULL, 'Gómez', NULL, '1976-09-30', 20),
  ('V109876543', 'Calle de Negocios, Torre A', '12345678', 'Daniela', 'Carolina', 'Rodríguez', 'Mendoza', '1991-03-15', 20),
  ('V765432109', 'Zona Industrial, Edif. Central', '17654321', 'Miguel', 'Ángel', 'Gutiérrez', 'Fernández', '1984-11-22', 21),
  ('V212345678', 'Calle Real de Catia, Edif. La Torre, Piso 10, Apto. 1001', '12345679', 'María', 'José', 'Pérez', 'Rodríguez', '1990-01-20', 21),
  ('V987654323', 'Av. Francisco de Miranda, Edif. Torre Británica, Piso 20, Apto. 2002', '98765432', 'Juan', 'Pedro', 'González', 'Pérez', '1985-02-15', 21),
  ('V654321099', 'Calle Urdaneta, Edif. El Capitolio, Piso 30, Apto. 3003', '65432109', 'Ana', 'María', 'López', 'Hernández', '1970-03-30', 21),
  ('V543210987', 'Calle Bolívar, Edif. La Catedral, Piso 40, Apto. 4004', '54321098', 'Carlos', 'Antonio', 'Sánchez', 'García', '1965-05-01', 22),
  ('V432109876', 'Calle Sucre, Edif. El Palacio de Miraflores, Piso 50, Apto. 5005', '43210987', 'Pedro', 'Luis', 'Pérez', 'Martínez', '1950-07-15', 22),
  ('V432109894', 'Calle Sur, Edif. El Palacio, Piso 50, Apto. 5015', '43710987', 'Pablo', 'Luis', 'Pérez', 'Martínez', '1950-07-15', 22),
  ('V832109894', 'Calle Norte, Edif. El rosal, Piso 40, Apto. 5215', '43790987', 'Ricardo', 'Luis', 'Pages', 'Martínez', '1950-07-15', 22),
  ('V223765392', 'Callejon de Negocio, Torre B', '30004464', 'Rafael', 'Eduardo', 'Martinez', 'Mora', '2003-04-28', 23),
  ('V654321090', 'Calle cedeño, Edif. Residencial', '38589624', 'Luis', 'Alberto', 'Urrutia', 'Pérez', '1988-07-05', 23),
  ('V876543221', 'Av. Principal Los Manzanos, Edificio Comercial', '22783201', 'Verónica', 'Laura', 'Mambiche', 'Fernández', '1993-12-18', 23),
  ('V234567800', 'Ruta Empresarial, Edif. Plaza', '7879234', 'David', NULL, 'Gónzalez', NULL, '1976-09-30', 23),
  ('V223735392', 'Callejon de Negocio, Torre D', '33004469', 'Rafael', 'Jose', 'Martinez', 'Monasterio', '2003-04-28', 24),
  ('V654325090', 'Calle cedeño, Edif. Residencial yaracuy', '38989624', 'Luis', 'Mario', 'Ramos', 'Pérez', '1988-07-05', 24),
  ('V877543221', 'Av. Principal Los Manzanos, Edificio Comercial este', '21783201', 'Verónica', 'Laura', 'Mercedes', 'Ferrero', '1993-12-18', 24),
  ('V284567800', 'Ruta Empresarial, Edif. Plaza', '7871234', 'David', NULL, 'Gorta', NULL, '1976-09-30', 24),
  ('V833209894', 'Calle Norte, Edif. El rosario, Piso 25, Apto. 5215', '43000987', 'Ramiro', 'Luis', 'Perez', 'Martínez', '1950-07-15', 22),
  ('V223769992', 'Callejon Santa Elena, Torre D', '30114464', 'Rafael', 'Mario', 'Navarro', 'Mora', '2003-04-28', 23),
  ('V584321098', 'Calle cedeño, Edif. Residencial Tamanaco', '38566624', 'Luis', 'Alberto', 'Bonito', 'Pérez', '1988-07-05', 23),
  ('V876522221', 'Av. Principal Los Maestros, Edificio Ikebana', '22777201', 'Verónica', 'Maria', 'Nouel', 'Fernández', '1993-12-18', 23),
  ('V234560000', 'Ruta Empresarial, Edif. Plaza Este', '7878834', 'David', 'Jesus', 'Gónzalez', NULL, '1976-09-30', 23),
  ('V223744322', 'Callejon Iracoy', '33057469', 'Rafael', 'Del Carmen', 'Carrero', 'Monasterio', '2003-04-28', 24),
  ('V654325055', 'Calle cedeño, Edif. Residencial Las Hermanas', '38999624', 'Luis', 'Simon', 'Ramo', 'Suarez', '1988-07-05', 24),
  ('V877566221', 'Av. Principal Los Delfines, Edificio Comercial Oeste', '21722201', 'Verónica', 'Julieth', 'Moros', 'Ferrero', '1993-12-18', 24),
  ('V284500800', 'Urbanizacion Empresarial, Edif. Vista Alegre', '78711124', 'Maria', NULL, 'Delfin', NULL, '1976-09-30', 24),
  ('V118329080', 'Urbanizacion Giraluna, Calle 19 sur', '11832908', 'Zahorí', 'Gregorina', 'Mago', 'Rodriguez', '1974-10-09', 24);

INSERT INTO Cliente_Natural 
(FK_persona_nat, cliente_nat_fecha_inicio_op)
VALUES
(1, '2018-04-06'),
(2, '2010-08-30'),
(3, '2016-01-07'),
(4, '2007-05-13'),
(5, '2008-02-26'),
(6, '2006-02-01'),
(7, '2010-07-01'),
(8, '2020-11-15'),
(9, '2003-12-24'),
(10, '2012-10-27'),
(11, '2018-04-06'),
(12, '2010-08-30'),
(13, '2016-01-07'),
(14, '2007-05-13'),
(15, '2008-02-26'),
(16, '2006-02-01'),
(17, '2010-07-01'),
(18, '2020-11-15'),
(19, '2003-12-24'),
(20, '2012-10-27'),
(21, '2018-04-06'),
(22, '2010-08-30'),
(23, '2016-01-07'),
(24, '2007-05-13'),
(25, '2008-02-26'),
(26, '2006-02-01'),
(27, '2010-07-01'),
(28, '2020-11-15'),
(29, '2003-12-24'),
(30, '2012-10-27'),
(31, '2018-04-06'),
(32, '2010-08-30'),
(33, '2016-01-07'),
(34, '2007-05-13'),
(35, '2008-02-26'),
(36, '2006-02-01'),
(37, '2010-07-01'),
(38, '2020-11-15'),
(39, '2003-12-24'),
(40, '2012-10-27');

INSERT INTO Correo (
  correo_nombre, FK_persona_nat
)
VALUES
  ('juan.perez@gmail.com', 1),
  ('maria.lopez@hotmail.com', 2),
  ('carlos.martinez@live.com', 3),
  ('ana.rodriguez@outlook.com', 4),
  ('luis.gutierrez@yahoo.com', 5),
  ('elena.fernandez@gmail.com', 6),
  ('miguel.sanchez@gmail.com', 7),
  ('laura.gomez@gmail.com', 8),
  ('pedro.martinez@gmail.com', 9),
  ('monica.gonzalez@gmail.com', 10),
  ('carlos.perez@gmail.com', 11),
  ('isabel.martinez@gmail.com', 12),
  ('francisco.gomez@gmail.com', 13),
  ('carla.fernandez@gmail.com', 14),
  ('emmezita@mgmail.com', 15),
  ('etorres.19@est.ucab.edu.ve', 15),
  ('ricardo.martinez@gmail.com', 16),
  ('nadine.chancay@gmail.com', 17),
  ('pedro.leal@gmail.com', 18),
  ('leandro.andrade@gmail.com', 19),
  ('rafael.marcano@gmail.com', 20),
  ('luis.gonzalez@gmail.com', 21),
  ('veronica.martinez@gmail.com', 22),
  ('david.gomez@gmail.com', 23),
  ('daniela.rodriguez@gmail.com', 24),
  ('miguel.gutierrez@gmail.com', 25),
  ('maria.perez@gmail.com', 26),
  ('juan.gonzalez@gmail.com', 27),
  ('ana.lopez@gmail.com', 28),
  ('carlos.sanchez@gmail.com', 29),
  ('pedro.perez@gmail.com', 30);

INSERT INTO Telefono (
  telefono_codigo_area, telefono_numero, fk_persona_nat
)
VALUES
  ('0412','1234567', 1),
  ('0412','2856971', 2),
  ('0412','1589637', 3),
  ('0412','2007686', 4),
  ('0412','2909742', 5),
  ('0412','8987651', 6),
  ('0412','8098943', 7),
  ('0414','1098765', 8),
  ('0414','3098076', 9),
  ('0414','9542378', 10),
  ('0414','1552176', 11),
  ('0414','9987095', 12),
  ('0414','2698765', 13),
  ('0414','2901573', 14),
  ('0414','2758893', 15),
  ('0414','2724658', 16),
  ('0414','2683824', 17),
  ('0414','2683824', 18),
  ('0414','3013609', 19),
  ('0414','3000536', 20),
  ('0414','3857162', 21),
  ('0414','2678320', 22),
  ('0424','7871234', 23),
  ('0424','1234567', 24),
  ('0424','1765432', 25),
  ('0424','1234567', 26),
  ('0424','9876543', 27),
  ('0424','6543210', 28),
  ('0424','5432109', 29),
  ('0424','4321098', 30);



INSERT INTO Empleado (
  FK_persona_nat, empleado_exp_profesional
)
VALUES
  (10, '10 años de experiencia en el área de ventas'),
  (11, '5 años de experiencia en el área de ventas'),
  (12, '3 años de experiencia en el área de marketing'),
  (13, '4 años de experiencia en el área de finanzas'),
  (14, '6 años de experiencia en el área de recursos humanos'),
  (15, '7 años de experiencia en el área de contabilidad'),
  (16, '8 años de experiencia en el área de administración'),
  (17, '9 años de experiencia en el área de logística'),
  (18, '10 años de experiencia en el área de producción'),
  (19, '11 años de experiencia en el área de compras'),
  (20, '12 años de experiencia en el área de calidad'),
  (21, '5 años de experiencia en el área de ventas'),
  (22, '3 años de experiencia en el área de marketing'),
  (23, '4 años de experiencia en el área de finanzas'),
  (24, '6 años de experiencia en el área de recursos humanos'),
  (25, '7 años de experiencia en el área de contabilidad'),
  (26, '8 años de experiencia en el área de administración'),
  (27, '9 años de experiencia en el área de logística'),
  (28, '10 años de experiencia en el área de producción'),
  (29, '11 años de experiencia en el área de aviones'),
  (30, '12 años de experiencia en el área de calidad'),
  (31, '4 años de experiencia en el área de finanzas'),
  (32, '6 años de experiencia en el área de recursos humanos'),
  (33, '7 años de experiencia en el área de ensamblaje'),
  (34, '8 años de experiencia en el área de administración'),
  (35, '9 años de experiencia en el área de logística'),
  (36, '10 años de experiencia en el área de producción'),
  (37, '11 años de experiencia en el área de compras'),
  (38, '12 años de experiencia en el área de calidad'),
  (39, '9 años de experiencia en el área de logística'),
  (40, '10 años de experiencia en el área de producción'),
  (41, '11 años de experiencia en el área de ensamblaje'),
  (42, '12 años de experiencia en el área de calidad'),
  (43, '4 años de experiencia en el área de ensamblaje'),
  (44, '6 años de experiencia en el área de recursos humanos'),
  (45, '7 años de experiencia en el área de contabilidad'),
  (46, '8 años de experiencia en el área de administración'),
  (47, '9 años de experiencia en el área de logística'),
  (48, '10 años de experiencia en el área de producción'),
  (49, '11 años de experiencia en el área de compras'),
  (50, '12 años de experiencia en el área de calidad');


INSERT INTO Titulo (
  titulo_tipo, titulo_nombre, titulo_universidad, titulo_fecha_obtencion
)
VALUES
  ('Licenciatura', 'Licenciado en Administración', 'Universidad Central de Venezuela', '2015-07-10'),
  ('Licenciatura', 'Licenciado en Contaduría', 'Universidad Simón Bolívar', '2014-06-15'),
  ('Licenciatura', 'Licenciado en Economía', 'Universidad Católica Andrés Bello', '2013-05-20'),
  ('Licenciatura', 'Licenciado en Ingeniería Industrial', 'Universidad Metropolitana', '2012-04-25'),
  ('Licenciatura', 'Licenciado en Ingeniería de Sistemas', 'Universidad Santa María', '2011-03-30'),
  ('Licenciatura', 'Licenciado en Ingeniería en Informática', 'Universidad José Antonio Páez', '2010-02-25'),
  ('Licenciatura', 'Licenciado en Ingeniería en Computación', 'Universidad Rafael Urdaneta', '2009-01-20'),
  ('Licenciatura', 'Licenciado en Ingeniería en Telecomunicaciones', 'Universidad Nacional Experimental Politécnica', '2008-12-15'),
  ('Licenciatura', 'Licenciado en Ingeniería en Electrónica', 'Universidad Nacional Experimental Simón Rodríguez', '2007-11-10'),
  ('Licenciatura', 'Licenciado en Ingeniería en Mecánica', 'Universidad Nacional Experimental Francisco de Miranda', '2006-10-05'),
  ('Maestria', 'Maestro en Administración', 'Universidad Central de Venezuela', '2017-08-10'),
  ('Maestria', 'Maestro en Contaduría', 'Universidad Simón Bolívar', '2016-07-15'),
  ('Maestria', 'Maestro en Economía', 'Universidad Católica Andrés Bello', '2015-06-20'),
  ('Maestria', 'Maestro en Ingeniería Industrial', 'Universidad Metropolitana', '2014-05-25'),
  ('Maestria', 'Maestro en Ingeniería de Sistemas', 'Universidad Santa María', '2013-04-30'),
  ('Maestria', 'Maestro en Ingeniería en Informática', 'Universidad José Antonio Páez', '2012-03-25'),
  ('Maestria', 'Maestro en Ingeniería en Computación', 'Universidad Rafael Urdaneta', '2011-02-20'),
  ('Maestria', 'Maestro en Ingeniería en Telecomunicaciones', 'Universidad Nacional Experimental Politécnica', '2010-01-15'),
  ('Maestria', 'Maestro en Ingeniería en Electrónica', 'Universidad Nacional Experimental Simón Rodríguez', '2009-12-10'),
  ('Maestria', 'Maestro en Ingeniería en Mecánica', 'Universidad Nacional Experimental Francisco de Miranda', '2008-11-05');

INSERT INTO Emp_Titulo (
  FK_empleado, FK_titulo_codigo
)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10),
  (1, 11),
  (2, 12),
  (3, 13),
  (4, 14),
  (5, 15),
  (6, 16),
  (7, 17),
  (8, 18),
  (9, 19),
  (10, 20);

INSERT INTO contacto (
  contacto_nombre, contacto_red_social, contacto_fk_empleado
)
VALUES
  ('Juan Pérez', 'https://www.linkedin.com/in/juan-perez', 1),
  ('María López', 'https://www.linkedin.com/in/maria-lopez', 2),
  ('Carlos Martínez', 'https://www.linkedin.com/in/carlos-martinez', 3),
  ('Ana Rodríguez', 'https://www.linkedin.com/in/ana-rodriguez', 4),
  ('Luis Gutiérrez', 'https://www.linkedin.com/in/luis-gutierrez', 5),
  ('Elena Fernández', 'https://www.linkedin.com/in/elena-fernandez', 6),
  ('Miguel Sánchez', 'https://www.linkedin.com/in/miguel-sanchez', 7),
  ('Laura Gómez', 'https://www.linkedin.com/in/laura-gomez', 8),
  ('Pedro Martínez', 'https://www.linkedin.com/in/pedro-martinez', 9),
  ('Mónica González', 'https://www.linkedin.com/in/monica-gonzalez', 10),
  ('Juan Pérez', 'https://www.linkedin.com/in/juan-perez', 1),
  ('María López', 'https://www.linkedin.com/in/maria-lopez', 2),
  ('Carlos Martínez', 'https://www.linkedin.com/in/carlos-martinez', 3),
  ('Ana Rodríguez', 'https://www.linkedin.com/in/ana-rodriguez', 4),
  ('Luis Gutiérrez', 'https://www.linkedin.com/in/luis-gutierrez', 5),
  ('Elena Fernández', 'https://www.linkedin.com/in/elena-fernandez', 6),
  ('Miguel Sánchez', 'https://www.linkedin.com/in/miguel-sanchez', 7),
  ('Laura Gómez', 'https://www.linkedin.com/in/laura-gomez', 8),
  ('Pedro Martínez', 'https://www.linkedin.com/in/pedro-martinez', 9),
  ('Mónica González', 'https://www.linkedin.com/in/monica-gonzalez', 10),
  ('Pepito Perez', 'https://www.linkedin.com/in/pepito-perez', 1),
  ('Maria Lopez', 'https://www.linkedin.com/in/maria-lopez', 2),
  ('Carlos Martinez', 'https://www.linkedin.com/in/carlos-martinez', 3),
  ('Ana Rodriguez', 'https://www.linkedin.com/in/ana-rodriguez', 4),
  ('Luis Gutierrez', 'https://www.linkedin.com/in/luis-gutierrez', 5),
  ('Elena Fernandez', 'https://www.linkedin.com/in/elena-fernandez', 6),
  ('Miguel Sanchez', 'https://www.linkedin.com/in/miguel-sanchez', 7),
  ('Laura Gomez', 'https://www.linkedin.com/in/laura-gomez', 8),
  ('Pedro Martinez', 'https://www.linkedin.com/in/pedro-martinez', 9),
  ('Monica Gonzalez', 'https://www.linkedin.com/in/monica-gonzalez', 10);

INSERT INTO Telefono (
  telefono_codigo_area, telefono_numero, FK_contacto
)
VALUES
  ('0412','1234567', 1),
  ('0412','2856971', 2),
  ('0412','1589637', 3),
  ('0412','2007686', 4),
  ('0412','2909742', 5),
  ('0412','8987651', 6),
  ('0412','8098943', 7),
  ('0414','1098765', 8),
  ('0414','3098076', 9),
  ('0414','9542378', 10),
  ('0414','1552176', 11),
  ('0414','9987095', 12),
  ('0414','2698765', 13),
  ('0414','2901573', 14),
  ('0414','2758893', 15),
  ('0414','2724658', 16),
  ('0414','2683824', 17),
  ('0414','2683824', 18),
  ('0414','3013609', 19),
  ('0414','3000536', 20),
  ('0414','3857162', 21),
  ('0414','2678320', 22),
  ('0424','7871234', 23),
  ('0424','1234567', 24),
  ('0424','1765432', 25),
  ('0424','1234567', 26),
  ('0424','9876543', 27),
  ('0424','6543210', 28),
  ('0424','5432109', 29);

INSERT INTO "privilegio" ("privilegio_codigo", "privilegio_descripcion", "privilegio_tipo") 
VALUES ('1', 'Consultar datos de cualquier producto', 'Producto'), ('2', 'Crear nuevos productos', 'Producto'), ('3', 'Actualizar datos de cualquier producto', 'Producto'), ('4', 'Eliminar cualquier producto', 'Producto'), ('65', 'Consultar datos de cualquier material', 'Material'), ('66', 'Crear nuevos materiales', 'Material'), ('67', 'Actualizar datos de cualquier material', 'Material'), ('68', 'Eliminar cualquier material', 'Material'), ('85', 'Consultar datos de cualquier histórico de precio de venta', 'HistoricoPrecioVenta'), ('86', 'Consultar datos de cualquier histórico de precio de compra', 'HistoricoPrecioCompra'), ('87', 'Consultar datos de cualquier histórico de tasa de dólar', 'HistoricoTasaDolar'), ('88', 'Consultar datos de cualquier inventario de tienda', 'Inventario Tienda'), ('89', 'Actualizar datos de cualquier inventario de tienda', 'Inventario Tienda'), ('90', 'Consultar datos de cualquier inventario de almacén', 'Inventario Almacen'), ('91', 'Actualizar datos de cualquier inventario de almacén', 'Inventario Almacen'), ('94', 'Consultar datos de cualquier factura', 'Factura'), ('95', 'Crear nuevas facturas', 'Factura'), ('96', 'Actualizar datos de cualquier factura', 'Factura'), ('97', 'Eliminar cualquier factura', 'Factura'), ('98', 'Consultar datos de cualquier pedido', 'Pedido'), ('99', 'Crear nuevos pedidos', 'Pedido'), ('100', 'Actualizar datos de cualquier pedido', 'Pedido'), ('101', 'Eliminar cualquier pedido', 'Pedido'), ('102', 'Consultar datos de cualquier orden de reposición', 'Orden Reposicion'), ('103', 'Crear nuevas órdenes de reposición', 'Orden Reposicion'), ('104', 'Actualizar datos de cualquier orden de reposición', 'Orden Reposicion'), ('105', 'Eliminar cualquier orden de reposición', 'Orden Reposicion'), ('106', 'Consultar datos de cualquier estatus de orden', 'Estatus Orden'), ('107', 'Crear nuevos estatus de orden', 'Estatus Orden'), ('108', 'Actualizar datos de cualquier estatus de orden', 'Estatus Orden'), ('109', 'Eliminar datos de cualquier estatus de orden', 'Estatus Orden'), ('110', 'Consultar datos de cualquier estatus de pedido', 'Estatus Pedido'), ('111', 'Crear nuevos estatus de pedido', 'Estatus Pedido'), ('112', 'Actualizar datos de cualquier estatus de pedido', 'Estatus Pedido'), ('113', 'Eliminar datos de cualquier estatus de pedido', 'Estatus Pedido'), ('114', 'Consultar datos de cualquier clientes jurídico', 'Cliente Juridico'), ('115', 'Crear nuevos clientes jurídicos', 'Cliente Juridico'), ('116', 'Actualizar datos de cualquier clientes jurídico', 'Cliente Juridico'), ('117', 'Eliminar datos de cualquier clientes jurídico', 'Cliente Juridico'), ('118', 'Consultar datos de cualquier clientes natural', 'Cliente Natural'), ('119', 'Crear nuevos clientes natural', 'Cliente Natural'), ('120', 'Actualizar datos de cualquier clientes natural', 'Cliente Natural'), ('121', 'Eliminar datos de cualquier clientes natural', 'Cliente Natural'), ('122', 'Consultar datos de cualquier proveedor', 'Proveedor'), ('123', 'Crear nuevos proveedores', 'Proveedor'), ('124', 'Actualizar datos de cualquier proveedor', 'Proveedor'), ('125', 'Eliminar datos de cualquier proveedor', 'Proveedor'), ('126', 'Consultar datos de cualquier empleado', 'Empleado'), ('127', 'Crear nuevos empleados', 'Empleado'), ('128', 'Actualizar datos de cualquier empleado', 'Empleado'), ('129', 'Eliminar datos de cualquier empleado', 'Empleado'), ('130', 'Consultar datos de cualquier departamento', 'Departamento'), ('131', 'Crear nuevos departamentos', 'Departamento'), ('132', 'Actualizar datos de cualquier departamento', 'Departamento'), ('133', 'Eliminar datos de cualquier departamento', 'Departamento'), ('134', 'Consultar datos de cualquier horario', 'Horario'), ('135', 'Crear nuevos horarios', 'Horario'), ('136', 'Actualizar datos de cualquier horario', 'Horario'), ('137', 'Eliminar datos de cualquier horario', 'Horario'), ('138', 'Consultar datos de cualquier cargo', 'Cargo'), ('139', 'Crear nuevos cargos', 'Cargo'), ('140', 'Actualizar datos de cualquier cargo', 'Cargo'), ('141', 'Eliminar datos de cualquier cargo', 'Cargo'), ('142', 'Consultar datos de cualquier beneficio', 'Beneficio'), ('143', 'Crear nuevos beneficios', 'Beneficio'), ('144', 'Actualizar datos de cualquier beneficio', 'Beneficio'), ('145', 'Eliminar datos de cualquier beneficio', 'Beneficio'), ('146', 'Consultar datos de cualquier banco', 'Banco'), ('147', 'Crear nuevos bancos', 'Banco'), ('148', 'Actualizar datos de cualquier banco', 'Banco'), ('149', 'Eliminar datos de cualquier banco', 'Banco'), ('158', 'Consultar datos de cualquier rol', 'Rol'), ('159', 'Crear nuevos roles', 'Rol'), ('160', 'Actualizar datos de cualquier rol', 'Rol'), ('161', 'Eliminar datos de cualquier rol', 'Rol'), ('162', 'Consultar datos de cualquier usuario', 'Usuario'), ('163', 'Crear nuevos usuarios', 'Usuario'), ('164', 'Actualizar datos de cualquier usuario', 'Usuario'), ('165', 'Eliminar datos de cualquier usuario', 'Usuario'), ('166', 'Consultar acciones de usuario', 'Usuario'), ('167', 'Consultar datos de cualquier permiso', 'Permiso'), ('168', 'Crear nuevos permisos', 'Permiso'), ('169', 'Actualizar datos de cualquier permiso', 'Permiso'), ('170', 'Eliminar datos de cualquier permiso', 'Permiso'), ('171', 'Consultar datos de cualquier metodo de pago', 'Metodos de Pago'), ('172', 'Crear nuevos metodos de pago', 'Metodos de Pago'), ('173', 'Actualizar datos de cualquier metodo de pago', 'Metodos de Pago'), ('174', 'Eliminar datos de cualquier metodo de pago', 'Metodos de Pago'), ('175', 'Crear Modelo de Avion', 'Modelo de Avion'), ('176', 'Consultar Modelo de Avion', 'Modelo de Avion'), ('177', 'Actualizar Modelo de Avion', 'Modelo de Avion'), ('178', 'Eliminar Modelo de Avion', 'Modelo de Avion'), ('179', 'Crear Avion', 'Avion'), ('180', 'Consultar Avion', 'Avion'), ('181', 'Actualizar Avion', 'Avion'), ('182', 'Eliminar Avion', 'Avion'), ('183', 'Crear Pieza', 'Pieza'), ('184', 'Consultar Pieza', 'Pieza'), ('185', 'Actualizar Pieza', 'Pieza'), ('186', 'Eliminar Pieza', 'Pieza'), ('187', 'Crear Prueba', 'Prueba'), ('188', 'Consultar Prueba', 'Prueba'), ('189', 'Actualizar Prueba', 'Prueba'), ('190', 'Eliminar Prueba', 'Prueba'), ('191', 'Crear Tipo Prueba', 'Tipo Prueba'), ('192', 'Consultar Tipo Prueba', 'Tipo Prueba'), ('193', 'Actualizar Tipo Prueba', 'Tipo Prueba'), ('194', 'Eliminar Tipo Prueba', 'Tipo Prueba'), ('195', 'Crear Area', 'Area'), ('196', 'Consultar Area', 'Area'), ('197', 'Actualizar Area', 'Area'), ('198', 'Eliminar Area', 'Area'), ('199', 'Crear Zona', 'Zona'), ('200', 'Consultar Zona', 'Zona'), ('201', 'Actualizar Zona', 'Zona'), ('202', 'Eliminar Zona', 'Zona'), ('203', 'Crear Sede', 'Sede'), ('204', 'Consultar Sede', 'Sede'), ('205', 'Actualizar Sede', 'Sede'), ('206', 'Eliminar Sede', 'Sede'), ('207', 'Crear Equipo', 'Equipo'), ('208', 'Consultar Equipo', 'Equipo'), ('209', 'Actualizar Equipo', 'Equipo'), ('210', 'Eliminar Equipo', 'Equipo');

INSERT INTO Rol (rol_nombre)
VALUES
  ('Gerente de RRHH'),
  ('Gerente de compras'),
  ('Gerente de ventas'),
  ('Gerente de planta'),
  ('Administrador'),
  ('Gerente de almacén'),
  ('Repartidor'),
  ('Cliente jurídico'),
  ('Cliente natural'),
  ('Proveedor'),
  ('Empleado RRHH'),
  ('Empleado compras'),
  ('Empleado ventas'),
  ('Empleado planta'),
  ('Empleado administración'),
  ('Empleado almacén');

INSERT INTO "rol_privilegio" ("id_rol_privilegio", "rp_fk_rol", "rp_fk_privilegio") 
VALUES 
('1', '1', '114'), 
('2', '1', '115'), ('3', '1', '116'), 
('4', '1', '117'), ('5', '1', '118'), 
('6', '1', '119'), ('7', '1', '120'), 
('8', '1', '121'), ('9', '1', '122'), 
('10', '1', '123'), ('11', '1', '124'), 
('12', '1', '125'), ('13', '1', '126'), 
('14', '1', '127'), ('15', '1', '128'), 
('16', '1', '129'), ('17', '1', '130'), 
('18', '1', '131'), ('19', '1', '132'), 
('20', '1', '133'), ('21', '1', '134'), 
('22', '1', '135'), ('23', '1', '136'), 
('24', '1', '137'), ('25', '1', '138'), 
('26', '1', '139'), ('27', '1', '140'), 
('28', '1', '141'), ('29', '1', '142'), 
('30', '1', '143'), ('31', '1', '144'), 
('32', '1', '145'), ('37', '2', '102'), 
('38', '2', '103'), ('39', '2', '104'), 
('40', '2', '105'), ('41', '2', '106'), 
('42', '2', '107'), ('43', '2', '108'), 
('44', '2', '109'), ('50', '3', '85'), 
('51', '3', '86'), ('52', '3', '87'), 
('53', '3', '88'), ('54', '3', '89'), 
('55', '3', '90'), ('56', '3', '91'), 
('59', '3', '94'), ('60', '3', '95'), 
('61', '3', '96'), ('62', '3', '97'), 
('63', '3', '98'), ('64', '3', '99'), 
('65', '3', '100'), ('66', '3', '101'), 
('71', '5', '1'), ('72', '5', '2'), 
('73', '5', '3'), ('74', '5', '4'), 
('130', '5', '65'), ('131', '5', '66'), 
('132', '5', '67'), ('133', '5', '68'), 
('150', '5', '85'), ('151', '5', '86'), 
('152', '5', '87'), ('153', '5', '88'), 
('154', '5', '89'), ('155', '5', '90'), 
('156', '5', '91'), ('159', '5', '94'), 
('160', '5', '95'), ('161', '5', '96'), 
('162', '5', '97'), ('163', '5', '98'), 
('164', '5', '99'), ('165', '5', '100'), 
('166', '5', '101'), ('167', '5', '102'), 
('168', '5', '103'), ('169', '5', '104'), 
('170', '5', '105'), ('171', '5', '106'), 
('172', '5', '107'), ('173', '5', '108'), 
('174', '5', '109'), ('175', '5', '110'), 
('176', '5', '111'), ('177', '5', '112'), 
('178', '5', '113'), ('179', '5', '114'), 
('180', '5', '115'), ('181', '5', '116'), 
('182', '5', '117'), ('183', '5', '118'),
('184', '5', '119'), ('185', '5', '120'), 
('186', '5', '121'), ('187', '5', '122'), 
('188', '5', '123'), ('189', '5', '124'), 
('190', '5', '125'), ('191', '5', '126'), 
('192', '5', '127'), ('193', '5', '128'), 
('194', '5', '129'), ('195', '5', '130'), 
('196', '5', '131'), ('197', '5', '132'), 
('198', '5', '133'), ('199', '5', '134'), 
('200', '5', '135'), ('201', '5', '136'),
('202', '5', '137'), ('203', '5', '138'), 
('204', '5', '139'), ('205', '5', '140'), 
('206', '5', '141'), ('207', '5', '142'), ('208', '5', '143'), ('209', '5', '144'), ('210', '5', '145'), ('219', '5', '158'), ('220', '5', '159'), ('221', '5', '160'), ('222', '5', '161'), ('223', '5', '162'), ('224', '5', '163'), ('225', '5', '164'), ('226', '5', '165'), ('227', '5', '166'), ('228', '5', '167'), ('229', '5', '168'), ('230', '5', '169'), ('231', '5', '170'), ('232', '5', '171'), ('233', '5', '172'), ('234', '5', '173'), ('235', '5', '174'), ('236', '6', '90'), ('237', '6', '91'), ('238', '7', '100'), ('239', '8', '1'), ('244', '9', '1'), ('249', '10', '1'), ('254', '11', '114'), ('255', '11', '115'), ('256', '11', '116'), ('257', '11', '117'), ('258', '11', '118'), ('259', '11', '119'), ('260', '11', '120'), ('261', '11', '121'), ('262', '11', '122'), ('263', '11', '123'), ('264', '11', '124'), ('265', '11', '125'), ('266', '11', '126'), ('267', '11', '127'), ('268', '11', '128'), ('269', '11', '129'), ('270', '11', '130'), ('271', '11', '131'), ('272', '11', '132'), ('273', '11', '133'), ('274', '11', '134'), ('275', '11', '135'), ('276', '11', '136'), ('277', '11', '137'), ('278', '11', '138'), ('279', '11', '139'), ('280', '11', '140'), ('281', '11', '141'), ('282', '11', '142'), ('283', '11', '143'), ('284', '11', '144'), ('285', '11', '145'), ('290', '12', '102'), ('291', '12', '103'), ('292', '12', '104'), ('293', '12', '105'), ('294', '12', '106'), ('295', '12', '107'), ('296', '12', '108'), ('297', '12', '109'), ('303', '13', '85'), ('304', '13', '86'), ('305', '13', '87'), ('306', '13', '88'), ('307', '13', '89'), ('308', '13', '90'), ('309', '13', '91'), ('312', '13', '94'), ('313', '13', '95'), ('314', '13', '96'), ('315', '13', '97'), ('316', '13', '98'), ('317', '13', '99'), ('318', '13', '100'), ('319', '13', '101'), ('324', '15', '1'), ('325', '15', '2'), ('326', '15', '3'), ('327', '15', '4'), ('383', '15', '65'), ('384', '15', '66'), ('385', '15', '67'), ('386', '15', '68'), ('403', '15', '85'), ('404', '15', '86'), ('405', '15', '87'), ('406', '15', '88'), ('407', '15', '89'), ('408', '15', '90'), ('409', '15', '91'), ('412', '15', '94'), ('413', '15', '95'), ('414', '15', '96'), ('415', '15', '97'), ('416', '15', '98'), ('417', '15', '99'), ('418', '15', '100'), ('419', '15', '101'), ('420', '15', '102'), ('421', '15', '103'), ('422', '15', '104'), ('423', '15', '105'), ('424', '15', '106'), ('425', '15', '107'), ('426', '15', '108'), ('427', '15', '109'), ('428', '15', '110'), ('429', '15', '111'), ('430', '15', '112'), ('431', '15', '113'), ('432', '15', '114'), ('433', '15', '115'), ('434', '15', '116'), ('435', '15', '117'), ('436', '15', '118'), ('437', '15', '119'), ('438', '15', '120'), ('439', '15', '121'), ('440', '15', '122'), ('441', '15', '123'), ('442', '15', '124'), ('443', '15', '125'), ('444', '15', '126'), ('445', '15', '127'), ('446', '15', '128'), ('447', '15', '129'), ('448', '15', '130'), ('449', '15', '131'), ('450', '15', '132'), ('451', '15', '133'), ('452', '15', '134'), ('453', '15', '135'), ('454', '15', '136'), ('455', '15', '137'), ('456', '15', '138'), ('457', '15', '139'), ('458', '15', '140'), ('459', '15', '141'), ('460', '15', '142'), ('461', '15', '143'), ('462', '15', '144'), ('463', '15', '145'), ('472', '15', '158'), ('473', '15', '159'), ('474', '15', '160'), ('475', '15', '161'), ('476', '15', '162'), ('477', '15', '163'), ('478', '15', '164'), ('479', '15', '165'), ('480', '15', '166'), ('481', '15', '167'), ('482', '15', '168'), ('483', '15', '169'), ('484', '15', '170'), ('485', '15', '171'), ('486', '15', '172'), ('487', '15', '173'), ('488', '15', '174'), ('489', '16', '90'), ('490', '16', '91');


INSERT INTO SEDE (
    sede_id, sede_nombre, sede_descripcion, sede_direccion, FK_lugar
) VALUES
    (1, 'Sede Principal', 'Sede Central donde se reciben los materiales', 'Av. Principal N° 123', (Select lugar_codigo from lugar where lugar_nombre = 'CATIA LA MAR')),
    (2, 'Sede Maracay', 'Recibe los materiales de la sede Principal y se realizan las pruebas de calidad', 'Av. Secundaria N° 456', (Select lugar_codigo from lugar where lugar_nombre = 'Maracay')),
    (3, 'Sede Valencia', 'Una de las sedes mas grandes', 'Zona Industrial N° 789', (Select lugar_codigo from lugar where lugar_nombre = 'Valencia')),
    (4, 'Sede Guatire', 'Almacén', 'Calle Logística N° 321', (Select lugar_codigo from lugar where lugar_nombre = 'GUATIRE')),
    (5, 'Sede Colon', 'Hay ciertas piezas se hacen en esta sede', 'Calle Cedeño N° 321', (Select lugar_codigo from lugar where lugar_nombre = 'Colón'));

-- Inserción en tabla usuario
INSERT INTO Usuario (
    usuario_nombre, usuario_contrasena, usuario_fk_persona_nat, usuario_fk_persona_jur, usuario_fk_rol
) VALUES
    ('mgonzales', 123456, 10, NULL, 2),
    ('cjperez', 123456, 11, NULL, 3), 
    ('immartinez', 123456, 12, NULL, 5),
    ('fjgomez', 123456, 13, NULL, 2),
    ('cfernandez', 123456, 14, NULL, 3),
    ('etorres', 123456, 15, NULL, 6),
    ('lrmartin', 123456, 16, NULL, 7),
    ('mfsuarez', 123456, 17, NULL, 1),
    ('zvroa', 123456, 18, NULL, 3),
    ('leandrade', 123456, 19, NULL, 8),
    ('remarcano', 123456, 20, NULL, 8),
    ('lagonzales', 123456, 21, NULL, 4),
    ('vimartinez', 123456, 22, NULL, 9),
    ('dgomez', 123456, 23, NULL, 10),
    ('dcrodriguez', 123456, 24, NULL, 6),
    ('magutierrez', 123456, 25, NULL, 11),
    ('mjperez', 123456, 26, NULL, 4),
    ('jpgonzales', 123456, 27, NULL, 4),
    ('amlopez', 123456, 28, NULL, 2),
    ('casanchez', 123456, 29, NULL, 1),
    ('plperez', 123456, 30, NULL, 1),
    ('plperezz', 123456, 31, NULL, 1),
    ('rlpages', 123456, 32, NULL, 12),
    ('remartinez', 123456, 33, NULL, 4),
    ('laurrutia', 123456, 34, NULL, 4),
    ('vlmambiche', 123456, 35, NULL, 13),
    ('dgonzalez', 123456, 36, NULL, 3),
    ('rjmartinez', 123456, 37, NULL, 14),
    ('lmramos', 123456, 11, 38, 2),
    ('vlmercedes', 123456, 39, NULL, 15),
    ('dgorta', 123456, 40, NULL, 8),
    ('rlperez', 123456, 41, NULL, 10),
    ('rmnavarro', 123456, 42, NULL, 10),
    ('labonito', 123456, 43, NULL, 9),
    ('vmnouel', 123456, 44, NULL, 9),
    ('djgonzalez', 123456, 45, NULL, 7),
    ('rdccarrero', 123456, 46, NULL, 7),
    ('lsramo', 123456, 47, NULL, 6),
    ('vjmoros', 123456, 48, NULL, 5),
    ('mdelfin', 123456, 49, NULL, 4),
    ('zgmago', 123456, 50, NULL, 16);

INSERT INTO Banco (banco_nombre)
VALUES
  ('Banco Venezolano de Crédito'),
  ('100% Banco'),
  ('Bancamiga'),
  ('Banco Activo'),
  ('Banco Bicentenario'),
  ('Banco Caroní'),
  ('Banco de la Fuerza Armada Nacional'),
  ('Banco de Venezuela'),
  ('Banco del Caribe'),
  ('Banco del Tesoro'),
  ('Banco Exterior'),
  ('Banco Mercantil'),
  ('Banco Nacional de Crédito'),
  ('Banco Plaza'),
  ('Banco Provincial'),
  ('Banco Sofitasa'),
  ('Bancrecer'),
  ('Banesco'),
  ('Banplus'),
  ('Banco Fondo Común');

INSERT INTO tdc (tdc_numero_tarjeta, tdc_fecha_vencimiento, tdc_cvv, tdc_fk_banco, tdc_fk_persona_nat, tdc_fk_persona_jur) VALUES
  ('1234567890123456', '2025-12-01', '123', 1, 21, NULL),
  ('2345678901234567', '2024-11-01', '234', 2, 22, NULL),
  ('3456789012345678', '2024-10-01', '345', 3, 23, NULL),
  ('4567890123456789', '2026-09-01', '456', 4, 24, NULL),
  ('5678901234567890', '2027-08-01', '567', 5, 25, NULL),
  ('6789012345678901', '2022-07-01', '678', 6, 26, NULL),
  ('7890123456789012', '2028-06-01', '789', 7, 27, NULL),
  ('8901234567890123', '2029-05-01', '890', 8, 28, NULL),
  ('9012345678901234', '2024-04-01', '901', 9, 29, NULL),
  ('0123456789012345', '2024-03-01', '012', 10, 30, NULL),
  ('1122334455667788', '2025-02-01', '112', 11, NULL, 1),
  ('2233445566778899', '2026-01-01', '223', 12, NULL, 2),
  ('3344556677889900', '2022-12-01', '334', 13, NULL, 3),
  ('4455667788990011', '2024-11-01', '445', 14, NULL, 4),
  ('5566778899001122', '2024-10-01', '556', 15, NULL, 5),
  ('6677889900112233', '2027-09-01', '667', 16, NULL, 6),
  ('7788990011223344', '2028-08-01', '778', 17, NULL, 7),
  ('8899001122334455', '2029-07-01', '889', 18, NULL, 8),
  ('9900112233445566', '2024-06-01', '990', 19, NULL, 9),
  ('0011223344556677', '2024-05-01', '001', 20, NULL, 10),
  ('2234123412341235', '2026-01-01', '110', 1, NULL, 11),
  ('3234123412341235', '2027-02-01', '240', 2, NULL, 12),
  ('4234123412341235', '2025-03-01', '350', 3, NULL, 13),
  ('5234123412341235', '2026-04-01', '413', 4, NULL, 14),
  ('6234123412341235', '2030-05-01', '545', 5, NULL, 15);

INSERT INTO tdd (tdd_numero_tarjeta, tdd_fecha_vencimiento, tdd_cvv, tdd_fk_banco, tdd_fk_persona_nat, tdd_fk_persona_jur) VALUES
  ('1234567890123456', '2025-12-01', '123', 1, 21, NULL),
  ('2345678901234567', '2024-11-01', '234', 2, 22, NULL),
  ('3456789012345678', '2024-10-01', '345', 3, 23, NULL),
  ('4567890123456789', '2026-09-01', '456', 4, 24, NULL),
  ('5678901234567890', '2027-08-01', '567', 5, 25, NULL),
  ('6789012345678901', '2022-07-01', '678', 6, 26, NULL),
  ('7890123456789012', '2028-06-01', '789', 7, 27, NULL),
  ('8901234567890123', '2029-05-01', '890', 8, 28, NULL),
  ('9012345678901234', '2024-04-01', '901', 9, 29, NULL),
  ('0123456789012345', '2024-03-01', '012', 10, 30, NULL),
  ('1122334455667788', '2025-02-01', '112', 11, NULL, 1),
  ('2233445566778899', '2026-01-01', '223', 12, NULL, 2),
  ('3344556677889900', '2022-12-01', '334', 13, NULL, 3),
  ('4455667788990011', '2024-11-01', '445', 14, NULL, 4),
  ('5566778899001122', '2024-10-01', '556', 15, NULL, 5),
  ('6677889900112233', '2027-09-01', '667', 16, NULL, 6),
  ('7788990011223344', '2028-08-01', '778', 17, NULL, 7),
  ('8899001122334455', '2029-07-01', '889', 18, NULL, 8),
  ('9900112233445566', '2024-06-01', '990', 19, NULL, 9),
  ('0011223344556677', '2024-05-01', '001', 20, NULL, 10),
  ('2234123412341235', '2026-01-01', '110', 1, NULL, 11),
  ('3234123412341235', '2027-02-01', '240', 2, NULL, 12),
  ('4234123412341235', '2025-03-01', '350', 3, NULL, 13),
  ('5234123412341235', '2026-04-01', '413', 4, NULL, 14),
  ('6234123412341235', '2030-05-01', '545', 5, NULL, 15);

INSERT INTO cheque (cheque_numero, cheque_fk_banco)
VALUES
  ('1234567', 1),
  ('2345678', 2),
  ('3456789', 3),
  ('4567890', 4),
  ('5678901', 5),
  ('6789012', 6),
  ('7890123', 7),
  ('8901234', 8),
  ('9012345', 9),
  ('0123456', 10);

INSERT INTO efectivo (efectivo_denominacion)
VALUES
  ('Bolívares'),
  ('Dólares'),
  ('Euros');

INSERT INTO Contrato_de_personal (contrato_fecha_inicio, contrato_fecha_fin,FK_empleado) 
VALUES
  ('2015-01-15', '2018-07-20', 1),
  ('2016-02-10', '2019-05-25', 2),
  ('2017-03-05', NULL, 3),
  ('2018-04-20', NULL, 4),
  ('2019-08-15', '2024-06-10', 5),
  ('2020-06-10', '2024-09-15', 6),
  ('2021-07-25', NULL, 7),
  ('2022-08-30', '2024-03-05', 8),
  ('2024-09-18', NULL, 9),
  ('2015-10-02', NULL, 10),
  ('2015-01-15', '2018-07-20', 11),
  ('2016-02-03', '2019-05-25', 12),
  ('2017-03-05', NULL, 13),
  ('2018-04-21', NULL, 14),
  ('2019-05-15', '2024-06-10', 15),
  ('2020-06-13', '2024-09-15', 16),
  ('2021-07-25', NULL, 17),
  ('2022-08-30', '2024-03-05', 18),
  ('2024-09-18', NULL, 19),
  ('2015-10-18', NULL, 20),
   ('2015-10-02', NULL, 21),
  ('2015-01-15', '2018-07-20', 22),
  ('2016-02-10', '2019-05-25', 23),
  ('2017-03-05', NULL, 24),
  ('2018-04-20', NULL, 25),
  ('2019-05-15', '2024-06-10', 26),
  ('2020-06-29', '2024-09-15', 27),
  ('2021-07-25', NULL, 28),
  ('2022-08-30', '2024-03-05', 29),
  ('2024-09-18', NULL, 30),
  ('2015-10-22', NULL, 31),
  ('2015-11-15', '2018-07-20', 32),
  ('2016-02-10', '2019-05-25', 33),
  ('2017-03-18', NULL, 34),
  ('2018-04-20', NULL, 35),
  ('2019-12-15', '2024-06-10', 36),
  ('2020-06-15', '2024-09-15', 37),
  ('2021-07-25', NULL, 38),
  ('2022-08-30', '2024-03-05', 39),
  ('2024-09-18', NULL, 40);

INSERT INTO Vacacion (vacacion_fecha_inicio, vacacion_fecha_fin, vacacion_total_dias, FK_contrato)
VALUES
  ('2024-01-08', '2024-01-14', 7, 1),
  ('2024-01-15', '2024-01-21', 7, 2),
  ('2024-01-22', '2024-01-28', 7, 3),
  ('2024-01-29', '2024-02-04', 7, 4),
  ('2024-02-05', '2024-02-11', 7, 5),
  ('2024-02-12', '2024-02-18', 7, 6),
  ('2024-02-19', '2024-02-25', 7, 7),
  ('2024-02-26', '2024-03-04', 7, 8),
  ('2024-03-05', '2024-03-11', 7, 9);

INSERT INTO Beneficio (beneficio_nombre, beneficio_descripcion, beneficio_tipo)
VALUES
  ('Bono por hijos', 'Beneficio dado para los trabajadores que tienen hijos', 'semestral'),
  ('Bono por antiguedad', 'Beneficio dado para los trabajadores que tienen antiguedad', 'anual'),
  ('Bono por desempeño', 'Beneficio dado para los trabajadores que tienen buen desempeño', 'anual'),
  ('Bono por asistencia', 'Beneficio dado para los trabajadores que tienen buena asistencia', 'anual'),
  ('Bono por puntualidad', 'Beneficio dado para los trabajadores que tienen buena puntualidad', 'anual'),
  ('Bono por vacaciones', 'Beneficio dado para los trabajadores que tienen vacaciones', 'anual'),
  ('Bono por navidad', 'Beneficio dado para los trabajadores en navidad', 'anual'),
  ('Seguro social', 'Cobertura de seguro médico', 'anual');

INSERT INTO Contrato_P_Beneficio(
	cont_p_beneficio_monto, FK_contrato, FK_beneficio)
VALUES
  (1000, 3, 1),
  (1000, 10, 1),
  (1000, 9, 1),
  (1000, 6, 1),
  (1000, 7, 1),
  (1500, 1, 2),
  (1500, 2, 2),
  (1500, 3, 2),
  (1500, 10, 2),
  (1500, 3, 2),
  (1500, 2, 2),
  (1500, 5, 2),
  (1500, 1, 2),
  (1500, 4, 2),
  (1500, 7, 2),
  (1800, 1, 3),
  (1800, 2, 3),
  (1800, 3, 3),
  (1800, 4, 3),
  (1800, 5, 3),
  (1800, 6, 3),
  (1800, 7, 3),
  (1800, 8, 3),
  (1800, 9, 3),
  (1800, 1, 3),
  (1800, 7, 3),
  (1800, 9, 3),
  (1800, 4, 3),
  (1800, 8, 3),
  (1800, 7, 3),
  (1800, 3, 3),
  (800, 5, 4),
  (800, 6, 4),
  (800, 7, 4),
  (800, 8, 4),
  (800, 9, 4),
  (800, 2, 4),
  (800, 8, 4),
  (800, 5, 4),
  (800, 2, 4),
  (800, 8, 4),
  (800, 5, 4),
  (800, 2, 4),
  (800, 9, 4),
  (1400, 1, 5),
  (1400, 2, 5),
  (1400, 6, 5),
  (1400, 7, 5),
  (1400, 8, 5),
  (1400, 9, 5),
  (2000, 4, 6),
  (2000, 5, 6),
  (2000, 6, 6),
  (2000, 7, 6),
  (2000, 8, 6),
  (1000, 1, 7),
  (1000, 2, 7),
  (1000, 6, 7),
  (1000, 7, 7),
  (1000, 1, 8),
  (1000, 2, 8),
  (1000, 6, 8),
  (1000, 7, 8),
  (1000, 8, 8);

INSERT INTO Horario (horario_hora_inicio, horario_hora_fin, horario_dia)
VALUES
  ('08:00:00', '17:00:00', 'Lunes'),
  ('08:00:00', '17:00:00', 'Martes'),
  ('08:00:00', '17:00:00', 'Miercoles'),
  ('08:00:00', '17:00:00', 'Jueves'),
  ('08:00:00', '17:00:00', 'Viernes'),
  ('08:00:00', '16:00:00', 'Lunes'),
  ('08:00:00', '16:00:00', 'Martes'),
  ('08:00:00', '16:00:00', 'Miercoles'),
  ('08:00:00', '16:00:00', 'Jueves'),
  ('08:00:00', '16:00:00', 'Viernes'),
  ('09:00:00', '13:00:00', 'Sabado'),
  ('10:00:00', '14:00:00', 'Domingo'),
  ('07:00:00', '15:00:00', 'Lunes'),
  ('07:30:00', '15:30:00', 'Martes'),
  ('07:30:00', '15:30:00', 'Miercoles');

INSERT INTO Contrato_Horario(
	FK_codigo_contrato, FK_codigo_horario)
VALUES 
  (1, 1),
  (1, 3),
  (1, 5),
  (2, 2),
  (2, 4),
  (3, 1),
  (3, 3),
  (3, 5),
  (4, 2),
  (4, 3),
  (4, 4),
  (5, 1),
  (5, 3),
  (5, 5),
  (6, 1),
  (6, 2),
  (6, 3),
  (7, 3),
  (7, 4),
  (7, 5),
  (8, 2),
  (8, 4),
  (9, 1),
  (9, 3),
  (9, 5),
  (10, 1),
  (10, 3),
  (10, 5),
  (11, 2),
  (11, 3),
  (11, 4),
  (12, 1),
  (12, 3),
  (12, 5),
  (13, 1),
  (13, 2),
  (13, 3),
  (14, 3),
  (14, 4),
  (14, 5),
  (15, 2),
  (15, 4),
  (16, 1),
  (16, 3),
  (16, 5),
  (17, 1),
  (17, 3),
  (17, 5),
  (18, 2),
  (18, 3),
  (18, 4),
  (19, 1),
  (19, 3),
  (19, 5),
  (20, 1),
  (20, 2),
  (20, 3),
  (21, 3),
  (21, 4),
  (21, 5),
  (22, 2),
  (22, 4),
  (23, 1),
  (23, 3),
  (23, 5),
  (24, 3),
  (24, 4),
  (24, 5),
  (25, 2),
  (25, 4),
  (26, 1),
  (26, 3),
  (26, 5),
  (27, 1),
  (27, 3),
  (27, 5),
  (28, 2),
  (28, 3),
  (28, 4),
  (29, 1),
  (29, 3),
  (29, 5),
  (30, 1),
  (30, 2),
  (30, 3),
  (31, 3),
  (31, 4),
  (31, 5),
  (32, 2),
  (32, 4),
  (33, 1),
  (33, 3),
  (33, 5),
  (34, 3),
  (34, 4),
  (34, 5),
  (35, 2),
  (35, 4),
  (36, 1),
  (36, 3),
  (36, 5),
  (37, 1),
  (37, 3),
  (37, 5),
  (38, 2),
  (38, 3),
  (38, 4),
  (39, 1),
  (39, 3),
  (39, 5),
  (40, 1),
  (40, 2),
  (40, 3);

INSERT INTO Cargo (cargo_nombre, cargo_descripcion)
VALUES
  ('Gerente', 'Encargado'),
  ('Administrador', 'Administrador general del negocio'),
  ('Repartidor', 'Responsable de la entrega de productos'),
  ('Empleado', 'Empleado general del negocio'),
  ('Vendedor', 'Encargado de la venta de productos'),
  ('Almacenista', 'Encargado del almacén de productos'),
  ('Contador', 'Encargado de la contabilidad del negocio'),
  ('Asistente', 'Asistente general del negocio'),
  ('Secretaria', 'Encargada de la recepción de llamadas y mensajes'),
  ('Jefe de ventas', 'Encargado de la venta de productos'),
  ('Jefe de compras', 'Encargado de la compra de productos'),
  ('Jefe de RRHH', 'Encargado de los recursos humanos del negocio'),
  ('Jefe de planta', 'Encargado de la planta de producción'),
  ('Jefe de administración', 'Encargado de la administración del negocio'),
  ('Jefe de almacén', 'Encargado del almacén de productos'),
  ('Ingeniero Aeronáutico', 'Diseño y desarrollo de aeronaves'),
  ('Técnico de Ensamblaje', 'Montaje de componentes de aviones'),
  ('Supervisor de Producción', 'Supervisión de líneas de producción'),
  ('Especialista en Calidad', 'Inspección y pruebas de calidad'),
  ('Gerente de Planta', 'Gestión de operaciones en planta'),
  ('Diseñador de Interiores', 'Diseño de cabinas y espacios internos'),
  ('Mecánico de Aeronaves', 'Mantenimiento y reparación de aeronaves'),
  ('Logístico de Materiales', 'Gestión de inventarios y materiales'),
  ('Analista Financiero', 'Control de costos y presupuestos'),
  ('Especialista en Seguridad', 'Cumplimiento de normativas de seguridad');

INSERT INTO Contrato_Cargo(
	cont_carg_fecha_inicio, cont_carg_fecha_fin, cont_carg_sueldo_mensual, cont_carg_horas_sem, FK_contrato, FK_cargo)
VALUES
  ('2015-01-15', '2018-07-20', 500, 40, 1, 1),
  ('2016-02-10', '2019-05-25', 400, 40, 2, 2),
  ('2017-03-05', NULL, 1000, 40, 3, 3),
  ('2018-04-20', NULL, 700, 40, 4, 4),
  ('2019-05-15', '2024-06-10', 800, 40, 5, 5),
  ('2020-06-10', '2024-09-15', 900, 40, 6, 6),
  ('2021-07-25', NULL, 550, 40, 7, 7),
  ('2022-08-30', '2024-03-05', 450, 40, 8, 8),
  ('2024-09-18', NULL, 1050, 40, 9, 9),
  ('2015-10-02', NULL, 750, 40, 10, 10);

  INSERT INTO Contrato_Cargo (
    codigo_contrato_cargo, cont_carg_fecha_inicio, cont_carg_fecha_fin, cont_carg_sueldo_mensual, cont_carg_horas_sem, cont_carg_sueldo_p_hora, FK_cargo, FK_contrato
) VALUES
    (16, '2023-01-01', '2023-12-31', 4500.00, 40, 28.12, 1, 1),
    (17, '2023-02-01', '2024-01-31', 3200.00, 40, 20.00, 2, 2),
    (18, '2023-03-01', '2023-12-31', 5000.00, 40, 31.25, 3, 3),
    (19, '2023-04-01', '2024-03-31', 4000.00, 40, 25.00, 4, 4),
    (20, '2023-05-01', '2024-04-30', 6000.00, 40, 37.50, 5, 5),
    (21, '2023-06-01', '2024-05-31', 3500.00, 40, 21.88, 6, 6),
    (22, '2023-07-01', '2024-06-30', 3800.00, 40, 23.75, 7, 7),
    (23, '2023-08-01', '2024-07-31', 3000.00, 40, 18.75, 8, 8),
    (24, '2023-09-01', '2024-08-31', 4200.00, 40, 26.25, 9, 9),
    (25, '2023-10-01', '2024-09-30', 4500.00, 40, 28.12, 10, 10);

INSERT INTO Asistencia (
    asistencia_codigo, asistencia_fecha_hora_entrada, asistencia_fecha_hora_salida, FK_contrato
) VALUES
    (1, '2023-01-02 08:00:00', '2023-01-02 16:00:00', 1),
    (2, '2023-01-03 08:00:00', '2023-01-03 16:00:00', 2),
    (3, '2023-01-04 08:00:00', '2023-01-04 16:00:00', 3),
    (4, '2023-01-05 08:00:00', '2023-01-05 16:00:00', 4),
    (5, '2023-01-06 08:00:00', '2023-01-06 16:00:00', 5),
    (6, '2023-01-07 08:00:00', '2023-01-07 16:00:00', 6),
    (7, '2023-01-08 08:00:00', '2023-01-08 16:00:00', 7),
    (8, '2023-01-09 08:00:00', '2023-01-09 16:00:00', 8),
    (9, '2023-01-10 08:00:00', '2023-01-10 16:00:00', 9),
    (10, '2023-01-11 08:00:00', '2023-01-11 16:00:00', 10);

INSERT INTO Estatus_Orden (
    estatus_ord_id, estatus_ord_nombre, estatus_ord_descripcion
) VALUES
    (1, 'Pendiente', 'Orden en espera de procesamiento'),
    (2, 'En Proceso', 'Orden en procesamiento activo'),
    (3, 'Completada', 'Orden completamente procesada'),
    (4, 'Cancelada', 'Orden cancelada por el cliente'),
    (5, 'Devuelta', 'Orden devuelta al almacén');

INSERT INTO estatus_pedido (
    estatus_ped_id, estatus_ped_nombre, estatus_ped_descripcion
) VALUES
    (1, 'Pendiente', 'Pedido aún no procesado'),
    (2, 'Procesado', 'Pedido procesado y empaquetado'),
    (3, 'En Envío', 'Pedido en tránsito al cliente'),
    (4, 'Entregado', 'Pedido recibido por el cliente'),
    (5, 'Cancelado', 'Pedido cancelado por el cliente');




-- Inserciones para la tabla Area
INSERT INTO Area (
    area_id, area_nombre, area_descripcion, FK_sede
) VALUES
    (1, 'Producción', 'Línea principal de producción de aeronaves', 1),
    (2, 'Calidad', 'Inspección y control de calidad', 1),
    (3, 'Diseño', 'Diseño de prototipos y personalización', 5),
    (4, 'Logística', 'Gestión de entrada y salida de materiales', 4),
    (5, 'Pruebas', 'Zona de evaluación de rendimiento', 3);

-- Inserciones para la tabla Zona
INSERT INTO Zona (
    zona_id, zona_nombre, zona_descripcion, FK_area
) VALUES
    (1, 'Zona de Montaje', 'Montaje de fuselajes y alas', 1),
    (2, 'Zona de Electrónica', 'Instalación de sistemas electrónicos', 1),
    (3, 'Zona de Pintura', 'Pintura y acabado exterior', 2),
    (4, 'Zona de Almacenamiento', 'Depósito de materiales y repuestos', 4),
    (5, 'Zona de Simulación', 'Pruebas en simuladores', 5);

-- Inserciones para la tabla Equipo
INSERT INTO Equipo (
    codigo_equipo, fecha_hora_inicio, fecha_hora_fin, FK_cont_per, FK_zona
) VALUES
    (1, '2023-01-01 08:00:00', '2023-01-01 18:00:00', 1, 1),
    (2, '2023-01-02 08:00:00', '2023-01-02 18:00:00', 2, 2),
    (3, '2023-01-03 08:00:00', '2023-01-03 18:00:00', 3, 3),
    (4, '2023-01-04 08:00:00', '2023-01-04 18:00:00', 4, 4),
    (5, '2023-01-05 08:00:00', '2023-01-05 18:00:00', 5, 5);

-- Inserciones para la tabla Almacen
INSERT INTO Almacen (
    almacen_id, almacen_capacidad, almacen_direccion, FK_sede
) VALUES
    (1, 5000, 'Av. Central N° 123', 1),
    (2, 3000, 'Av. Secundaria N° 456', 2),
    (3, 4000, 'Zona Industrial N° 789', 3),
    (4, 2000, 'Calle Logística N° 321', 4),
    (5, 3500, 'Av. Creativa N° 654', 5);

INSERT INTO Materia_Prima (
    materia_p_id, materia_p_nombre, materia_p_descripcion
) VALUES
    (1, 'Aluminio', 'Material para fuselajes y estructuras'),
    (2, 'Fibra de Carbono', 'Material ligero y resistente'),
    (3, 'Titanio', 'Material para componentes de alta resistencia'),
    (4, 'Plásticos Técnicos', 'Material para acabados internos'),
    (5, 'Aleaciones Especiales', 'Materiales avanzados para propulsión'),
    (6, 'Compuestos Cerámicos', 'Material para protección térmica'),
    (7, 'Vidrio Reforzado', 'Material para ventanas y cabinas'),
    (8, 'Polímeros', 'Materiales flexibles y ligeros'),
    (9, 'Acero Inoxidable', 'Material para componentes estructurales'),
    (10, 'Cobre', 'Material para cableados eléctricos');

INSERT INTO Mate_P_Proveedor (
    materia_p_prov_id, mate_p_prov_precio, FK_materia_prima, FK_prov
) VALUES
    (1, 150.00, 1, 1),
    (2, 250.00, 2, 2),
    (3, 300.00, 3, 3),
    (4, 120.00, 4, 4),
    (5, 400.00, 5, 5),
    (6, 180.00, 6, 1),
    (7, 220.00, 7, 2),
    (8, 275.00, 8, 3),
    (9, 350.00, 9, 4),
    (10, 145.00, 10, 5);

INSERT INTO Inventario_Almacen (
    cod_inv_almacen, inv_alm_cant, FK_almacen, FK_mat_prim
) VALUES
    (1, 500, 1, 1),
    (2, 300, 2, 2),
    (3, 400, 3, 3),
    (4, 600, 4, 4),
    (5, 250, 5, 5),
    (6, 700, 1, 6),
    (7, 800, 2, 7),
    (8, 450, 3, 8),
    (9, 550, 4, 9),
    (10, 650, 5, 10);

INSERT INTO Historico_Tasa_Dolar (
    H_tasa_precio, H_tasa_fecha_inicio, H_tasa_fecha_fin
) VALUES
    (30.23, '2023-01-01', '2023-01-31'),
    (21.34, '2023-02-01', '2023-02-28'),
    (22, '2023-03-01', '2023-03-31'),
    (23, '2023-04-01', '2023-04-30'),
    (24, '2023-05-01', '2023-05-31'),
    (25, '2023-06-01', '2023-06-30'),
    (26, '2023-07-01', '2023-07-31'),
    (27, '2023-08-01', '2023-08-31'),
    (28, '2023-09-01', '2023-09-30'),
    (50.12, '2025-01-01', NULL);

INSERT INTO Tipo_Prueba_Mate (
    tipo_pm_id, tipo_pm_nombre, tipo_pm_duracion, FK_zona
) VALUES
    (1, 'Resistencia Térmica', '02:00:00', 1),
    (2, 'Flexibilidad', '01:30:00', 2),
    (3, 'Resistencia a Impactos', '03:00:00', 3),
    (4, 'Conductividad', '01:00:00', 4),
    (5, 'Aislante', '02:30:00', 5);

INSERT INTO Prueba_Material (
    FK_tipo_pm, FK_materia_p_pm
) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Inserciones para la tabla estatus_prueba_mate
INSERT INTO estatus_prueba_mate (
    estatus_pm_id, estatus_pm_nombre, estatus_pm_descripcion
) VALUES
    (1, 'En Progreso', 'Prueba en ejecución'),
    (2, 'Completa', 'Prueba finalizada exitosamente'),
    (3, 'Fallida', 'Prueba no cumplió los estándares');

-- Inserciones para la tabla Historico_Estatus_Prueba_Mate
INSERT INTO Historico_Estatus_Prueba_Mate (
    hist_est_pru_mate_cod, fecha_hora_inicio_estatus, fecha_hora_fin_estatus, FK_estatus_pm, FK_prueba_mate
) VALUES
    (1, '2023-11-01 08:00:00', '2023-11-01 12:00:00', 1, 1),
    (2, '2023-11-02 09:00:00', '2023-11-02 13:30:00', 2, 2),
    (3, '2023-11-03 10:00:00', NULL, 1, 3),
    (4, '2023-11-04 07:30:00', '2023-11-04 11:00:00', 3, 4),
    (5, '2023-11-05 14:00:00', '2023-11-05 17:00:00', 2, 5),
    (6, '2023-11-06 08:15:00', NULL, 1, 1),
    (7, '2023-11-07 13:00:00', '2023-11-07 15:45:00', 3, 2),
    (8, '2023-11-08 11:00:00', NULL, 1, 3),
    (9, '2023-11-09 08:45:00', '2023-11-09 10:30:00', 2, 4),
    (10, '2023-11-10 09:30:00', '2023-11-10 11:15:00', 1, 5);

    

INSERT INTO Caracteristica (caracteristica_id,caracteristica_nombre,caracteristica_descripcion)
VALUES 
(1,'Capacidad Total','Numero de pasajeros'),
(2,'Longitud','Medida de la aeronave'),
(3,'Envergadura',NULL),
(4,'Altura','Altura del avion'),
(5,'Peso Vacío',NULL),
(6,'Peso Maximo de despegue',NULL),
(7,'Planta Motriz',NULL),
(8,'Empuje normal',NULL),
(9,'Velocidad Maxima Operativa',NULL),
(10,'Alcance', NULL),
(11,'Tripulacion Total',NULL),
(12,'Superficie alar',NULL),
(13,'Velocidad Crucero',NULL),
(14,'Techo de Servicio',NULL),
(15,'Regimen de Ascenso',NULL),
(16,'Tripulacion Pilotos',NULL),
(17,'Tripulacion Auxiliares',NULL),
(18,'Capacidad Clase densa',NULL),
(19,'Capacidad Clase estandar',NULL),
(20,'Capacidad Segunda Clase',NULL),
(21,'Distancia entre asientos de Clase densa',NULL),
(22,'Distancia entre asientos de Clase estandar',NULL),
(23,'Distancia entre asientos de Alta densidad',NULL),
(24,'Ancho de los asientos',NULL),
(25,'Flecha Alar',NULL),
(26,'Ancho del fuselaje',NULL),
(27,'Alto del fuselaje',NULL),
(29,'Alto de la cabina de pasajeros',NULL),
(30,'Alto de la cabina',NULL),
(31,'Peso de Aterrizaje Maximo',NULL),
(32,'Volumen de Carga',NULL),
(33,'Carrera de Despegue con peso máximo',NULL),
(34,'Alcance con carga máxima',NULL),
(35,'Máxima capacidad de combustible',NULL),
(36,'Motores',NULL),
(37,'Empuje Máximo',NULL),
(38,'Empuje a Velocidad Crucero',NULL),
(39,'Diámetro de los álabes o las aspas del motor', NULL),
(40,'Longitud del Motor', NULL),
(41,'Capacidad de Pasajeros para 2 clases',NULL),
(42,'Capacidad de Pasajeros para 3 clases',NULL),
(43,'Autonomía con peso máximo de despegue',NULL),
(44,'Motorización',NULL),
(45,'Empuje unitario',NULL),
(46,'Ancho de la Cabina',NULL),
(47,'Alcance con carga máxima',NULL),
(48,'Empuje unitario PW',NULL),
(49,'Empuje unitario RR', NULL),
(50,'Empuje unitario GE',NULL),
(51,'Empuje unitario ER',NULL)
;


INSERT INTO Modelo_Avion (modelo_avion_id,modelo_avion_nombre, modelo_avion_descripcion)
VALUES
<<<<<<< HEAD
(1,'AU-80', NULL),
(2,'AU-801',NULL),
(3,'AU-802',NULL),
(4,'AU-802A',NULL),
(5,'AU-802B',NULL),
(6,'AU-802C',NULL),
(7,'AU-802D',NULL),
(8,'AU-802E',NULL),
(9,'AU-802F',NULL),
(10,'AU-747PLUS',NULL),
(11,'AU-747PLATINIUM',NULL),
(12,'AU-747GOLD',NULL),
(13,'AU-747SILVER',NULL),
(14,'AU-747SILVERB',NULL);
=======
(1,'AU80', NULL),
(2,'AU801',NULL),
(3,'AU802',NULL);
>>>>>>> f751fa82b0aea5df12034a3d2e7fb546544013e6


INSERT INTO Modelo_Avion_Caracteristica (modelo_avion_caract_id, modelo_avion_caract_fk_modelo, modelo_avion_caract_fk_caract, modelo_avion_caract_unidad_medida, modelo_avion_caract_valor)
VALUES
(1,1,1,'Pasajeros',179),
(2,1,2,'Metros',44.1),
(3,1,3,'Metros',39.9),
(4,1,4,'Metros',12.9),
(5,1,5,'Kg',55580),
(6,1,6,'Kg',116570),
(7,1,7,'Tuborreactores Pratt & Whitney JT3D 1',4),
(8,1,8,'KN', 75.6),
(9,1,9,'Km/h',1000),
(10,1,10,'Km',6820),
(11,2,11,'Tripulantes',7),
(12,2,1,'Pasajeros',189),
(13,2,2,'Metros',46.7),
(14,2,3,'Metros',32.9),
(15,2,4,'Metros',10.4),
(16,2,12,'Metros Cuadrados',153),
(17,2,5,'Kg',46700),
(18,2,6,'Kg',95028),
(19,2,7,'Tuborreactores Pratt & Whitney JT8D',3),
(20,2,8,'Kn de empuje en cada uno',77),
(21,2,13,'Km/h a 1000m',907),
(22,2,10,'Km',4450),
(23,2,14,'Metros',13000),
<<<<<<< HEAD
(24,2,15,'M/s',14.9),
(25,3,16,'Tripulantes',2),
(26,3,17,'Tripulantes',4),
(27,3,18,'Pasajeros',118),
(28,3,19,'Pasajeros',104),
(29,3,21,'Cm',76),
(30,3,22,'Cm',86),
(31,3,24,'Metros',43.7),
(32,3,2,'Metros',28.6),
(33,3,3,'Metros',28.3),
(34,3,4,'Metros',11.3),
(35,3,25,'Grados',25),
(36,3,26,'Metros',3.76),
(37,3,27,'Metros',4.01),
(38,3,46,'Metros',3.54),
(39,3,30,'Metros',2.20),
(40,3,5,'Kg',28120),
(41,3,6,'Kg',49190),
(42,3,31,'Kg',45000),
(43,3,32,'Metros Cuadrados',18.4),
(44,3,33,'Metros',1990),
(45,3,14,'Metros',10700),
(46,3,13,'Km/h',780),
(47,3,9,'Km/h',876),
(48,3,47,'Km',3440),
(49,3,35,'Litros',17860),
(50,3,36,'Pratt & Whitney JT8D 7',2),
(51,3,37,'Kn',84.5),
(52,3,38,'Metros',17.21),
(53,3,39,'Metros',1.12),
(54,3,40,'Metros',3.20),
(55,4,16,'Tripulantes',2),
(56,4,17,'Tripulantes',4),
(57,4,18,'Pasajeros',168),
(58,4,19,'Pasajeros',159),
(59,4,21,'Cm',76),
(60,4,22,'Cm',81),
(61,4,24,'Cm',43.7),
(62,4,2,'Metros',36.5),
(63,4,3,'Metros',28.9),
(64,4,4,'Metros',11.1),
(65,4,25,'Grados',25),
(66,4,26,'Metros',3.76),
(67,4,27,'Metros',4.01),
(68,4,46,'Metros',3.54),
(69,4,30,'Metros',2.20),
(70,4,5,'Kg',33200),
(71,4,6,'Kg',68050),
(72,4,31,'Kg',56250),
(73,4,32,'Metros Cuadrados',38.9),
(74,4,33,'Metros',2540),
(75,4,14,'Metros',11300),
(76,4,13,'Km/h',780),
(77,4,9,'Km/h',876),
(78,4,47,'Km',4005),
(79,4,35,'Litros',23170),
(80,4,36,'CFM International 56 3B 2',2),
(81,4,37,'Kn',98),
(82,4,38,'Kn',21.92),
(83,4,39,'Metros',1.52),
(84,4,40,'Metros',2.36),
(85,5,16,'Tripulantes',2),
(86,5,17,'Tripulantes',4),
(87,5,18,'Pasajeros',132),
(88,5,19,'Pasajeros',123),
(89,5,21,'Cm',76),
(90,5,22,'Cm',81),
(91,5,24,'Cm',43.7),
(92,5,2,'Metros',31.1),
(93,5,3,'Metros',28.9),
(94,5,4,'Metros',11.1),
(95,5,25,'Grados',25),
(96,5,26,'Metros',3.76),
(97,5,27,'Metros',4.01),
(98,5,46,'Metros',3.54),
(99,5,30,'Metros',2.20),
(100,5,5,'Kg',31300),
(101,5,6,'Kg',60550),
(102,5,31,'Kg',50000),
(103,5,32,'Metros Cuadrados',23.3),
(104,5,33,'Metros',2470),
(105,5,14,'Metros',11300),
(106,5,13,'Km/h',780),
(107,5,9,'Km/h',876),
(108,5,47,'Km',4445),
(109,5,35,'Litros',23800),
(110,5,36,'CFM 56 3B 1',2),
(111,5,37,'Kn',89),
(112,5,38,'Kn',21.80),
(113,5,39,'Metros',1.52),
(114,5,40,'Metros',2.36),
(115,6,16,'Tripulantes',2),
(116,6,17,'Tripulantes',4),
(117,6,18,'Pasajeros',132),
(118,6,19,'Pasajeros',123),
(119,6,21,'Cm',76),
(120,6,22,'Cm',81),
(121,6,24,'Cm',43.7),
(122,6,2,'Metros',31.2),
(123,6,3,'Metros',35.7),
(124,6,4,'Metros',12.6),
(125,6,25,'Grados',25.02),
(126,6,26,'Metros',3.76),
(127,6,27,'Metros',4.01),
(128,6,46,'Metros',3.54),
(129,6,30,'Metros',2.20),
(130,6,5,'Kg',36380),
(131,6,6,'Kg',66000),
(132,6,31,'Kg',55000),
(133,6,32,'Metros Cuadrados',21.4),
(134,6,33,'Metros',2400),
(135,6,14,'Metros',12500),
(136,6,13,'Km/h',828),
(137,6,9,'Km/h',876),
(138,6,47,'Km',5650),
(139,6,35,'Litros',26020),
(140,6,36,'CFM 56 7B20',2),
(141,6,37,'Kn',91.6),
(142,6,38,'Kn',23.18),
(143,6,39,'Metros',1.55),
(144,6,40,'Metros',2.51),
(146,7,16,'Tripulantes',2),
(147,7,17,'Tripulantes',4),
(148,7,18,'Pasajeros',149),
(149,7,19,'Pasajeros',140),
(150,7,21,'Cm',76),
(151,7,22,'Cm',81),
(152,7,24,'Cm',43.7),
(153,7,2,'Metros',33.6),
(154,7,3,'Metros',35.7),
(155,7,4,'Metros',12.5),
(156,7,25,'Grados',25.02),
(157,7,26,'Metros',3.76),
(158,7,27,'Metros',4.01),
(159,7,46,'Metros',3.54),
(160,7,30,'Metros',2.20),
(161,7,5,'Kg',38150),
(162,7,6,'Kg',70000),
(163,7,31,'Kg',58600),
(164,7,32,'Metros Cuadrados',27.3),
(165,7,33,'Metros',2480),
(166,7,14,'Metros',12500),
(167,7,13,'Km/h',828),
(168,7,9,'Km/h',876),
(169,7,47,'Km',6230),
(170,7,35,'Litros',26020),
(171,7,36,'CFM 56 7B26',2),
(172,7,37,'Kn',116),
(173,7,38,'Kn',24.38),
(174,7,39,'Metros',1.55),
(175,7,40,'Metros',2.51),
(176,8,16,'Tripulantes',2),
(177,8,17,'Tripulantes',4),
(178,8,18,'Pasajeros',189),
(179,8,19,'Pasajeros',175),
(180,8,21,'Cm',76),
(181,8,22,'Cm',81),
(182,8,24,'Cm',43.7),
(183,8,2,'Metros',39.5),
(184,8,3,'Metros',35.7),
(185,8,4,'Metros',12.5),
(186,8,25,'Grados',25.02),
(187,8,26,'Metros',3.76),
(188,8,27,'Metros',4.01),
(189,8,46,'Metros',3.54),
(190,8,30,'Metros',2.20),
(191,8,5,'Kg',41415),
(192,8,6,'Kg',79000),
(193,8,31,'Kg',66350),
(194,8,32,'Metros Cuadrados',45.1),
(195,8,33,'Metros',2450),
(196,8,14,'Metros',12500),
(197,8,13,'Km/h',828),
(198,8,9,'Km/h',876),
(199,8,47,'Km',5665),
(200,8,35,'Litros',26020),
(201,8,36,'CFM 56 7B27',2),
(202,8,37,'Kn',121.4),
(203,8,38,'Kn',24.38),
(204,8,39,'Metros',1.55),
(205,8,40,'Metros',2.51),
(206,9,16,'Tripulantes',2),
(207,9,17,'Tripulantes',4),
(208,9,18,'Pasajeros',215),
(209,9,19,'Pasajeros',204),
(210,9,23,'Cm',71),
(211,9,22,'Cm',76),
(212,9,21,'Cm',81),
(213,9,24,'Cm',43.7),
(214,9,2,'Metros',42.1),
(215,9,3,'Metros',35.7),
(216,9,4,'Metros',12.5),
(217,9,25,'Grados',25.02),
(218,9,26,'Metros',3.76),
(219,9,27,'Metros',4.01),
(220,9,46,'Metros',3.54),
(221,9,30,'Metros',2.20),
(222,9,5,'Kg',44675),
(223,9,6,'Kg',85100),
(224,9,31,'Kg',66350),
(225,9,32,'Metros Cuadrados',52.5),
(226,9,33,'Metros',2450),
(227,9,14,'Metros',12500),
(228,9,13,'Km/h',823),
(229,9,9,'Km/h',876),
(230,9,47,'Km',4995),
(231,9,35,'Litros',26660),
(232,9,36,'CFM 56 7',2),
(233,9,37,'Kn',121.4),
(234,9,38,'Kn',24.38),
(235,9,39,'Metros',1.55),
(236,9,40,'Metros',2.51),
(237,10,16,'Tripulantes',3),
(238,10,41,'Pasajeros',452),
(239,10,42,'Pasajeros',366),
(240,10,2,'Metros',70.66),
(241,10,3,'Metros',59.64),
(242,10,4,'Metros',19.3),
(243,10,5,'Kg',162400),
(244,10,6,'Kg',333400),
(245,10,13,'Km/h',893),
(246,10,9,'Km/h',945),
(247,10,33,'Metros',3190),
(248,10,43,'Km',9800),
(249,10,35,'Litros',183380),
(250,10,44,'Pratt & Whitney JT9D 7A Rolls Royce RB211 524B2',4),
(251,10,48,'Kn',207),
(252,10,49,'Kn',223),
(253,11, 16,'Tripulantes',3),
(254,11,41,'Pasajero',452),
(255,11,42,'Pasajero',366),
(256,11,2,'Metros',70.66),
(257,11,3,'Metros',59.64),
(258,11,4,'Metros',19.3),
(259,11,5,'Kg',174000),
(260,11,6,'Kg',378000),
(261,11,13,'Km/h',893),
(262,11,9,'Km/h',945),
(263,11,33,'Metros',3190),
(264,11,43,'Km',12700),
(265,11,35,'Litros',199160),
(266,11,44,'PW JT9D 7R4G2 GE CF6 50E2 RR RB211 524D4',4),
(267,11,48,'Kn',244),
(268,11,50,'Kn',234),
(269,11,49,'kn',236),
(270,12,16,'Tripulantes',3),
(271,12,41,'Pasajeros',496),
(272,12,42,'Pasajeros',412),
(273,12,2,'Metros',70.66),
(274,12,3,'Metros',59.64),
(275,12,4,'Metros',19.3),
(276,12,5,'Kg',178100),
(277,12,6,'Kg',378000),
(288,12,13,'Km/h',893),
(289,12,9,'Km/h',945),
(290,12,33,'Metros',3320),
(291,12,43,'Km',12400),
(292,12,35,'Litros',199160),
(293,12,44,'PW JT9D 7R4G2 GE CF6 80C2B1 RR RB211 524D4',4),
(294,12,48,'Kn',244),
(295,12,50,'Kn',247),
(296,12,49,'Kn',236),
(297,13,16,'Tripulantes',2),
(298,13,41,'Pasajeros',524),
(299,13,42,'Pasajeros',416),
(300,13,2,'Metros',70.66),
(301,13,3,'Metros',64.4),
(302,13,4,'Metros',19.4),
(303,13,5,'Kg',178750),
(304,13,6,'Kg',397000),
(305,13,13,'Km/h',913),
(306,13,9,'Km/h',978),
(307,13,33,'Metros',3018),
(308,13,43,'Km',13450),
(309,13,35,'Litros',216840),
(310,13,44,'P&W PW 4062 GE CF6 80C2B5F RR RB211 524G/H ER:GE CF6 80C2B5F',4),
(311,13,48,'Kn',282),
(312,13,50,'Kn',276),
(313,13,49,'Kn',265),
(314,13,51,'Kn',276),
(315,14,16,'Tripulantes',2),
(316,14,42,'Pasajeros',567),
(317,14,2,'Metros',76.4),
(318,14,3,'Metros',68.5),
(319,14,4,'Metros',19.4),
(320,14,5,'Kg',186000),
(321,14,6,'Kg',440000),
(322,14,13,'Km/h',916),
(323,14,9,'Km/h',978),
(324,14,33,'Metros',3090),
(325,14,43,'Km',14815),
(326,14,35,'Litros',243120),
(327,14,44,'GE GEnx 2B67',4),
(328,14,45,'Kn',296);





















=======
(24,2,15,'M/s',14.9);
>>>>>>> f751fa82b0aea5df12034a3d2e7fb546544013e6
