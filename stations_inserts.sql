INSERT INTO stations (name, location)
VALUES ('Downtown', 'Rohtak Center');

INSERT INTO stations (name, location, elevation_m)
VALUES ('Airport', 'Rohtak Airport', 220);

-- Intentional failure: NOT NULL violation
INSERT INTO stations (name)
VALUES ('Bad Station');

