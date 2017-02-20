ALTER TABLE developers ADD salary INT,
  ENGINE InnoDB;

UPDATE developers SET salary=3500 WHERE id<8;
UPDATE developers SET salary=1500 WHERE id>7 AND id<15;
UPDATE developers SET salary=4000 WHERE id>14 AND id<22;
UPDATE developers SET salary=2300 WHERE id>21 AND id<29;