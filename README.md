# Sistema Logístico Colombiano de Envíos (Oracle SQL)

Proyecto académico/profesional de base de datos relacional para una empresa de mensajería y logística en Colombia.

## Descripción del sistema

El sistema modela la operación de envíos nacionales: registro de clientes, sucursales, empleados, vehículos, rutas, viajes, paquetes y guías de envío.

## Objetivo del proyecto

Diseñar e implementar una base de datos Oracle totalmente ejecutable, con:

- Estructura relacional completa (DDL)
- Datos de prueba realistas del contexto colombiano (DML)
- Consultas operativas y de análisis para logística (SQL)

## Tecnologías usadas

- **Oracle SQL** (compatible con Oracle SQL Developer)
- Scripts `.sql` versionados en Git

## Estructura de archivos

- `ddl.sql`: creación de tablas, PK, FK y constraints
- `dml.sql`: inserción de datos realistas y coherentes
- `consultas.sql`: 12 consultas solicitadas con comentarios
- `README.md`: documentación del proyecto

## Modelo relacional implementado

### Tablas

1. **CLIENTE**: remitentes y destinatarios.
2. **SUCURSAL**: sedes de la empresa en ciudades colombianas.
3. **EMPLEADO**: personal vinculado a sucursal.
4. **VEHICULO**: flota operativa por sucursal.
5. **RUTA**: trayectos logísticos interciudad.
6. **VIAJE**: ejecución de rutas con empleado y vehículo.
7. **PAQUETE**: características físicas y comerciales del paquete.
8. **ENVIO**: guía, origen, destino, estado y costos del envío.

### Relaciones clave

- `EMPLEADO.Id_Sucursal_FK -> SUCURSAL.Id_Sucursal`
- `VEHICULO.Id_Sucursal_FK -> SUCURSAL.Id_Sucursal`
- `VIAJE.Placa_FK -> VEHICULO.Placa`
- `VIAJE.Cedula_FK -> EMPLEADO.Cedula`
- `VIAJE.Id_Ruta_FK -> RUTA.Id_Ruta`
- `PAQUETE.Id_Cliente_FK -> CLIENTE.Id_Cliente`
- `ENVIO.Codigo_P_FK -> PAQUETE.Codigo_P`
- `ENVIO.Id_Cliente_Remitente_FK -> CLIENTE.Id_Cliente`
- `ENVIO.Id_Cliente_Destinatario_FK -> CLIENTE.Id_Cliente`
- `ENVIO.Id_Sucursal_Origen_FK -> SUCURSAL.Id_Sucursal`
- `ENVIO.Id_Sucursal_Destino_FK -> SUCURSAL.Id_Sucursal`

## Cómo reproducir en tu PC (interfaz gráfica)

## Requisitos previos

Instala alguno de estos motores Oracle:

- **Oracle Database XE 21c** (recomendado para local)
- Oracle Database 19c/21c

Instala una interfaz gráfica SQL:

- **Oracle SQL Developer** (recomendado)
- DBeaver, DataGrip u otra herramienta con conexión Oracle

## Ejecución en Oracle SQL Developer

1. Abre SQL Developer.
2. Crea una conexión nueva (usuario/clave/host/puerto/SID o Service Name).
3. Conéctate a tu esquema de trabajo.
4. Abre y ejecuta en este orden:
   1. `ddl.sql`
   2. `dml.sql`
   3. `consultas.sql`
5. Verifica resultados en la grilla de resultados de SQL Developer.

> Sugerencia: activa "Autocommit" o ejecuta `COMMIT;` al final de cargas.

## Ejecución rápida en Oracle Live SQL (opcional)

1. Ingresa a Oracle Live SQL con tu cuenta Oracle.
2. Crea un SQL Script nuevo.
3. Copia y ejecuta primero `ddl.sql`, luego `dml.sql` y finalmente `consultas.sql`.

## Ejemplos de uso

- Consultar envíos en tránsito para monitoreo diario.
- Obtener total de envíos por sucursal para planeación operativa.
- Relacionar remitente/destinatario/sucursales por número de guía.

## Contexto colombiano del sistema

Los datos incluidos usan ciudades, direcciones, nombres, teléfonos y empresas con formato realista de Colombia (Bogotá, Medellín, Cali, Barranquilla, Bucaramanga, Cartagena, Pereira y Villavicencio).

## Posibles mejoras futuras

- Tabla histórica de seguimiento por eventos del envío.
- Integración con georreferenciación y tiempos reales de tráfico.
- Políticas de auditoría (usuarios, cambios, trazabilidad avanzada).
- Procedimientos almacenados para cálculo automático de costo.
