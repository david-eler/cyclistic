-- Criação das tabelas e importação dos dados originais
-- Creating the tables and importing the raw data

CREATE TABLE trip_data_202208 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202209 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202210 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202211 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202212 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202301 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202302 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202303 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202304 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202305 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202306 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

CREATE TABLE trip_data_202307 (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

COPY trip_data_202208 from 'C:\csv\202208-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202209 from 'C:\csv\202209-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202210 from 'C:\csv\202210-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202211 from 'C:\csv\202211-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202212 from 'C:\csv\202212-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202301 from 'C:\csv\202301-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202302 from 'C:\csv\202302-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202303 from 'C:\csv\202303-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202304 from 'C:\csv\202304-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202305 from 'C:\csv\202305-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202306 from 'C:\csv\202306-divvy-tripdata.csv' delimiter ',' csv HEADER
COPY trip_data_202307 from 'C:\csv\202307-divvy-tripdata.csv' delimiter ',' csv HEADER

-- União de todas as tabelas
-- Uniting all the tables

CREATE TABLE trip_data_total (
	ride_id varchar,
	rideable_type varchar,
	started_at timestamp,
	ended_at timestamp,
	start_station_name varchar,
	start_station_id varchar,
	end_station_name varchar,
	end_station_id varchar,
	start_lat varchar,
	start_lng varchar,
	end_lat varchar,
	end_lng varchar,
	member_casual varchar
)

INSERT INTO trip_data_total (
	ride_id,
	rideable_type,
	started_at,
	ended_at,
	start_station_name,
	start_station_id,
	end_station_name,
	end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
	member_casual
) 
	SELECT * FROM trip_data_202208
	UNION ALL
	SELECT * FROM trip_data_202209
	UNION ALL
	SELECT * FROM trip_data_202210
	UNION ALL
	SELECT * FROM trip_data_202211
	UNION ALL
	SELECT * FROM trip_data_202212
	UNION ALL
	SELECT * FROM trip_data_202301
	UNION ALL
	SELECT * FROM trip_data_202302
	UNION ALL
	SELECT * FROM trip_data_202303
	UNION ALL
	SELECT * FROM trip_data_202304
	UNION ALL
	SELECT * FROM trip_data_202305
	UNION ALL
	SELECT * FROM trip_data_202306
	UNION ALL
	SELECT * FROM trip_data_202307
	
-- Criação das colunas de duração da corrida (ride_duration) e dia da semana (day_of_week)
-- Adding the columns 'ride_duration' and 'day_of_week'

ALTER TABLE trip_data_total
ADD ride_duration interval

ALTER TABLE trip_data_total
ADD day_of_week smallint

-- Populando as colunas criadas / populating the added columns

-- 'ride_duration' recebe a diferença entre o horário final e inicial da corrida
-- 'ride_duration' receives the difference between the ride's end time and start time

UPDATE trip_data_total
SET ride_duration = ended_at - started_at
WHERE true

-- 'day_of_week' recebe o valor númerico que representa o dia da semana correspondente, de 1 a 7
-- 'day_of_week' receives a numerical value between 1 and 7, representing the corresponding day of the week

UPDATE trip_data_total
SET day_of_week = extract('dow' FROM started_at) + 1
WHERE true