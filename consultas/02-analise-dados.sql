-- Média de duração de corrida, corrida mais longa e dia da semana com mais corridas iniciadas
-- Average ride duration, longest ride and the day of the week with the most rides started

SELECT
	avg(ride_duration) AS "Duração Média",
	max(ride_duration) AS "Corrida Mais Longa",
	mode() WITHIN GROUP (ORDER BY day_of_week) AS "Dia c/ Mais Corridas"
FROM trip_data_total


-- Média de duração de corrida e número de corridas por tipo de usuário (membro ou casual)
-- Average ride duration and ride count per user type (member or casual)

SELECT
	member_casual AS "Tipo de Usuário",
	avg(ride_duration) AS "Duração Média",
	count(member_casual) AS "Número de Corridas"
FROM trip_data_total
GROUP BY member_casual
ORDER BY avg(ride_duration), count(member_casual)


-- Média de duração de corrida por dia da semana
-- Average ride duration per day of the week

SELECT
	day_of_week AS "Dia da Semana",
	avg(ride_duration) AS "Duração Média"
FROM trip_data_total
GROUP BY day_of_week
ORDER BY avg(ride_duration) DESC


-- Contagem de corridas por dia da semana
-- Ride count per day of the week

SELECT
	day_of_week AS "Dia da Semana",
	count(ride_id) AS "Qtd. Corridas"
FROM trip_data_total
GROUP BY day_of_week
ORDER BY count(ride_id) DESC


-- Média de utilização por estação
-- Average by season

SELECT
	CASE WHEN extract(month FROM started_at) BETWEEN 06 AND 08 THEN 'Verão'
		WHEN extract(month FROM started_at) BETWEEN 09 AND 11 THEN 'Outono'
		WHEN extract(month FROM started_at) IN (12,01,02) THEN 'Inverno'
		WHEN extract(month FROM started_at) BETWEEN 03 AND 05 THEN 'Primavera' 
	END AS "Estações",
    avg(ride_duration) AS "Duração Média",
    max(ride_duration) AS "Corrida Mais Longa",
    count(ride_id) AS "Qtd. Corridas",
    mode() WITHIN GROUP (ORDER BY day_of_week) AS "Dia c/ Mais Corridas"
FROM trip_data_total
GROUP BY
	CASE WHEN extract(month FROM started_at) BETWEEN 06 AND 08 THEN 'Verão' 
		WHEN extract(month FROM started_at) BETWEEN 09 AND 11 THEN 'Outono'
		WHEN extract(month FROM started_at) IN (12,01,02) THEN 'Inverno'
		WHEN extract(month FROM started_at) BETWEEN 03 AND 05 THEN 'Primavera' 
	END
ORDER BY count(ride_id) DESC


-- Top estações com mais embarques
-- Top busiest start stations

SELECT 
	start_station_name AS "Estação de Embarque",
	count(start_station_name) AS "Número de Embarques",
	start_lat AS "Latitude",
	start_lng AS "Longitude"
FROM trip_data_total
GROUP BY start_station_name, start_lat, start_lng
ORDER BY count(start_station_name) DESC
LIMIT 50


-- Top estações com mais desembarques
-- Top busiest end stations

SELECT 
	end_station_name AS "Estação de Desembarque",
	count(end_station_name) AS "Número de Desembarques",
	end_lat AS "Latitude",
	end_lng AS "Longitude"
FROM trip_data_total
GROUP BY end_station_name, end_lat, end_lng
ORDER BY count(end_station_name) DESC
LIMIT 50





	