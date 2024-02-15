BEGIN;

TRUNCATE TABLE genre;

INSERT INTO genre (name) VALUES
('comedie'),
('thriller'),
('horreur'),
('aventure');

COMMIT;