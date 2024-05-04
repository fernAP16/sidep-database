-- sd_usuario
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('JORGE SANDRO','TARAZONA','MUNAYCO','48641955','1980-10-01','jorge.tarazona@gmail.com',78.2,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('JUAN CARLOS','BAUTISTA','ENRIQUEZ','15879523','1982-08-30','juan.bautista@gmail.com',64.9,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('ABEL ROBERTO','DIAZ','FERNANDEZ','08512548','1979-07-15','abel.diaz@gmail.com',75.2,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('EMANUEL ','VILLAFUERTE','DOMINGUEZ','12012589','1981-08-04','emanuel.villafuerte@gmail.com',73.6,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('CLAUDIO JORGE','AGUIRRE','HERRERA','23567845','1978-01-05','claudio.aguirre@gmail.com',69.8,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('PEDRO MARIO','ALVAREZ','GONZALEZ','12547895','1985-03-29','pedro.gonzalez@gmail.com',75.4,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('CESAR FERNANDO','PEREZ','TORRES','24516874','1984-05-12','cesar.torres@gmail.com',76.5,1,sysdate(),'admin');
INSERT INTO sd_usuario (nombres, primer_apellido, segundo_apellido, dni, fecha_nacimiento, email, peso, activo, fecha_registro, usuario_registro) VALUES ('VICTOR SERGIO','ROMERO','ACOSTA','30214587','1975-04-17','victor.acosta@gmail.com',78.9,1,sysdate(),'admin');

-- sd_conductor
INSERT INTO sd_conductor(id_usuario, fecha_venc_licencia, clave_digital, activo, fecha_registro, usuario_registro) VALUES (1,'2024-10-04','8421',1,sysdate(),'admin');
INSERT INTO sd_conductor(id_usuario, fecha_venc_licencia, clave_digital, activo, fecha_registro, usuario_registro) VALUES (2,'2025-03-06','1269',1,sysdate(),'admin');
INSERT INTO sd_conductor(id_usuario, fecha_venc_licencia, clave_digital, activo, fecha_registro, usuario_registro) VALUES (3,'2024-08-14','4589',1,sysdate(),'admin');
INSERT INTO sd_conductor(id_usuario, fecha_venc_licencia, clave_digital, activo, fecha_registro, usuario_registro) VALUES (4,'2024-01-28','3586',1,sysdate(),'admin');

-- sd_revisor
INSERT INTO sd_revisor(id_usuario, contrasena, activo, fecha_registro, usuario_registro) VALUES (5,'r8t4b45sf',1,sysdate(),'admin');
INSERT INTO sd_revisor(id_usuario, contrasena, activo, fecha_registro, usuario_registro) VALUES (6,'rgr1d5a8f',1,sysdate(),'admin');
INSERT INTO sd_revisor(id_usuario, contrasena, activo, fecha_registro, usuario_registro) VALUES (7,'g5ds6dfe4',1,sysdate(),'admin');
INSERT INTO sd_revisor(id_usuario, contrasena, activo, fecha_registro, usuario_registro) VALUES (8,'2rf1s8f4s6',1,sysdate(),'admin');

-- sd_revisor
INSERT INTO sd_producto(nombre, activo, fecha_registro, usuario_registro) VALUES ('Cemento',1,sysdate(),'admin');
INSERT INTO sd_producto(nombre, activo, fecha_registro, usuario_registro) VALUES ('Ladrillo',1,sysdate(),'admin');
INSERT INTO sd_producto(nombre, activo, fecha_registro, usuario_registro) VALUES ('Pallets',1,sysdate(),'admin');

-- sd_marca
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('APU',1,sysdate(),'admin');
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('SOL',1,sysdate(),'admin');
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('PIRAMIDE',1,sysdate(),'admin');
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('BASA',1,sysdate(),'admin');
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('LARK',1,sysdate(),'admin');
INSERT INTO sd_marca(nombre, activo, fecha_registro, usuario_registro) VALUES ('CHEP',1,sysdate(),'admin');

-- sd_unidad
INSERT INTO sd_unidad(nombre, activo, fecha_registro, usuario_registro) VALUES ('bolsas de 42.5 kg',1,sysdate(),'admin');
INSERT INTO sd_unidad(nombre, activo, fecha_registro, usuario_registro) VALUES ('bolsas de 52.5 kg',1,sysdate(),'admin');
INSERT INTO sd_unidad(nombre, activo, fecha_registro, usuario_registro) VALUES ('ladrillos',1,sysdate(),'admin');
INSERT INTO sd_unidad(nombre, activo, fecha_registro, usuario_registro) VALUES ('pallets',1,sysdate(),'admin');

-- sd_producto_venta
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (1,1,1,10000,1,sysdate(),'admin');
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (1,2,2,15000,1,sysdate(),'admin');
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (2,3,3,12000,1,sysdate(),'admin');
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (2,5,3,18000,1,sysdate(),'admin');
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (3,4,4,8000,1,sysdate(),'admin');
INSERT INTO sd_producto_venta (id_producto, id_marca, id_unidad, stock_actual, activo, fecha_registro, usuario_registro) VALUES (3,6,4,13500,1,sysdate(),'admin');

-- sd_tipo_vehiculo
INSERT INTO sd_tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES (1,'tracto');
INSERT INTO sd_tipo_vehiculo (id_tipo_vehiculo, nombre) VALUES (2,'carreta');

-- sd_vehiculo
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (1,'A1A-489',6,2.4,3.7,8000,'2024-10-08',1,'2025-06-15',1,sysdate(),'admin');
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (2,'O3B-678',12,2.4,2,5500,'2025-08-14',1,'2025-03-06',1,sysdate(),'admin');
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (1,'A1A-348',6.2,2.5,3.8,7500,'2025-02-27',1,'2024-08-14',1,sysdate(),'admin');
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (2,'O3B-148',13.5,2.5,2.2,6700,'2024-01-28',1,'2024-01-28',1,sysdate(),'admin');
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (1,'A1A-782',6.5,2.6,4.0,7200,'2024-08-14',0,'2025-02-27',1,sysdate(),'admin');
INSERT INTO sd_vehiculo(id_tipo_vehiculo, placa, largo, ancho, altura, peso, fecha_venc_circulacion, tiene_tarjeta_propiedad, fecha_venc_soat, activo, fecha_registro, usuario_registro) values (2,'O3B-258',12.5,2.6,2.4,8300,'2025-03-06',1,'2025-08-14',1,sysdate(),'admin');


-- sd_cliente
INSERT INTO sd_cliente (razon_social, ruc,activo, fecha_registro, usuario_registro) VALUES ('Ferreteria San Marcos','58945785216',1,sysdate(),'admin');
INSERT INTO sd_cliente (razon_social, ruc,activo, fecha_registro, usuario_registro) VALUES ('Constructora San Martin','14895623487',1,sysdate(),'admin');
INSERT INTO sd_cliente (razon_social, ruc,activo, fecha_registro, usuario_registro) VALUES ('Bechtel Perú','13462484613',1,sysdate(),'admin');
INSERT INTO sd_cliente (razon_social, ruc,activo, fecha_registro, usuario_registro) VALUES ('Vinci SAC','48650480850',1,sysdate(),'admin');

-- sd_sede_cliente
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (1,'Jr. Yavari 348','Villa el Salvador',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (2,'Av. Izaguirre 4896','Independencia',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (2,'Jr. Juliaca 789','Comas',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (3,'Av. Los Alamos 3457','San Juan de Miraflores',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (3,'Av. Jupiter 1278','Ate',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (3,'Jr. Trueno 928','Ate',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (4,'Av. Mariategui 2456','Villa Maria del Triunfo',1,sysdate(),'admin');
INSERT INTO sd_sede_cliente(id_cliente, direccion, distrito, activo, fecha_registro, usuario_registro) VALUES (4,'Jr. Huiracocha 195','Independencia',1,sysdate(),'admin');

-- sd_estado_orden
INSERT INTO sd_estado_orden (nombre) VALUES ('registrada');
INSERT INTO sd_estado_orden (nombre) VALUES ('despachada');

-- sd_orden_recojo

INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (1,3,1,1,1,6,800,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (1,4,2,1,1,4,600,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (2,2,3,1,3,2,1500,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (3,5,4,1,5,2,1800,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (4,7,1,1,3,6,750,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (1,1,5,1,1,4,1200,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (2,8,6,1,5,6,1350,1,sysdate(),'admin');
INSERT INTO sd_orden_recojo(id_conductor, id_sede_cliente, id_producto_venta, id_estado_orden, id_tracto, id_carreta, cantidad, activo, fecha_registro, usuario_registro) values (4,6,3,1,3,4,1750,1,sysdate(),'admin');

-- sd_planta

INSERT INTO sd_planta (nombre, direccion,distrito,capacidad_maxima, ubicacion_x1,ubicacion_x2, ubicacion_y1,ubicacion_y2, limite_inf_pesaje_antes,limite_sup_pesaje_antes, limite_inf_pesaje_despues, limite_sup_pesaje_despues,activo, fecha_registro, usuario_registro) VALUES ('Planta Lima Sur','Av. Las Malvinas 4589','San Juan de Miraflores',60, 10.10, 11.10, 24.5, 26.5, 300, 300, 0, 20, 1,sysdate(),'admin');

-- sd_estado_despacho

INSERT INTO sd_estado_despacho (nombre) VALUES ('En cola de revision');
INSERT INTO sd_estado_despacho (nombre) VALUES ('En revision');
INSERT INTO sd_estado_despacho (nombre) VALUES ('Revision con incidencia');
INSERT INTO sd_estado_despacho (nombre) VALUES ('En peso vacio');
INSERT INTO sd_estado_despacho (nombre) VALUES ('Peso vacio con incidencia');
INSERT INTO sd_estado_despacho (nombre) VALUES ('En cola de carga');
INSERT INTO sd_estado_despacho (nombre) VALUES ('Cargando productos');
INSERT INTO sd_estado_despacho (nombre) VALUES ('En peso lleno');
INSERT INTO sd_estado_despacho (nombre) VALUES ('Revision de carga');
INSERT INTO sd_estado_despacho (nombre) VALUES ('En salida');
INSERT INTO sd_estado_despacho (nombre) VALUES ('Terminado');
