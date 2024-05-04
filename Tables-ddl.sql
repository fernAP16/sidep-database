DROP TABLE IF EXISTS sd_cola_pesaje;
DROP TABLE IF EXISTS sd_tipo_pesaje;
DROP TABLE IF EXISTS sd_zona_balanza;
DROP TABLE IF EXISTS sd_cola_canal;
DROP TABLE IF EXISTS sd_canal_carga;
DROP TABLE IF EXISTS sd_despacho;
DROP TABLE IF EXISTS sd_estado_despacho;
DROP TABLE IF EXISTS sd_turno_incidencia;
DROP TABLE IF EXISTS sd_incidencia;
DROP TABLE IF EXISTS sd_turno_revision;
DROP TABLE IF EXISTS sd_punto_control;
DROP TABLE IF EXISTS sd_planta;
DROP TABLE IF EXISTS sd_revisor;
DROP TABLE IF EXISTS sd_orden_recojo;
DROP TABLE IF EXISTS sd_estado_orden;
DROP TABLE IF EXISTS sd_vehiculo;
DROP TABLE IF EXISTS sd_tipo_vehiculo;
DROP TABLE IF EXISTS sd_producto_venta;
DROP TABLE IF EXISTS sd_producto;
DROP TABLE IF EXISTS sd_marca;
DROP TABLE IF EXISTS sd_unidad;
DROP TABLE IF EXISTS sd_sede_cliente;
DROP TABLE IF EXISTS sd_cliente;
DROP TABLE IF EXISTS sd_conductor;
DROP TABLE IF EXISTS sd_usuario;

CREATE TABLE sd_usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(100) NOT NULL,
    primer_apellido VARCHAR(100) NOT NULL,
    segundo_apellido VARCHAR(100) NOT NULL,
    dni VARCHAR(8) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    peso DOUBLE NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_usuario)
);

CREATE TABLE sd_conductor (
    id_conductor INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    fecha_venc_licencia VARCHAR(100) NOT NULL,
    clave_digital VARCHAR(4) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_conductor),
    CONSTRAINT con_usu_fk
        FOREIGN KEY (id_usuario)
        REFERENCES sd_usuario (id_usuario)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_revisor (
    id_revisor INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_revisor),
    CONSTRAINT usu_rev_fk
        FOREIGN KEY (id_usuario)
        REFERENCES sd_usuario (id_usuario)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    razon_social VARCHAR(100) NOT NULL,
    ruc VARCHAR(11) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_cliente)
);

CREATE TABLE sd_sede_cliente (
    id_sede_cliente INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    distrito VARCHAR(100) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_sede_cliente),
    CONSTRAINT scl_cli_fk
        FOREIGN KEY (id_cliente)
        REFERENCES sd_cliente (id_cliente)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_producto (
    id_producto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_producto)
);

CREATE TABLE sd_marca (
    id_marca INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_marca)
);

CREATE TABLE sd_unidad (
    id_unidad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (50) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_unidad)
);

CREATE TABLE sd_producto_venta (
    id_producto_venta INT NOT NULL AUTO_INCREMENT,
    id_producto INT NOT NULL,
    id_marca INT NOT NULL,
    id_unidad INT NOT NULL,
    stock_actual INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_producto_venta),
    CONSTRAINT pvt_pro_fk
        FOREIGN KEY (id_producto)
        REFERENCES sd_producto (id_producto)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT pvt_mar_fk
        FOREIGN KEY (id_marca)
        REFERENCES sd_marca (id_marca)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT pvt_uni_fk
        FOREIGN KEY (id_unidad)
        REFERENCES sd_unidad (id_unidad)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_tipo_vehiculo (
    id_tipo_vehiculo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_tipo_vehiculo)
);

CREATE TABLE sd_vehiculo (
    id_vehiculo INT NOT NULL AUTO_INCREMENT,
    id_tipo_vehiculo INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    largo DOUBLE NOT NULL,
    ancho DOUBLE NOT NULL,
    altura DOUBLE NOT NULL,
    peso DOUBLE NOT NULL,
    fecha_venc_circulacion DATETIME NOT NULL,
    tiene_tarjeta_propiedad INT NOT NULL,
    fecha_venc_soat DATETIME NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_vehiculo),
    CONSTRAINT veh_tvh_fk
        FOREIGN KEY (id_tipo_vehiculo)
        REFERENCES sd_tipo_vehiculo (id_tipo_vehiculo)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_estado_orden (
    id_estado_orden INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_estado_orden)
);

CREATE TABLE sd_orden_recojo (
    id_orden_recojo INT NOT NULL AUTO_INCREMENT,
    id_conductor INT NOT NULL,
    id_sede_cliente INT NOT NULL,
    id_producto_venta INT NOT NULL,
    id_estado_orden INT NOT NULL,
    id_tracto INT NOT NULL,
    id_carreta INT NOT NULL,
    cantidad INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_orden_recojo),
    CONSTRAINT orc_con_fk
        FOREIGN KEY (id_conductor)
        REFERENCES sd_conductor (id_conductor)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT orc_pvt_fk
        FOREIGN KEY (id_producto_venta)
        REFERENCES sd_producto_venta (id_producto_venta)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT orc_eor_fk
        FOREIGN KEY (id_estado_orden)
        REFERENCES sd_estado_orden (id_estado_orden)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT orc_tra_fk
        FOREIGN KEY (id_tracto)
        REFERENCES sd_vehiculo (id_vehiculo)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT orc_car_fk
        FOREIGN KEY (id_carreta)
        REFERENCES sd_vehiculo (id_vehiculo)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_planta (
    id_planta INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    distrito VARCHAR(100) NOT NULL,
    capacidad_maxima INT NOT NULL,
    ubicacion_x1 DOUBLE NOT NULL,
    ubicacion_x2 DOUBLE NOT NULL,
    ubicacion_y1 DOUBLE NOT NULL,
    ubicacion_y2 DOUBLE NOT NULL,
    limite_inf_pesaje_antes INT NOT NULL,
    limite_sup_pesaje_antes INT NOT NULL,
    limite_inf_pesaje_despues INT NOT NULL,
    limite_sup_pesaje_despues INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_planta)
);

CREATE TABLE sd_punto_control (
    id_punto_control INT NOT NULL AUTO_INCREMENT,
    id_planta INT NOT NULL,
    codigo VARCHAR (10) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_punto_control),
    CONSTRAINT ptc_pla_fk
        FOREIGN KEY (id_planta)
        REFERENCES sd_planta (id_planta)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_turno_revision (
    id_turno_revision INT NOT NULL AUTO_INCREMENT,
    id_revisor INT NOT NULL,
    id_punto_control INT NOT NULL,
    turno_dia INT NOT NULL,
    hora_inicio DATETIME NULL,
    hora_fin DATETIME NULL,
    es_aprobado INT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_turno_revision),
    CONSTRAINT trv_rev_fk
        FOREIGN KEY (id_revisor)
        REFERENCES sd_revisor (id_revisor)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT trv_pct_fk
        FOREIGN KEY (id_punto_control)
        REFERENCES sd_punto_control (id_punto_control)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_incidencia (
    id_incidencia INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_incidencia)
);

CREATE TABLE sd_turno_incidencia (
    id_turno_incidencia INT NOT NULL AUTO_INCREMENT,
    id_turno_revision INT NOT NULL,
    id_incidencia INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_turno_incidencia),
    CONSTRAINT tin_tre_fk
        FOREIGN KEY (id_turno_revision)
        REFERENCES sd_turno_revision (id_turno_revision)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT tin_pct_fk
        FOREIGN KEY (id_incidencia)
        REFERENCES sd_incidencia (id_incidencia)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_estado_despacho (
    id_estado_despacho INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_estado_despacho)
);

CREATE TABLE sd_despacho (
    id_despacho INT NOT NULL AUTO_INCREMENT,
    id_planta INT NOT NULL,
    id_orden_recojo INT NOT NULL,
    id_estado_despacho INT NOT NULL,
    id_turno_revision INT NULL,
    hora_inicio_despacho INT NOT NULL,
    hora_fin_despacho INT NULL,
    valor_pesaje_antes DOUBLE NULL,
    valor_pesaje_despues DOUBLE NULL,
    hora_inicio_carga DOUBLE NULL,
    hora_fin_carga DOUBLE NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_despacho),
    CONSTRAINT des_pla_fk
        FOREIGN KEY (id_planta)
        REFERENCES sd_planta (id_planta)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT des_orc_fk
        FOREIGN KEY (id_orden_recojo)
        REFERENCES sd_orden_recojo (id_orden_recojo)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT des_esd_fk
        FOREIGN KEY (id_estado_despacho)
        REFERENCES sd_estado_despacho (id_estado_despacho)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT des_trv_fk
        FOREIGN KEY (id_turno_revision)
        REFERENCES sd_turno_revision (id_turno_revision)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_zona_balanza (
    id_zona_balanza INT NOT NULL AUTO_INCREMENT,
    id_planta INT NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    qr_fisico VARCHAR(50) NOT NULL,
    contrasena VARCHAR(50) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_zona_balanza),
    CONSTRAINT zbl_pla_fk
        FOREIGN KEY (id_planta)
        REFERENCES sd_planta (id_planta)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_tipo_pesaje (
    id_tipo_pesaje INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id_tipo_pesaje)
);

CREATE TABLE sd_cola_pesaje (
    id_cola_pesaje INT NOT NULL AUTO_INCREMENT,
    id_despacho INT NOT NULL,
    id_zona_balanza INT NOT NULL,
    id_tipo_pesaje INT NOT NULL,
    posicion INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_cola_pesaje),
    CONSTRAINT cps_des_fk
        FOREIGN KEY (id_despacho)
        REFERENCES sd_despacho (id_despacho)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT cps_zbl_fk
        FOREIGN KEY (id_zona_balanza)
        REFERENCES sd_zona_balanza (id_zona_balanza)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT cps_tps_fk
        FOREIGN KEY (id_tipo_pesaje)
        REFERENCES sd_tipo_pesaje (id_tipo_pesaje)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_canal_carga (
    id_canal_carga INT NOT NULL AUTO_INCREMENT,
    id_planta INT NOT NULL,
    codigo VARCHAR(10) NOT NULL,
    qr_fisico VARCHAR(50) NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_canal_carga),
    CONSTRAINT ccg_pla_fk
        FOREIGN KEY (id_planta)
        REFERENCES sd_planta (id_planta)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE sd_cola_canal (
    id_cola_canal INT NOT NULL AUTO_INCREMENT,
    id_despacho INT NOT NULL,
    id_canal_carga INT NOT NULL,
    posicion INT NOT NULL,
    activo INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    usuario_registro VARCHAR(100) NOT NULL,
    fecha_actualizacion DATETIME NULL,
    usuario_actualizacion VARCHAR(100) NULL,
    PRIMARY KEY(id_cola_canal),
    CONSTRAINT ccn_des_fk
        FOREIGN KEY (id_despacho)
        REFERENCES sd_despacho (id_despacho)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT ccn_ccr_fk
        FOREIGN KEY (id_canal_carga)
        REFERENCES sd_canal_carga (id_canal_carga)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);