INSERT INTO readings (station_id, reading_date, temp_c)
VALUES (1, '2026-01-01', 12.5);

INSERT INTO readings (station_id, reading_date, temp_c)
VALUES (1, '2026-01-02', 14.0);

-- Intentional failure: duplicate (station_id, reading_date)
INSERT INTO readings (station_id, reading_date, temp_c)
VALUES (1, '2026-01-01', 13.0);

-- Intentional failure: foreign key violation
INSERT INTO readings (station_id, reading_date, temp_c)
VALUES (999, '2026-01-03', 10.0);
