CREATE TABLE IF NOT EXISTS stations (
    station_id   SERIAL PRIMARY KEY,
    name         TEXT NOT NULL,
    location     TEXT NOT NULL,
    elevation_m  INTEGER CHECK (elevation_m >= -100)
);

CREATE TABLE IF NOT EXISTS readings (
    reading_id   BIGSERIAL PRIMARY KEY,
    station_id   INTEGER NOT NULL REFERENCES stations(station_id),
    reading_date DATE NOT NULL,
    temp_c       NUMERIC(4,1),
    rainfall_mm  NUMERIC(5,1) DEFAULT 0,
    UNIQUE (station_id, reading_date)
);
