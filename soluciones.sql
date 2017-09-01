select id.nombre
FROM departamentos
where id not in (select id_departamento
                 from empleados 
                 where id_departamento is not null)
order by ID



SELECT IE.INTERVALO , COUNT (IE.INTERVALO) NUM_EMPLEADOS 
FROM (SELECT CASE WHEN EDAD <16 THEN '< 16'
                  WHEN EDAD DETWEEN 16 AND 25 THEN '16 A 25'
                  WHEN EDAD DETWEEN 26 AND 40 THEN '16 A 25'
                  WHEN EDAD >40 THEN '< 40'
            END INTERVALO 
    FROM EMPLEADOS ) IE 
    GROUP BY IE.INTERVALO 
    ORDER BY CASE INTERVALO  WHEN '< 16' THEN 1
                             WHEN '16 A 25' THEN 2
                             WHEN '26 A 40' THEN 3
                             WHEN '40 > ' THEN 4
    END 




    SELECT 'M' GENERO,COUNT(GENERO ) NUM_EMPLEADOS
    FROM  EMPLEADOS 
    WHERE GENERO='M'
    UNION 
    SELECT 'F' ,COUNT(GENERO)
    FROM EMPLEADOS
    WHERE GENERO='F'
    ORDER BY GENERO DESC 



SELECT FECHAS_INICIO, FECHA_FINAL 
FROM PROYECTOS 
WHERE FECHA_INICIO <="31-10-14" AND FECHA_FIN >='01-07-14'




SELECT P.NOMBRE NVL(CPP.C,0) COSTO 
FROM PROYECTOS 
LEFT JOIN (SELECT A.ID_PROYECTO ,SUM(E.SALARIO)
           FROM ASIGNACIONES A 
           JOIN EMPLEADOS E 
           ON A.ID_EMPLEADO=E.ID
           GROUP BY ID_PROYECTO)CPP
ON P.ID=CPP.ID_PROYECTO
ORDER BY P.NOMBRE 




