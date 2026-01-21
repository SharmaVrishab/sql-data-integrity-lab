## Phase 6 — Join Safety Notes

- INNER JOIN hides missing data

  SELECT
  s.name,
  r.reading_date,
  r.temp_c,
  r.rainfall_mm
  FROM stations s
  JOIN readings r
  ON s.station_id = r.station_id
  ORDER BY r.reading_date, s.name;

- LEFT JOIN + IS NULL exposes missing facts

        SELECT
        s.name

  FROM stations s
  LEFT JOIN readings r
  ON s.station_id = r.station_id
  WHERE r.reading_id IS NULL;

- Orphan detection is a data quality pattern

            INSERT INTO stations (name, location)

  VALUES ('Remote Outpost', 'Himalayas');

  DELETE FROM stations
  WHERE name = 'Remote Outpost';

- Scalar subqueries compare rows to global aggregates

        SELECT
        s.name,
        r.reading_date,
        r.temp_c

  FROM stations s
  JOIN readings r
  ON s.station_id = r.station_id
  WHERE r.temp_c = (
  SELECT MAX(temp_c)
  FROM readings
  );
