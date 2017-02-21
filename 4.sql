ALTER TABLE projects ADD cost INT,
  ENGINE InnoDB;

UPDATE projects SET cost=200000 WHERE id=1;
UPDATE projects SET cost=1500000 WHERE id=2;
UPDATE projects SET cost=2300000 WHERE id=3;
UPDATE projects SET cost=990000 WHERE id=4;
UPDATE projects SET cost=140000 WHERE id=5;
UPDATE projects SET cost=123545 WHERE id=6;
UPDATE projects SET cost=98345195 WHERE id=7;
UPDATE projects SET cost=8834120 WHERE id=8;