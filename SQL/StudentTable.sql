/****** Object:  Table [dbo].[StudentTable]    Script Date: 20/06/2021 15:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    IF NOT EXISTS(SELECT * 
                    FROM sys.databases 
                    WHERE name = 'Student-Training-db')
    BEGIN
        CREATE DATABASE [Student-Training-db]
    END

GO
    USE [Student-Training-db]

GO
    IF NOT EXISTS (SELECT 'Id'
                    FROM   INFORMATION_SCHEMA.TABLES
                    WHERE  TABLE_NAME = 'StudentTable'
                            AND TABLE_SCHEMA = 'dbo')
    BEGIN

        CREATE TABLE StudentTable (
            [Id] [int] IDENTITY(1,1),
            Name NVARCHAR(100),
            Age INT,
            School NVARCHAR(200),
            City VARCHAR(20),
            Hobbies VARCHAR(50)
        );
    END

GO
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Donal Feavyour', 18, 'Caterham School', 'Plymouth', 'Gaming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Timoteo Burston', 16, 'Tonbridge School', 'Manchester', 'Swimming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Martie O''Sheerin', 17, 'Tonbridge School', 'Bradford', 'Listening to music');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Dalli Pillifant', 16, 'Benenden School', 'Manchester', 'Swimming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Charmine Gall', 16, 'Tonbridge School', 'Chester', 'Football');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Joly Southerden', 18, 'Westminster School', 'York', 'Dancing');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Anallese Huddle', 15, 'Headington School', 'York', 'Tennis');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Marley Bosley', 15, 'Caterham School', 'London', 'Dancing');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Norrie McEttigen', 17, 'Headington School', 'Liverpool', 'Football');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Zsazsa Kulvear', 16, 'Tonbridge School', 'Liverpool', 'Football');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Erminie Gotter', 18, 'St Paul''s School', 'Lancaster', 'Tennis');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Pablo Pietersen', 16, 'Caterham School', 'Leeds', 'Football');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Shaughn Folling', 15, 'St Paul''s School', 'Glasgow', 'Dancing');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Cece Churchill', 15, 'Headington School', 'Lancaster', 'Reading');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Abba Alven', 16, 'St Paul''s School', 'Leeds', 'Gaming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Johnette Huckle', 15, 'St Paul''s School', 'Glasgow', 'Dancing');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Claudell Hehir', 16, 'Westminster School', 'Liverpool', 'Gaming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Adolpho Taft', 16, 'Caterham School', 'Plymouth', 'Tennis');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Silvano Worster', 17, 'Caterham School', 'Manchester', 'Gaming');
    INSERT INTO StudentTable (Name, Age, School, City, Hobbies) VALUES ('Mychal Cripwell', 17, 'Headington School', 'Bradford', 'Listening to music');
