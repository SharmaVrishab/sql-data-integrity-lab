CREATE TABLE stations (
    station_id   SERIAL PRIMARY KEY,
    name         TEXT NOT NULL,
    location     TEXT NOT NULL,
    elevation_m  INTEGER CHECK (elevation_m >= -100)
);
