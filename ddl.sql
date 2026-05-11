-- ==================================================
-- Proyecto: Sistema Logístico y de Envíos - Colombia
-- Motor: Oracle SQL
-- Archivo: ddl.sql
-- ==================================================

-- Eliminación opcional de tablas (orden inverso de dependencias)
-- Se ignora ORA-00942 cuando la tabla no existe.
BEGIN EXECUTE IMMEDIATE 'DROP TABLE ENVIO CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE VIAJE CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE PAQUETE CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE VEHICULO CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE EMPLEADO CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE RUTA CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE SUCURSAL CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE CLIENTE CASCADE CONSTRAINTS'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF; END;
/

-- =====================================
-- Tabla CLIENTE
-- Almacena remitentes y destinatarios.
-- =====================================
CREATE TABLE CLIENTE (
    Id_Cliente NUMBER(20),
    Nombre     VARCHAR2(100) NOT NULL,
    Tipo       VARCHAR2(15)  NOT NULL,
    Direccion  VARCHAR2(80)  NOT NULL,
    Telefono   VARCHAR2(15)  NOT NULL,
    Email      VARCHAR2(100) NOT NULL,
    CONSTRAINT PK_CLIENTE PRIMARY KEY (Id_Cliente)
);

-- =====================================
-- Tabla SUCURSAL
-- Sedes de operación en ciudades de Colombia.
-- =====================================
CREATE TABLE SUCURSAL (
    Id_Sucursal NUMBER(10),
    Ciudad      VARCHAR2(50) NOT NULL,
    Horario     VARCHAR2(40) NOT NULL,
    Direccion   VARCHAR2(80) NOT NULL,
    Telefono    VARCHAR2(15) NOT NULL,
    CONSTRAINT PK_SUCURSAL PRIMARY KEY (Id_Sucursal)
);

-- =====================================
-- Tabla EMPLEADO
-- Personal de cada sucursal.
-- =====================================
CREATE TABLE EMPLEADO (
    Cedula         NUMBER(15),
    Id_Sucursal_FK NUMBER(10)  NOT NULL,
    Nombre         VARCHAR2(100) NOT NULL,
    Cargo          VARCHAR2(30)  NOT NULL,
    Salario        NUMBER(10,2)  NOT NULL,
    Telefono       VARCHAR2(15)  NOT NULL,
    Email          VARCHAR2(100) NOT NULL,
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (Cedula),
    CONSTRAINT FK_EMPLEADO_SUCURSAL FOREIGN KEY (Id_Sucursal_FK)
        REFERENCES SUCURSAL(Id_Sucursal)
);

-- =====================================
-- Tabla VEHICULO
-- Flota asociada a cada sucursal.
-- =====================================
CREATE TABLE VEHICULO (
    Placa          VARCHAR2(10),
    Id_Sucursal_FK NUMBER(10) NOT NULL,
    Tipo           VARCHAR2(20) NOT NULL,
    Capacidad      NUMBER(10)   NOT NULL,
    CONSTRAINT PK_VEHICULO PRIMARY KEY (Placa),
    CONSTRAINT FK_VEHICULO_SUCURSAL FOREIGN KEY (Id_Sucursal_FK)
        REFERENCES SUCURSAL(Id_Sucursal)
);

-- =====================================
-- Tabla RUTA
-- Rutas logísticas intermunicipales.
-- =====================================
CREATE TABLE RUTA (
    Id_Ruta         NUMBER(10),
    Origen          VARCHAR2(50) NOT NULL,
    Destino         VARCHAR2(50) NOT NULL,
    Distancia       NUMBER(10,2) NOT NULL,
    Tiempo_Estimado NUMBER(5,2)  NOT NULL,
    Estado          VARCHAR2(20) NOT NULL,
    CONSTRAINT PK_RUTA PRIMARY KEY (Id_Ruta)
);

-- =====================================
-- Tabla VIAJE
-- Operaciones de traslado realizadas.
-- =====================================
CREATE TABLE VIAJE (
    Id_Viaje      NUMBER(10),
    Placa_FK      VARCHAR2(10) NOT NULL,
    Cedula_FK     NUMBER(15)   NOT NULL,
    Id_Ruta_FK    NUMBER(10)   NOT NULL,
    Fecha_Salida  DATE         NOT NULL,
    Fecha_Llegada DATE,
    CONSTRAINT PK_VIAJE PRIMARY KEY (Id_Viaje),
    CONSTRAINT FK_VIAJE_VEHICULO FOREIGN KEY (Placa_FK)
        REFERENCES VEHICULO(Placa),
    CONSTRAINT FK_VIAJE_EMPLEADO FOREIGN KEY (Cedula_FK)
        REFERENCES EMPLEADO(Cedula),
    CONSTRAINT FK_VIAJE_RUTA FOREIGN KEY (Id_Ruta_FK)
        REFERENCES RUTA(Id_Ruta)
);

-- =====================================
-- Tabla PAQUETE
-- Catálogo de paquetes registrados.
-- =====================================
CREATE TABLE PAQUETE (
    Codigo_P      VARCHAR2(15),
    Id_Cliente_FK NUMBER(20)   NOT NULL,
    Tipo_Paq      VARCHAR2(20) NOT NULL,
    Peso          NUMBER(10,2) NOT NULL,
    Valor         NUMBER(15,2) NOT NULL,
    Alto          NUMBER(10)   NOT NULL,
    Ancho         NUMBER(10)   NOT NULL,
    CONSTRAINT PK_PAQUETE PRIMARY KEY (Codigo_P),
    CONSTRAINT FK_PAQUETE_CLIENTE FOREIGN KEY (Id_Cliente_FK)
        REFERENCES CLIENTE(Id_Cliente)
);

-- =====================================
-- Tabla ENVIO
-- Registro de guías, trazabilidad y entrega.
-- =====================================
CREATE TABLE ENVIO (
    Numero_Guia                VARCHAR2(20),
    Codigo_P_FK                VARCHAR2(15) NOT NULL,
    Id_Cliente_Remitente_FK    NUMBER(20)   NOT NULL,
    Id_Cliente_Destinatario_FK NUMBER(20)   NOT NULL,
    Id_Sucursal_Origen_FK      NUMBER(10)   NOT NULL,
    Id_Sucursal_Destino_FK     NUMBER(10)   NOT NULL,
    Estado                     VARCHAR2(20) NOT NULL,
    Costo                      NUMBER(15,2) NOT NULL,
    Fecha_Estimada_Entrega     DATE         NOT NULL,
    Fecha_Real_Entrega         DATE,
    CONSTRAINT PK_ENVIO PRIMARY KEY (Numero_Guia),
    CONSTRAINT FK_ENVIO_PAQUETE FOREIGN KEY (Codigo_P_FK)
        REFERENCES PAQUETE(Codigo_P),
    CONSTRAINT FK_ENVIO_CLIENTE_REMITENTE FOREIGN KEY (Id_Cliente_Remitente_FK)
        REFERENCES CLIENTE(Id_Cliente),
    CONSTRAINT FK_ENVIO_CLIENTE_DESTINATARIO FOREIGN KEY (Id_Cliente_Destinatario_FK)
        REFERENCES CLIENTE(Id_Cliente),
    CONSTRAINT FK_ENVIO_SUCURSAL_ORIGEN FOREIGN KEY (Id_Sucursal_Origen_FK)
        REFERENCES SUCURSAL(Id_Sucursal),
    CONSTRAINT FK_ENVIO_SUCURSAL_DESTINO FOREIGN KEY (Id_Sucursal_Destino_FK)
        REFERENCES SUCURSAL(Id_Sucursal)
);
