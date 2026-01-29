
--¿Hay correos que no cumplen con el formato estándar?
SELECT * FROM clientes 
WHERE email NOT LIKE '%@%.%';

--¿Hay mascotas con edades sospechosas (mayores a 30 años)?
SELECT * FROM mascotas 
WHERE edad > 30;

--¿Qué cliente tiene qué mascota? (Si sale alguien sin mascota o mascota sin dueño, hay que reportarlo)
SELECT c.nombre AS dueño, m.nombre AS mascota
FROM clientes c
LEFT JOIN mascotas m ON c.id_cliente = m.id_cliente;

--Objetivo: El email no deberia ser nulo
SELECT * FROM clientes
WHERE email IS NULL;







