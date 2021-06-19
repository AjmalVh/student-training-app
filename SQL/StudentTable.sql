IF NOT EXISTS (SELECT 'Id'
                   FROM   INFORMATION_SCHEMA.TABLES
                   WHERE  TABLE_NAME = 'StudentTable'
                          AND TABLE_SCHEMA = 'dbo')
BEGIN

    CREATE TABLE StudentTable (
        Id INT NOT NULL PRIMARY KEY,
        Name NVARCHAR(100),
        Age INT,
        School NVARCHAR(200),
        City VARCHAR(20),
        Hobbies VARCHAR(50)
    );
END


INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (1, 'Donal Feavyour', 18, 'Caterham School', 'Plymouth', 'Gaming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (2, 'Timoteo Burston', 16, 'Tonbridge School', 'Manchester', 'Swimming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (3, 'Martie O''Sheerin', 17, 'Tonbridge School', 'Bradford', 'Listening to music');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (4, 'Dalli Pillifant', 16, 'Benenden School', 'Manchester', 'Swimming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (5, 'Charmine Gall', 16, 'Tonbridge School', 'Chester', 'Football');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (6, 'Joly Southerden', 18, 'Westminster School', 'York', 'Dancing');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (7, 'Anallese Huddle', 15, 'Headington School', 'York', 'Tennis');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (8, 'Marley Bosley', 15, 'Caterham School', 'London', 'Dancing');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (9, 'Norrie McEttigen', 17, 'Headington School', 'Liverpool', 'Football');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (10, 'Zsazsa Kulvear', 16, 'Tonbridge School', 'Liverpool', 'Football');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (11, 'Erminie Gotter', 18, 'St Paul''s School', 'Lancaster', 'Tennis');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (12, 'Pablo Pietersen', 16, 'Caterham School', 'Leeds', 'Football');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (13, 'Shaughn Folling', 15, 'St Paul''s School', 'Glasgow', 'Dancing');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (14, 'Cece Churchill', 15, 'Headington School', 'Lancaster', 'Reading');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (15, 'Abba Alven', 16, 'St Paul''s School', 'Leeds', 'Gaming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (16, 'Johnette Huckle', 15, 'St Paul''s School', 'Glasgow', 'Dancing');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (17, 'Claudell Hehir', 16, 'Westminster School', 'Liverpool', 'Gaming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (18, 'Adolpho Taft', 16, 'Caterham School', 'Plymouth', 'Tennis');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (19, 'Silvano Worster', 17, 'Caterham School', 'Manchester', 'Gaming');
INSERT INTO StudentTable (Id, Name, Age, School, City, Hobbies) VALUES (20, 'Mychal Cripwell', 17, 'Headington School', 'Bradford', 'Listening to music');