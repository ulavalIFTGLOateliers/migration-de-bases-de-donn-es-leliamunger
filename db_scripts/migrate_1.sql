ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician CHANGE singerName musicianName varchar(50);
CREATE TABLE IF NOT EXISTS band (     bandName varchar(50),
                                        creation YEAR,
                                        genre varchar(50),
                                        PRIMARY KEY(bandName));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"),
                          ("Luna",2009,"classical"),
                          ("Mysterio", 2019, "pop");

ALTER TABLE musician ADD COLUMN role varchar(50);

UPDATE musician M
SET M.role = 'vocals'
WHERE M.musicianName = 'Alina';

UPDATE musician M
SET M.role = 'guitar'
WHERE M.musicianName = 'Mysterio';

UPDATE musician M
SET M.role = 'percussion'
WHERE M.musicianName = 'Rainbow';

UPDATE musician M
SET M.role = 'piano'
WHERE M.musicianName = 'Luna';

ALTER TABLE musician ADD COLUMN bandName varchar(50);

UPDATE musician M
SET M.bandName = 'Crazy Duo'
WHERE M.musicianName = 'Alina';

UPDATE musician M
SET M.bandName = 'Crazy Duo'
WHERE M.musicianName = 'Rainbow';

UPDATE musician M
SET M.bandName = 'Mysterio'
WHERE M.musicianName = 'Mysterio';

UPDATE musician M
SET M.bandName = 'Luna'
WHERE M.musicianName = 'Luna';