CREATE DATABASE constructora;
USE constructora;

CREATE TABLE departamento (
	idDepartamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	departamento VARCHAR (100) NOT NULL
);
CREATE TABLE municipio (
	idMunicipio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idDepartamento INT NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES departamento (idDepartamento),
    municipio VARCHAR (100) NOT NULL
);

CREATE TABLE proyecto (
	idProyecto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idMunicipio INT NOT NULL,
	FOREIGN KEY (idMunicipio) REFERENCES municipio (idMunicipio),
	proyecto VARCHAR (100) NOT NULL,
    EstadoP VARCHAR (100) NOT NULL,
    comentario VARCHAR (100) NULL,
    costoInicial DOUBLE NOT NULL,
    costoFinal DOUBLE NULL,
    FechaInicio VARCHAR (100) NOT NULL,
    FechaFinal VARCHAR (100) NULL
);
CREATE TABLE maquinaria (
	idMaquinaria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    maquinaria VARCHAR (100) NOT NULL,
    modelo VARCHAR (100) NOT NULL,
    marca VARCHAR (100) NOT NULL,
    tipo VARCHAR (100) NOT NULL,
    operatividad DOUBLE NOT NULL,
    estado VARCHAR (100) NOT NULL
);
CREATE TABLE rol (
	idRol INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NivelAcceso VARCHAR (100) NOT NULL
);

CREATE TABLE empleado (
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idRol INT NOT NULL,
    FOREIGN KEY (idRol) REFERENCES rol (idRol),
    empleado VARCHAR (100) NOT NULL,
    usuario VARCHAR (100) NOT NULL,
    contraseña VARCHAR (100) NOT NULL,
    salario DOUBLE NOT NULL,
    foto varchar(1000)  NOT NULL,
    estadoE VARCHAR (100) NOT NULL
);

CREATE TABLE detalle_proyecto (
	idDetalleProyecto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idMaquinaria INT NOT NULL,
	FOREIGN KEY (idMaquinaria) REFERENCES maquinaria (idMaquinaria),
	idEmpleado INT NOT NULL,
	FOREIGN KEY (idEmpleado) REFERENCES empleado (idEmpleado),
    idProyecto INT NOT NULL,
	FOREIGN KEY (idProyecto) REFERENCES proyecto (idProyecto)

);

INSERT INTO `departamento` (`idDepartamento`, `departamento`) VALUES
	(1, 'Ahuachapán'),
	(2, 'Santa Ana'),
	(3, 'Sonsonate'),
	(4, 'La Libertad'),
	(5, 'Chalatenango'),
	(6, 'San Salvador'),
	(7, 'Cuscatlán'),
	(8, 'La Paz'),
	(9, 'Cabañas'),
	(10, 'San Vicente'),
	(11, 'Usulután'),
	(12, 'Morazán'),
	(13, 'San Miguel'),
	(14, 'La Unión'); 

INSERT INTO `municipio` (`idMunicipio`, `municipio`, `idDepartamento`) VALUES
	(1, 'Ahuachapán', 1),
	(2, 'Jujutla', 1),
	(3, 'Atiquizaya', 1),
	(4, 'Concepción de Ataco', 1),
	(5, 'El Refugio', 1),
	(6, 'Guaymango', 1),
	(7, 'Apaneca', 1),
	(8, 'San Francisco Menéndez', 1),
	(9, 'San Lorenzo', 1),
	(10, 'San Pedro Puxtla', 1),
	(11, 'Tacuba', 1),
	(12, 'Turín', 1),
	(13, 'Candelaria de la Frontera', 2),
	(14, 'Chalchuapa', 2),
	(15, 'Coatepeque', 2),
	(16, 'El Congo', 2),
	(17, 'El Porvenir', 2),
	(18, 'Masahuat', 2),
	(19, 'Metapán', 2),
	(20, 'San Antonio Pajonal', 2),
	(21, 'San Sebastián Salitrillo', 2),
	(22, 'Santa Ana', 2),
	(23, 'Santa Rosa Guachipilín', 2),
	(24, 'Santiago de la Frontera', 2),
	(25, 'Texistepeque', 2),
	(26, 'Acajutla', 3),
	(27, 'Armenia', 3),
	(28, 'Caluco', 3),
	(29, 'Cuisnahuat', 3),
	(30, 'Izalco', 3),
	(31, 'Juayúa', 3),
	(32, 'Nahuizalco', 3),
	(33, 'Nahulingo', 3),
	(34, 'Salcoatitán', 3),
	(35, 'San Antonio del Monte', 3),
	(36, 'San Julián', 3),
	(37, 'Santa Catarina Masahuat', 3),
	(38, 'Santa Isabel Ishuatán', 3),
	(39, 'Santo Domingo de Guzmán', 3),
	(40, 'Sonsonate', 3),
	(41, 'Sonzacate', 3),
	(42, 'Alegría', 11),
	(43, 'Berlín', 11),
	(44, 'California', 11),
	(45, 'Concepción Batres', 11),
	(46, 'El Triunfo', 11),
	(47, 'Ereguayquín', 11),
	(48, 'Estanzuelas', 11),
	(49, 'Jiquilisco', 11),
	(50, 'Jucuapa', 11),
	(51, 'Jucuarán', 11),
	(52, 'Mercedes Umaña', 11),
	(53, 'Nueva Granada', 11),
	(54, 'Ozatlán', 11),
	(55, 'Puerto El Triunfo', 11),
	(56, 'San Agustín', 11),
	(57, 'San Buenaventura', 11),
	(58, 'San Dionisio', 11),
	(59, 'San Francisco Javier', 11),
	(60, 'Santa Elena', 11),
	(61, 'Santa María', 11),
	(62, 'Santiago de María', 11),
	(63, 'Tecapán', 11),
	(64, 'Usulután', 11),
	(65, 'Carolina', 13),
	(66, 'Chapeltique', 13),
	(67, 'Chinameca', 13),
	(68, 'Chirilagua', 13),
	(69, 'Ciudad Barrios', 13),
	(70, 'Comacarán', 13),
	(71, 'El Tránsito', 13),
	(72, 'Lolotique', 13),
	(73, 'Moncagua', 13),
	(74, 'Nueva Guadalupe', 13),
	(75, 'Nuevo Edén de San Juan', 13),
	(76, 'Quelepa', 13),
	(77, 'San Antonio del Mosco', 13),
	(78, 'San Gerardo', 13),
	(79, 'San Jorge', 13),
	(80, 'San Luis de la Reina', 13),
	(81, 'San Miguel', 13),
	(82, 'San Rafael Oriente', 13),
	(83, 'Sesori', 13),
	(84, 'Uluazapa', 13),
	(85, 'Arambala', 12),
	(86, 'Cacaopera', 12),
	(87, 'Chilanga', 12),
	(88, 'Corinto', 12),
	(89, 'Delicias de Concepción', 12),
	(90, 'El Divisadero', 12),
	(91, 'El Rosario (Morazán)', 12),
	(92, 'Gualococti', 12),
	(93, 'Guatajiagua', 12),
	(94, 'Joateca', 12),
	(95, 'Jocoaitique', 12),
	(96, 'Jocoro', 12),
	(97, 'Lolotiquillo', 12),
	(98, 'Meanguera', 12),
	(99, 'Osicala', 12),
	(100, 'Perquín', 12),
	(101, 'San Carlos', 12),
	(102, 'San Fernando (Morazán)', 12),
	(103, 'San Francisco Gotera', 12),
	(104, 'San Isidro (Morazán)', 12),
	(105, 'San Simón', 12),
	(106, 'Sensembra', 12),
	(107, 'Sociedad', 12),
	(108, 'Torola', 12),
	(109, 'Yamabal', 12),
	(110, 'Yoloaiquín', 12),
	(111, 'La Unión', 14),
	(112, 'San Alejo', 14),
	(113, 'Yucuaiquín', 14),
	(114, 'Conchagua', 14),
	(115, 'Intipucá', 14),
	(116, 'San José', 14),
	(117, 'El Carmen (La Unión)', 14),
	(118, 'Yayantique', 14),
	(119, 'Bolívar', 14),
	(120, 'Meanguera del Golfo', 14),
	(121, 'Santa Rosa de Lima', 14),
	(122, 'Pasaquina', 14),
	(123, 'Anamoros', 14),
	(124, 'Nueva Esparta', 14),
	(125, 'El Sauce', 14),
	(126, 'Concepción de Oriente', 14),
	(127, 'Polorós', 14),
	(128, 'Lislique', 14),
	(129, 'Antiguo Cuscatlán', 4),
	(130, 'Chiltiupán', 4),
	(131, 'Ciudad Arce', 4),
	(132, 'Colón', 4),
	(133, 'Comasagua', 4),
	(134, 'Huizúcar', 4),
	(135, 'Jayaque', 4),
	(136, 'Jicalapa', 4),
	(137, 'La Libertad', 4),
	(138, 'Santa Tecla', 4),
	(139, 'Nuevo Cuscatlán', 4),
	(140, 'San Juan Opico', 4),
	(141, 'Quezaltepeque', 4),
	(142, 'Sacacoyo', 4),
	(143, 'San José Villanueva', 4),
	(144, 'San Matías', 4),
	(145, 'San Pablo Tacachico', 4),
	(146, 'Talnique', 4),
	(147, 'Tamanique', 4),
	(148, 'Teotepeque', 4),
	(149, 'Tepecoyo', 4),
	(150, 'Zaragoza', 4),
	(151, 'Agua Caliente', 5),
	(152, 'Arcatao', 5),
	(153, 'Azacualpa', 5),
	(154, 'Cancasque', 5),
	(155, 'Chalatenango', 5),
	(156, 'Citalá', 5),
	(157, 'Comapala', 5),
	(158, 'Concepción Quezaltepeque', 5),
	(159, 'Dulce Nombre de María', 5),
	(160, 'El Carrizal', 5),
	(161, 'El Paraíso', 5),
	(162, 'La Laguna', 5),
	(163, 'La Palma', 5),
	(164, 'La Reina', 5),
	(165, 'Las Vueltas', 5),
	(166, 'Nueva Concepción', 5),
	(167, 'Nueva Trinidad', 5),
	(168, 'Nombre de Jesús', 5),
	(169, 'Ojos de Agua', 5),
	(170, 'Potonico', 5),
	(171, 'San Antonio de la Cruz', 5),
	(172, 'San Antonio Los Ranchos', 5),
	(173, 'San Fernando (Chalatenango)', 5),
	(174, 'San Francisco Lempa', 5),
	(175, 'San Francisco Morazán', 5),
	(176, 'San Ignacio', 5),
	(177, 'San Isidro Labrador', 5),
	(178, 'Las Flores', 5),
	(179, 'San Luis del Carmen', 5),
	(180, 'San Miguel de Mercedes', 5),
	(181, 'San Rafael', 5),
	(182, 'Santa Rita', 5),
	(183, 'Tejutla', 5),
	(184, 'Cojutepeque', 7),
	(185, 'Candelaria', 7),
	(186, 'El Carmen (Cuscatlán)', 7),
	(187, 'El Rosario (Cuscatlán)', 7),
	(188, 'Monte San Juan', 7),
	(189, 'Oratorio de Concepción', 7),
	(190, 'San Bartolomé Perulapía', 7),
	(191, 'San Cristóbal', 7),
	(192, 'San José Guayabal', 7),
	(193, 'San Pedro Perulapán', 7),
	(194, 'San Rafael Cedros', 7),
	(195, 'San Ramón', 7),
	(196, 'Santa Cruz Analquito', 7),
	(197, 'Santa Cruz Michapa', 7),
	(198, 'Suchitoto', 7),
	(199, 'Tenancingo', 7),
	(200, 'Aguilares', 6),
	(201, 'Apopa', 6),
	(202, 'Ayutuxtepeque', 6),
	(203, 'Cuscatancingo', 6),
	(204, 'Ciudad Delgado', 6),
	(205, 'El Paisnal', 6),
	(206, 'Guazapa', 6),
	(207, 'Ilopango', 6),
	(208, 'Mejicanos', 6),
	(209, 'Nejapa', 6),
	(210, 'Panchimalco', 6),
	(211, 'Rosario de Mora', 6),
	(212, 'San Marcos', 6),
	(213, 'San Martín', 6),
	(214, 'San Salvador', 6),
	(215, 'Santiago Texacuangos', 6),
	(216, 'Santo Tomás', 6),
	(217, 'Soyapango', 6),
	(218, 'Tonacatepeque', 6),
	(219, 'Zacatecoluca', 8),
	(220, 'Cuyultitán', 8),
	(221, 'El Rosario (La Paz)', 8),
	(222, 'Jerusalén', 8),
	(223, 'Mercedes La Ceiba', 8),
	(224, 'Olocuilta', 8),
	(225, 'Paraíso de Osorio', 8),
	(226, 'San Antonio Masahuat', 8),
	(227, 'San Emigdio', 8),
	(228, 'San Francisco Chinameca', 8),
	(229, 'San Pedro Masahuat', 8),
	(230, 'San Juan Nonualco', 8),
	(231, 'San Juan Talpa', 8),
	(232, 'San Juan Tepezontes', 8),
	(233, 'San Luis La Herradura', 8),
	(234, 'San Luis Talpa', 8),
	(235, 'San Miguel Tepezontes', 8),
	(236, 'San Pedro Nonualco', 8),
	(237, 'San Rafael Obrajuelo', 8),
	(238, 'Santa María Ostuma', 8),
	(239, 'Santiago Nonualco', 8),
	(240, 'Tapalhuaca', 8),
	(241, 'Cinquera', 9),
	(242, 'Dolores', 9),
	(243, 'Guacotecti', 9),
	(244, 'Ilobasco', 9),
	(245, 'Jutiapa', 9),
	(246, 'San Isidro (Cabañas)', 9),
	(247, 'Sensuntepeque', 9),
	(248, 'Tejutepeque', 9),
	(249, 'Victoria', 9),
	(250, 'Apastepeque', 10),
	(251, 'Guadalupe', 10),
	(252, 'San Cayetano Istepeque', 10),
	(253, 'San Esteban Catarina', 10),
	(254, 'San Ildefonso', 10),
	(255, 'San Lorenzo', 10),
	(256, 'San Sebastián', 10),
	(257, 'San Vicente', 10),
	(258, 'Santa Clara', 10),
	(259, 'Santo Domingo', 10),
	(260, 'Tecoluca', 10),
	(261, 'Tepetitán', 10),
	(262, 'Verapaz', 10); 

INSERT INTO `constructora`.`proyecto` (`idProyecto`, `idMunicipio`, `proyecto`, `EstadoP`, `comentario`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('1', '2', 'Viaducto los Chorros', 'Confirmado', '', '100', '', '2022-10-11', '');
INSERT INTO `constructora`.`proyecto` (`idProyecto`, `idMunicipio`, `proyecto`, `EstadoP`, `comentario`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('2', '1', 'Biblioteca Nacional', 'Confirmado', '', '500', '', '2023-01-12', '');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `comentario`, `costoInicial`, `FechaInicio`) VALUES ('3', 'Tren del Pacífico', 'Confirmado', '', '100', '2022-11-01');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `comentario`, `costoInicial`, `FechaInicio`) VALUES ('3', 'Carretera Surf City', 'Confirmado', '', '100', '2022-11-05');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `FechaInicio`) VALUES ('6', 'Surf City', 'Confirmado', '500', '2022-10-31');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('8', 'Ciudad Bitcoin', 'Entregado', '100', '1000', '2022-12-08', '2023-02-08');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('8', 'Aeropuerto del Pacífico', 'Entregado', '100', '2005', '2023-05-01', '2023-05-01');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('9', 'Puente María Chichilco', 'Entregado', '500', '810', '2023-02-12', '2023-05-21');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('214', 'Periférico Claudia Lars', 'Entregado', '100', '900', '2022-01-15', '2022-01-12');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('218', 'Paso a Desnivel Claudia Lars', 'Entregado', '488', '2500', '2001-19-03', '2002-01-12');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`, `FechaFinal`) VALUES ('214', 'Estadio Nacional', 'Confirmado', '500', '0', '2003-02-04', '');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`) VALUES ('218', 'Remodelación del Palacio Nacional', 'Confirmado', '600', '0', '2003-01-05');
INSERT INTO `constructora`.`proyecto` (`idMunicipio`, `proyecto`, `EstadoP`, `costoInicial`, `costoFinal`, `FechaInicio`) VALUES ('216', 'Paso del Tigre', 'Ingresado', '300', '0', '2016-08-14'); 


INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('1', 'Excavadora', '11rtx', 'Caterpilar', 'Excavación', '1000', 'Asignado');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('2', 'Aplanadora', '3060Core', 'Caterpilar', 'Pesada', '5000', 'Asignado');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('3', 'Perforadora', '11yfg', 'Carmix', 'Pesada', '1000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('4', 'Bailarina', 'gfdfgXOP', 'Wacker Neuson', 'Pesada', '5000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('5', 'Volqueta', '2264', 'Caterpilar', 'Pesada', '1000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('6', 'Dragas', '43060go', 'Komatsu', 'Pesada', '5000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('7', 'Pavimentadora', '40rtx', 'Zoomlion', 'Pesada', '1000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('8', 'Compactadora', 'qwe452', 'Hitachi Construction Machinery', 'Pesada', '5000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('9', 'Tractores', 'vfgr456', 'Volvo Construction Equipment', 'Excavación', '1000', 'Disponible');
INSERT INTO `constructora`.`maquinaria` (`idMaquinaria`, `maquinaria`, `modelo`, `marca`, `tipo`, `operatividad`, `estado`) VALUES ('10', 'Motovolquete', 'w4ds5e2d', 'Caterpilar', 'Semipesada', '5000', 'Disponible');


INSERT INTO `constructora`.`rol` (`idRol`, `NivelAcceso`) VALUES ('1', 'Admin');
INSERT INTO `constructora`.`rol` (`idRol`, `NivelAcceso`) VALUES ('2', 'Empleado');

INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('1', '2', 'Josue', 'J.Palacios', 'f20b85e64882a26195eeb465adcc0e87    ', '1000', 'https://scontent.fsal3-1.fna.fbcdn.net/v/t39.30808-6/314529787_2509974785811538_2307035747957554953_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=spTTyPPbVb8AX_tXNMq&tn=KxFo8BBPjbJJkIuj&_nc_ht=scontent.fsal3-1.fna&oh=00_AfCKez9LS2X8xfQiZjaj6NEiqly2zh4CRFE5e2e5hKZWJw&oe=636DC9B5', 'Asignado');
INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('2', '2', 'Paul', 'P.Ayala', '748e0dd3ea12e7887399d19ec7f8ed07', '1000', 'https://scontent.fsal3-1.fna.fbcdn.net/v/t39.30808-6/314697636_709392697423606_1478622458855905840_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=11eG6KIQOqoAX9TQsLB&_nc_ht=scontent.fsal3-1.fna&oh=00_AfAqelgmKH0ozaCpnErFxTFVRXwP43cNFGp0H8fpml7FzQ&oe=636C986E', 'Asignado');
INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('3', '1', 'Ernesto', 'E.Navarro', 'a096f53cbfc3266f7a875e775a31faf3', '500', 'https://scontent.fsal4-1.fna.fbcdn.net/v/t39.30808-6/236701290_3054181858239317_8508917019292694772_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHj1GAqizSw-dBxR7e5-pa7s-FMwyYCU3yz4UzDJgJTfEp94g8Qbgdy9WY4n85i8qTJczoPb30IQf5YEX907B-f&_nc_ohc=dhSm3XiOZvIAX9NgDGn&_nc_zt=23&_nc_ht=scontent.fsal4-1.fna&oh=00_AfDPq7LYL3wKLct_wg0WTbVaZhnoY4N3XtMB4JG30pVTnw&oe=636D209E', 'Asignado');
INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('4', '1', 'Marcela', 'M.Calero', '9de3a3d33e2b2138ea7c612ad1114dd8', '500', 'https://scontent.fsal6-1.fna.fbcdn.net/v/t39.30808-6/300908219_2177948855705931_5926486406527075017_n.jpg?_nc_cat=109&amp;ccb=1-7&amp;_nc_sid=09cbfe&amp;_nc_ohc=3lrFOrK0PA0AX-qfEGr&amp;_nc_ht=scontent.fsal6-1.fna&amp;oh=00_AfBetXk3XcTIE6sO9PKMpT9aMNhT7i1knsPeWFF45c_ktw&amp;oe=636C6BC7', 'Asignado');
INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('5', '2', 'Cristiano Ronaldo', 'C.Ronaldo', '827ccb0eea8a706c4c34a16891f84e7b', '1100', 'https://tork.news/__export/1654529508994/sites/tork/img/2022/06/06/cristiano-ronaldo-4k-photoshoot-black-suit-soccer-star.jpg_63844155.jpg', 'Disponible');
INSERT INTO `constructora`.`empleado` (`idEmpleado`, `idRol`, `empleado`, `usuario`, `contraseña`, `salario`, `foto`, `estadoE`) VALUES ('6', '2', 'Leonel Messi', 'L.Messi', 'e10adc3949ba59abbe56e057f20f883e', '1050', 'https://www.telemundodeportes.com/sites/default/files/2022/06/25/02/messi_negocio_psg_tlmd_1920x1080_2046626371674.jpg', 'Disponible');

INSERT INTO `constructora`.`detalle_proyecto` (`idDetalleProyecto`, `idMaquinaria`, `idEmpleado`, `idProyecto`) VALUES ('1', '1', '1', '1');
INSERT INTO `constructora`.`detalle_proyecto` (`idDetalleProyecto`, `idMaquinaria`, `idEmpleado`, `idProyecto`) VALUES ('2', '2', '2', '1');
INSERT INTO `constructora`.`detalle_proyecto` (`idDetalleProyecto`, `idMaquinaria`, `idEmpleado`, `idProyecto`) VALUES ('3', '1', '3', '2');
INSERT INTO `constructora`.`detalle_proyecto` (`idDetalleProyecto`, `idMaquinaria`, `idEmpleado`, `idProyecto`) VALUES ('4', '2', '4', '2');

/*CONSULTAS PARA REPORTES*/
/*Reporte de proyectos que se están ejecutando dentro de un rango de fechas*/ 
select * from proyecto 
where EstadoP="Confirmado" and str_to_date(  `FechaInicio`, '%Y-%m-%d') 
between "2022-10-01" and "2023-09-01"; 

/*Reporte de proyectos entregados dentro de un rango de fechas*/
select idProyecto, proyecto  as Proyecto, EstadoP as Estado, costoInicial, costoFinal, FechaInicio, FechaFinal as FechaEntrega from proyecto 
where EstadoP="Entregado" and str_to_date(  `FechaFinal`, '%Y-%m-%d') 
between "2022-10-01" and "2023-09-01";

/*Reporte de ganancias dentro de un rango de fechas*/ 
select idProyecto, proyecto, EstadoP, costoInicial, costoFinal, FechaInicio, FechaFinal,
if(costoFinal != 0, costoFinal - costoInicial, costoFinal)  as ganancia from proyecto
where EstadoP="Entregado" and FechaFinal
between "2022-10-01" and "2023-09-01";   

SELECT * FROM proyecto;

select idProyecto, proyecto, FechaInicio, FechaFinal, EstadoP, costoInicial, costoFinal,
if(costoFinal != 0, costoFinal - costoInicial, costoFinal)  as ganancia from proyecto
where EstadoP="Entregado" and str_to_date(  `FechaFinal`, '%Y-%m-%d') and FechaInicio= "%Y-%m-%d" and FechaFinal = "2022-12-20";

/*Reporte de gastos por cada proyecto*/ 
select dp.idDetalleProyecto as IdDetalle, p.proyecto as Proyecto, p.EstadoP as Estado,
p.costoInicial as Costo, sum(em.salario) as SalarioTotal, sum(ma.operatividad) as OperatividadTotal, 
p.costoInicial + sum(em.salario) + sum(ma.operatividad) as Gastos  from detalle_proyecto dp
inner join proyecto p on dp.idProyecto=p.idProyecto
inner join empleado em on dp.idEmpleado=em.idEmpleado
inner join maquinaria ma on dp.idMaquinaria=ma.idMaquinaria
where p.proyecto="Carretera";

/*Reporte de proyectos por departamento y por estado*/ 
select p.idProyecto, p.proyecto, p.EstadoP, p.comentario, p.costoInicial, p.costoFinal, p.FechaInicio, p.FechaFinal, d.departamento, m.municipio from proyecto p
inner join municipio m
on p.idMunicipio=m.idMunicipio
inner join departamento d
on m.idDepartamento=d.idDepartamento
where d.departamento="San Salvador" and p.EstadoP="Entregado"; 

/*TRIGGERS AL INSERTAR EL DETALLE*/
DELIMITER $$
  create trigger EstadoEmpleado
  after insert on detalle_proyecto
  for each row 
  update empleado 
  set estadoE = "Asignado" where idEmpleado=new.idEmpleado;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoMaquina
  after insert on detalle_proyecto
  for each row 
  update maquinaria 
  set estado = "Asignado" where idMaquinaria=new.idMaquinaria;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoProyecto
  after insert on detalle_proyecto
  for each row 
  update proyecto 
  set EstadoP = "Confirmado" where idProyecto=new.idProyecto;
  END$$
DELIMITER ; 

/*TRIGGER AL ACTUALIZAR LOS DATOS DE DETALLE*/
DELIMITER $$
  create trigger EstadoUpdateEmpleado
  after update on detalle_proyecto
  for each row
  update empleado 
  set estadoE = "Asignado" where idEmpleado=new.idEmpleado;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoUpdateOldEmpleado
  after update on detalle_proyecto
  for each row
  update empleado
  set estadoE = "Disponible" where idEmpleado=old.idEmpleado;
  END$$
DELIMITER ;

DELIMITER $$
  create trigger EstadoUpdateMaquina
  after update on detalle_proyecto
  for each row
  update maquinaria 
  set estado = "Asignado" where idMaquinaria=new.idMaquinaria;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoUpdateOldMaquina
  after update on detalle_proyecto
  for each row
  update maquinaria
  set estado = "Disponible" where idMaquinaria=old.idMaquinaria;
  END$$
DELIMITER ;

DELIMITER $$
  create trigger EstadoUpdateProyecto
  after update on detalle_proyecto
  for each row
  update proyecto 
  set EstadoP = "Confirmado" where idProyecto=new.idProyecto;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoUpdateOldProyecto
  after update on detalle_proyecto
  for each row
  update proyecto
  set EstadoP = "Ingresado" where idProyecto=old.idProyecto;
  END$$
DELIMITER ; 

/*TRIGGER AL ELIMINAR DEL DETALLE DE PROYECTO*/
DELIMITER $$
  create trigger EstadoDeleteEmpleado
  after delete on detalle_proyecto
  for each row
  update empleado
  set estadoE = "Disponible" where idEmpleado=old.idEmpleado;
  END$$
DELIMITER ;

DELIMITER $$
  create trigger EstadoDeleteMaquina
  after delete on detalle_proyecto
  for each row
  update maquinaria
  set estado = "Disponible" where idMaquinaria=old.idMaquinaria;
  END$$
DELIMITER ; 

DELIMITER $$
  create trigger EstadoDeleteProyecto
  after delete on detalle_proyecto
  for each row
  update proyecto
  set EstadoP = "Ingresado" where idProyecto=old.idProyecto;
  END$$
DELIMITER ; 

/*CONSULTA PARA LOS SELECT DEL DETALLE DE PROYECTO*/
select * from empleado em INNER JOIN rol ro ON em.idRol=ro.idRol where estadoE!="Asignado";
select * from maquinaria where estado!="Asignado";
select idProyecto, proyecto,m.municipio, EstadoP, comentario, costoInicial,costoFinal, FechaInicio, FechaFinal 
from proyecto p INNER JOIN municipio m
ON p.idMunicipio = m.idMunicipio where EstadoP="Ingresado" or EstadoP="Confirmado";  
