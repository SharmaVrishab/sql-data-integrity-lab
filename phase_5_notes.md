## Phase 5 — Aggregate Safety Notes

- ORDER BY is required for meaningful LIMIT

        SELECT \*
        FROM readings
        WHERE temp_c > 15
        ORDER BY temp_c DESC
        LIMIT 3;

- WHERE filters rows; HAVING filters groups

        SELECT AVG(temp_c)
        FROM readings
        WHERE station_id = 999;


        SELECT
        station_id,
        AVG(temp_c) AS avg_temp,
        SUM(rainfall_mm) AS total_rain,
        COUNT(*) AS reading_count
        FROM readings
        GROUP BY station_id;

- AVG/SUM over zero rows returns NULL, not 0

        SELECT AVG(temp_c)
        FROM readings
        WHERE station_id = 999;



        SELECT
            station_id,
            SUM(rainfall_mm) AS total_rain
        FROM readings
        GROUP BY station_id
        HAVING SUM(rainfall_mm) > 0;

- Always pair aggregates with COUNT to detect empty sets

      SELECT
      COUNT(*)     AS row_count,
      AVG(temp_c)  AS avg_temp

  FROM readings
  WHERE station_id = 999;
