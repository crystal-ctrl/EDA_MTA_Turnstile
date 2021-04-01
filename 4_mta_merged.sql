CREATE TABLE merged_data AS
SELECT DISTINCT m.STATION, s.ADA
FROM mta_data m
	LEFT JOIN id_data i ON m.UNIT =i.remote
	LEFT JOIN station_data s ON i.complex_id=s."Complex ID";
