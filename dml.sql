-- ==================================================
-- Proyecto: Sistema Logístico y de Envíos - Colombia
-- Motor: Oracle SQL
-- Archivo: dml.sql
-- ==================================================

-- =====================================
-- 1) CLIENTES (15 registros)
-- =====================================
INSERT INTO CLIENTE VALUES (1001, 'Juan Esteban García', 'Persona', 'Cra 45 #12-34, Medellín', '3004567890', 'juan.garcia@gmail.com');
INSERT INTO CLIENTE VALUES (1002, 'María Fernanda Rojas', 'Persona', 'Calle 72 #15-20, Bogotá', '3105678901', 'maria.rojas@gmail.com');
INSERT INTO CLIENTE VALUES (1003, 'Distribuciones Andina SAS', 'Empresa', 'Av Boyacá #64-21, Bogotá', '6014567810', 'contacto@andinasas.com');
INSERT INTO CLIENTE VALUES (1004, 'Carlos Andrés Mejía', 'Persona', 'Cra 19 #8-55, Pereira', '3112345678', 'carlos.mejia@hotmail.com');
INSERT INTO CLIENTE VALUES (1005, 'LogiFarma Colombia SA', 'Empresa', 'Calle 26 #38-10, Cali', '6024457788', 'operaciones@logifarma.com.co');
INSERT INTO CLIENTE VALUES (1006, 'Sofía Alejandra Pardo', 'Persona', 'Cra 33 #42-16, Bucaramanga', '3207788990', 'sofia.pardo@gmail.com');
INSERT INTO CLIENTE VALUES (1007, 'Comercializadora Caribe Ltda', 'Empresa', 'Calle 30 #43-90, Barranquilla', '6053344556', 'ventas@caribeltda.com');
INSERT INTO CLIENTE VALUES (1008, 'Miguel Ángel Torres', 'Persona', 'Calle 5 #18-44, Villavicencio', '3156677889', 'miguel.torres@yahoo.com');
INSERT INTO CLIENTE VALUES (1009, 'Industrias del Pacífico SAS', 'Empresa', 'Cra 10 #24-50, Cali', '6023366990', 'compras@pacificosas.com');
INSERT INTO CLIENTE VALUES (1010, 'Diana Carolina Peña', 'Persona', 'Cra 80 #48-12, Medellín', '3019988776', 'dianapena@gmail.com');
INSERT INTO CLIENTE VALUES (1011, 'Servicios Petroleros Oriente SAS', 'Empresa', 'Av 40 #23-19, Villavicencio', '6086655443', 'logistica@spooriente.com');
INSERT INTO CLIENTE VALUES (1012, 'Andrés Felipe Ospina', 'Persona', 'Calle 44 #52-80, Barranquilla', '3184455667', 'andres.ospina@gmail.com');
INSERT INTO CLIENTE VALUES (1013, 'Textiles Bogotá Centro SAS', 'Empresa', 'Calle 13 #22-14, Bogotá', '6014455660', 'contacto@textilesbc.com');
INSERT INTO CLIENTE VALUES (1014, 'Paola Jimena Castillo', 'Persona', 'Cra 6 #34-70, Cartagena', '3121122334', 'paolacastillo@gmail.com');
INSERT INTO CLIENTE VALUES (1015, 'Alimentos del Eje SAS', 'Empresa', 'Av Circunvalar #10-45, Pereira', '6063322110', 'pedidos@alimenteje.com');

-- =====================================
-- 2) SUCURSALES (8 registros)
-- =====================================
INSERT INTO SUCURSAL VALUES (1, 'Bogotá', 'Lun-Sáb 7:00-19:00', 'Calle 26 #92-32', '6017001001');
INSERT INTO SUCURSAL VALUES (2, 'Medellín', 'Lun-Sáb 7:00-18:00', 'Cra 48 #17-90', '6047001002');
INSERT INTO SUCURSAL VALUES (3, 'Cali', 'Lun-Sáb 7:30-18:30', 'Calle 15 #35-60', '6027001003');
INSERT INTO SUCURSAL VALUES (4, 'Barranquilla', 'Lun-Sáb 8:00-18:00', 'Cra 43 #72-150', '6057001004');
INSERT INTO SUCURSAL VALUES (5, 'Bucaramanga', 'Lun-Sáb 7:00-18:00', 'Calle 45 #27-33', '6077001005');
INSERT INTO SUCURSAL VALUES (6, 'Cartagena', 'Lun-Sáb 8:00-17:30', 'Av Pedro de Heredia #31-20', '6057001006');
INSERT INTO SUCURSAL VALUES (7, 'Pereira', 'Lun-Sáb 7:00-18:00', 'Cra 8 #20-55', '6067001007');
INSERT INTO SUCURSAL VALUES (8, 'Villavicencio', 'Lun-Sáb 7:00-18:30', 'Calle 38 #29-18', '6087001008');

-- =====================================
-- 3) EMPLEADOS (10 registros)
-- =====================================
INSERT INTO EMPLEADO VALUES (1012345678, 1, 'Laura Vanessa Cárdenas', 'Coordinador', 4200000.00, '3001112233', 'laura.cardenas@logicol.co');
INSERT INTO EMPLEADO VALUES (1023456789, 2, 'Julián David Restrepo', 'Conductor', 2800000.00, '3012223344', 'julian.restrepo@logicol.co');
INSERT INTO EMPLEADO VALUES (1034567890, 3, 'Natalia Gómez Ruíz', 'Auxiliar Bodega', 2300000.00, '3023334455', 'natalia.gomez@logicol.co');
INSERT INTO EMPLEADO VALUES (1045678901, 4, 'Óscar Iván Pacheco', 'Conductor', 2950000.00, '3034445566', 'oscar.pacheco@logicol.co');
INSERT INTO EMPLEADO VALUES (1056789012, 5, 'Camilo Andrés Quintero', 'Supervisor', 3600000.00, '3045556677', 'camilo.quintero@logicol.co');
INSERT INTO EMPLEADO VALUES (1067890123, 6, 'Kelly Marcela Herrera', 'Coordinador', 3900000.00, '3056667788', 'kelly.herrera@logicol.co');
INSERT INTO EMPLEADO VALUES (1078901234, 7, 'Diego Armando Salazar', 'Conductor', 2700000.00, '3067778899', 'diego.salazar@logicol.co');
INSERT INTO EMPLEADO VALUES (1089012345, 8, 'Manuela Fernanda Rincón', 'Analista', 3100000.00, '3078889900', 'manuela.rincon@logicol.co');
INSERT INTO EMPLEADO VALUES (1090123456, 1, 'Felipe Andrés Ramírez', 'Conductor', 2900000.00, '3089990011', 'felipe.ramirez@logicol.co');
INSERT INTO EMPLEADO VALUES (1101234567, 3, 'Sandra Milena Caicedo', 'Jefe Operaciones', 5200000.00, '3091100223', 'sandra.caicedo@logicol.co');

-- =====================================
-- 4) VEHÍCULOS (8 registros)
-- =====================================
INSERT INTO VEHICULO VALUES ('KLM123', 1, 'Camión', 12000);
INSERT INTO VEHICULO VALUES ('MNP456', 2, 'Furgón', 6000);
INSERT INTO VEHICULO VALUES ('QRS789', 3, 'Camión', 10000);
INSERT INTO VEHICULO VALUES ('TUV321', 4, 'Moto', 150);
INSERT INTO VEHICULO VALUES ('WXY654', 5, 'Camioneta', 3000);
INSERT INTO VEHICULO VALUES ('ABC987', 6, 'Camión', 9000);
INSERT INTO VEHICULO VALUES ('DEF741', 7, 'Furgón', 5500);
INSERT INTO VEHICULO VALUES ('GHI852', 8, 'Camioneta', 2800);

-- =====================================
-- 5) RUTAS (10 registros)
-- =====================================
INSERT INTO RUTA VALUES (1, 'Bogotá', 'Medellín', 415.00, 8.50, 'Activa');
INSERT INTO RUTA VALUES (2, 'Bogotá', 'Cali', 465.00, 9.20, 'Activa');
INSERT INTO RUTA VALUES (3, 'Bogotá', 'Barranquilla', 1002.00, 18.50, 'Activa');
INSERT INTO RUTA VALUES (4, 'Medellín', 'Cartagena', 639.00, 12.40, 'Activa');
INSERT INTO RUTA VALUES (5, 'Cali', 'Pereira', 213.00, 4.20, 'Activa');
INSERT INTO RUTA VALUES (6, 'Bucaramanga', 'Bogotá', 397.00, 7.30, 'Inactiva');
INSERT INTO RUTA VALUES (7, 'Villavicencio', 'Bogotá', 122.00, 3.00, 'Activa');
INSERT INTO RUTA VALUES (8, 'Barranquilla', 'Cartagena', 123.00, 2.80, 'Activa');
INSERT INTO RUTA VALUES (9, 'Pereira', 'Medellín', 245.00, 5.10, 'Inactiva');
INSERT INTO RUTA VALUES (10, 'Cali', 'Bucaramanga', 760.00, 14.00, 'Activa');

-- =====================================
-- 6) VIAJES (10 registros)
-- =====================================
INSERT INTO VIAJE VALUES (1, 'KLM123', 1012345678, 1, TO_DATE('2026-05-01', 'YYYY-MM-DD'), TO_DATE('2026-05-01', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (2, 'MNP456', 1023456789, 4, TO_DATE('2026-05-02', 'YYYY-MM-DD'), TO_DATE('2026-05-03', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (3, 'QRS789', 1101234567, 2, TO_DATE('2026-05-02', 'YYYY-MM-DD'), TO_DATE('2026-05-02', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (4, 'TUV321', 1045678901, 8, TO_DATE('2026-05-03', 'YYYY-MM-DD'), TO_DATE('2026-05-03', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (5, 'WXY654', 1056789012, 6, TO_DATE('2026-05-04', 'YYYY-MM-DD'), TO_DATE('2026-05-04', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (6, 'ABC987', 1067890123, 4, TO_DATE('2026-05-05', 'YYYY-MM-DD'), TO_DATE('2026-05-05', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (7, 'DEF741', 1078901234, 5, TO_DATE('2026-05-06', 'YYYY-MM-DD'), TO_DATE('2026-05-06', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (8, 'GHI852', 1089012345, 7, TO_DATE('2026-05-07', 'YYYY-MM-DD'), TO_DATE('2026-05-07', 'YYYY-MM-DD'));
INSERT INTO VIAJE VALUES (9, 'KLM123', 1090123456, 3, TO_DATE('2026-05-08', 'YYYY-MM-DD'), NULL);
INSERT INTO VIAJE VALUES (10, 'QRS789', 1034567890, 10, TO_DATE('2026-05-09', 'YYYY-MM-DD'), NULL);

-- =====================================
-- 7) PAQUETES (20 registros)
-- =====================================
INSERT INTO PAQUETE VALUES ('PKG0001', 1001, 'Caja', 8.50, 150000.00, 40, 35);
INSERT INTO PAQUETE VALUES ('PKG0002', 1003, 'Documento', 0.80, 50000.00, 2, 25);
INSERT INTO PAQUETE VALUES ('PKG0003', 1005, 'Electrónico', 12.40, 1800000.00, 30, 25);
INSERT INTO PAQUETE VALUES ('PKG0004', 1002, 'Caja', 4.20, 210000.00, 25, 20);
INSERT INTO PAQUETE VALUES ('PKG0005', 1007, 'Repuesto', 15.60, 950000.00, 50, 40);
INSERT INTO PAQUETE VALUES ('PKG0006', 1008, 'Sobre', 0.30, 20000.00, 1, 22);
INSERT INTO PAQUETE VALUES ('PKG0007', 1010, 'Caja', 9.70, 300000.00, 35, 28);
INSERT INTO PAQUETE VALUES ('PKG0008', 1009, 'Electrónico', 11.20, 1250000.00, 28, 24);
INSERT INTO PAQUETE VALUES ('PKG0009', 1011, 'Insumo', 13.90, 720000.00, 45, 38);
INSERT INTO PAQUETE VALUES ('PKG0010', 1004, 'Documento', 0.50, 15000.00, 1, 30);
INSERT INTO PAQUETE VALUES ('PKG0011', 1013, 'Textil', 6.80, 430000.00, 32, 26);
INSERT INTO PAQUETE VALUES ('PKG0012', 1014, 'Caja', 7.10, 280000.00, 29, 24);
INSERT INTO PAQUETE VALUES ('PKG0013', 1015, 'Alimento', 10.40, 390000.00, 34, 29);
INSERT INTO PAQUETE VALUES ('PKG0014', 1006, 'Sobre', 0.60, 18000.00, 1, 25);
INSERT INTO PAQUETE VALUES ('PKG0015', 1012, 'Caja', 5.50, 245000.00, 26, 23);
INSERT INTO PAQUETE VALUES ('PKG0016', 1001, 'Electrónico', 14.30, 2200000.00, 33, 30);
INSERT INTO PAQUETE VALUES ('PKG0017', 1003, 'Repuesto', 16.10, 870000.00, 52, 42);
INSERT INTO PAQUETE VALUES ('PKG0018', 1005, 'Documento', 0.40, 12000.00, 1, 21);
INSERT INTO PAQUETE VALUES ('PKG0019', 1007, 'Caja', 9.10, 310000.00, 30, 27);
INSERT INTO PAQUETE VALUES ('PKG0020', 1002, 'Insumo', 12.80, 540000.00, 36, 31);

-- =====================================
-- 8) ENVÍOS (20 registros)
-- =====================================
INSERT INTO ENVIO VALUES ('GUIA0001', 'PKG0001', 1001, 1002, 2, 1, 'Entregado', 38000.00, TO_DATE('2026-05-03', 'YYYY-MM-DD'), TO_DATE('2026-05-03', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0002', 'PKG0002', 1003, 1013, 1, 1, 'Entregado', 18000.00, TO_DATE('2026-05-02', 'YYYY-MM-DD'), TO_DATE('2026-05-02', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0003', 'PKG0003', 1005, 1014, 3, 6, 'En tránsito', 76000.00, TO_DATE('2026-05-06', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0004', 'PKG0004', 1002, 1004, 1, 7, 'Entregado', 32000.00, TO_DATE('2026-05-05', 'YYYY-MM-DD'), TO_DATE('2026-05-05', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0005', 'PKG0005', 1007, 1006, 4, 5, 'Retrasado', 95000.00, TO_DATE('2026-05-06', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0006', 'PKG0006', 1008, 1003, 8, 1, 'Entregado', 15000.00, TO_DATE('2026-05-04', 'YYYY-MM-DD'), TO_DATE('2026-05-04', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0007', 'PKG0007', 1010, 1009, 2, 3, 'En tránsito', 47000.00, TO_DATE('2026-05-08', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0008', 'PKG0008', 1009, 1011, 3, 8, 'Pendiente', 68000.00, TO_DATE('2026-05-10', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0009', 'PKG0009', 1011, 1007, 8, 4, 'En tránsito', 73000.00, TO_DATE('2026-05-09', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0010', 'PKG0010', 1004, 1015, 7, 7, 'Entregado', 12000.00, TO_DATE('2026-05-03', 'YYYY-MM-DD'), TO_DATE('2026-05-03', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0011', 'PKG0011', 1013, 1008, 1, 8, 'En tránsito', 45000.00, TO_DATE('2026-05-10', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0012', 'PKG0012', 1014, 1001, 6, 2, 'Entregado', 52000.00, TO_DATE('2026-05-07', 'YYYY-MM-DD'), TO_DATE('2026-05-07', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0013', 'PKG0013', 1015, 1005, 7, 3, 'Pendiente', 39000.00, TO_DATE('2026-05-11', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0014', 'PKG0014', 1006, 1012, 5, 4, 'Entregado', 17000.00, TO_DATE('2026-05-05', 'YYYY-MM-DD'), TO_DATE('2026-05-05', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0015', 'PKG0015', 1012, 1010, 4, 2, 'En tránsito', 33000.00, TO_DATE('2026-05-09', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0016', 'PKG0016', 1001, 1014, 2, 6, 'Retrasado', 110000.00, TO_DATE('2026-05-08', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0017', 'PKG0017', 1003, 1006, 1, 5, 'En tránsito', 99000.00, TO_DATE('2026-05-11', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0018', 'PKG0018', 1005, 1013, 3, 1, 'Entregado', 14000.00, TO_DATE('2026-05-06', 'YYYY-MM-DD'), TO_DATE('2026-05-06', 'YYYY-MM-DD'));
INSERT INTO ENVIO VALUES ('GUIA0019', 'PKG0019', 1007, 1011, 4, 8, 'Pendiente', 41000.00, TO_DATE('2026-05-12', 'YYYY-MM-DD'), NULL);
INSERT INTO ENVIO VALUES ('GUIA0020', 'PKG0020', 1002, 1004, 1, 7, 'En tránsito', 62000.00, TO_DATE('2026-05-12', 'YYYY-MM-DD'), NULL);

COMMIT;
