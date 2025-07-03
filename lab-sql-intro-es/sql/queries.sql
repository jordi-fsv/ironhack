-- 1. Identificar los Principales Tipos de Quejas

SELECT 'Complaint Type', COUNT('Unique Key') as 'Número de quejas'
FROM 311_service_requests
GROUP BY 'Complaint Type'
ORDER BY COUNT('Unique Key') DESC LIMIT 5;

-- 2. Analizar Quejas por Distrito

SELECT 'Borough', COUNT('Unique Key') as 'Número de quejas'
FROM 311_service_requests
GROUP BY 'Borough';

-- 3. Filtrar Quejas
SELECT 'Complaint Type', COUNT('Unique Key') as 'Número de quejas'
FROM 311_service_requests
GROUP BY 'Complaint Type'
HAVING COUNT('Unique Key') > 1000

-- 4. Comparación de Distritos para un Tipo Específico de Queja
SELECT 'Borough', COUNT('Unique Key') as 'Número de quejas "Street Condition"'
FROM 311_service_requests
GROUP BY 'Borough'
WHERE 'Complaint Type' = 'Street Condition'