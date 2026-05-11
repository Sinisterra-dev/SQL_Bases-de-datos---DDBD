-- ==================================================
-- Proyecto: Sistema Logístico y de Envíos - Colombia
-- Motor: Oracle SQL
-- Archivo: consultas.sql
-- ==================================================

-- 1) Listar todos los clientes de tipo "Empresa"
SELECT c.Id_Cliente,
       c.Nombre,
       c.Tipo,
       c.Direccion,
       c.Telefono,
       c.Email
  FROM CLIENTE c
 WHERE c.Tipo = 'Empresa';

-- 2) Mostrar los vehículos disponibles de tipo "Camión"
SELECT v.Placa,
       v.Tipo,
       v.Capacidad,
       v.Id_Sucursal_FK
  FROM VEHICULO v
 WHERE v.Tipo = 'Camión';

-- 3) Listar empleados con salario mayor a 3000000
SELECT e.Cedula,
       e.Nombre,
       e.Cargo,
       e.Salario
  FROM EMPLEADO e
 WHERE e.Salario > 3000000
 ORDER BY e.Salario DESC;

-- 4) Obtener los envíos con estado "En Tránsito"
SELECT e.Numero_Guia,
       e.Codigo_P_FK,
       e.Estado,
       e.Costo,
       e.Fecha_Estimada_Entrega
  FROM ENVIO e
 WHERE UPPER(e.Estado) = UPPER('En Tránsito');

-- 5) Listar paquetes con peso mayor a 10 kg
SELECT p.Codigo_P,
       p.Tipo_Paq,
       p.Peso,
       p.Valor
  FROM PAQUETE p
 WHERE p.Peso > 10
 ORDER BY p.Peso DESC;

-- 6) Mostrar las rutas activas con distancia mayor a 400 km
SELECT r.Id_Ruta,
       r.Origen,
       r.Destino,
       r.Distancia,
       r.Tiempo_Estimado,
       r.Estado
  FROM RUTA r
 WHERE r.Estado = 'Activa'
   AND r.Distancia > 400
 ORDER BY r.Distancia DESC;

-- 7) Contar vehículos por tipo
SELECT v.Tipo,
       COUNT(*) AS Total_Vehiculos
  FROM VEHICULO v
 GROUP BY v.Tipo
 ORDER BY Total_Vehiculos DESC;

-- 8) Mostrar empleados con el nombre de su sucursal
SELECT e.Cedula,
       e.Nombre AS Nombre_Empleado,
       e.Cargo,
       s.Ciudad AS Sucursal
  FROM EMPLEADO e
 INNER JOIN SUCURSAL s
    ON s.Id_Sucursal = e.Id_Sucursal_FK
 ORDER BY s.Ciudad, e.Nombre;

-- 9) Listar vehículos con su sucursal asignada
SELECT v.Placa,
       v.Tipo,
       v.Capacidad,
       s.Ciudad AS Sucursal,
       s.Direccion AS Direccion_Sucursal
  FROM VEHICULO v
 INNER JOIN SUCURSAL s
    ON s.Id_Sucursal = v.Id_Sucursal_FK
 ORDER BY s.Ciudad, v.Placa;

-- 10) Obtener rutas con nombres de sucursales
SELECT r.Id_Ruta,
       s1.Ciudad AS Sucursal_Origen,
       s2.Ciudad AS Sucursal_Destino,
       r.Distancia,
       r.Tiempo_Estimado,
       r.Estado
  FROM RUTA r
 INNER JOIN SUCURSAL s1
    ON s1.Ciudad = r.Origen
 INNER JOIN SUCURSAL s2
    ON s2.Ciudad = r.Destino
 ORDER BY r.Id_Ruta;

-- 11) Total de envíos por sucursal de origen
SELECT s.Ciudad AS Sucursal_Origen,
       COUNT(*) AS Total_Envios
  FROM ENVIO e
 INNER JOIN SUCURSAL s
    ON s.Id_Sucursal = e.Id_Sucursal_Origen_FK
 GROUP BY s.Ciudad
 ORDER BY Total_Envios DESC, s.Ciudad;

-- 12) Detalle completo de envíos
-- Incluye remitente, destinatario, sucursal origen, sucursal destino, estado, costo y número de guía
SELECT e.Numero_Guia,
       cr.Nombre AS Remitente,
       cd.Nombre AS Destinatario,
       so.Ciudad AS Sucursal_Origen,
       sd.Ciudad AS Sucursal_Destino,
       e.Estado,
       e.Costo
  FROM ENVIO e
 INNER JOIN CLIENTE cr
    ON cr.Id_Cliente = e.Id_Cliente_Remitente_FK
 INNER JOIN CLIENTE cd
    ON cd.Id_Cliente = e.Id_Cliente_Destinatario_FK
 INNER JOIN SUCURSAL so
    ON so.Id_Sucursal = e.Id_Sucursal_Origen_FK
 INNER JOIN SUCURSAL sd
    ON sd.Id_Sucursal = e.Id_Sucursal_Destino_FK
 ORDER BY e.Numero_Guia;
