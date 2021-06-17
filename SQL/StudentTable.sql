IF NOT EXISTS (SELECT 'Id'
                   FROM   INFORMATION_SCHEMA.TABLES
                   WHERE  TABLE_NAME = 'StudentTable'
                          AND TABLE_SCHEMA = 'dbo')
BEGIN

    CREATE TABLE StudentTable (
        Id INT NOT NULL PRIMARY KEY,
        Name NVARCHAR(100),
        Age INT,
        School NVARCHAR(200)
    );
END



INSERT INTO StudentTable (
    Id,
    Name,
    Age,
    School
)
VALUES
    (
        1001,
        'John Doe',
        17,
        'Example School 1'
    ),
     (
        1002,
        'Peter Doe',
        17,
        'Example School 2'
    ),
    (
       1003,
       'Jane Doe',
        21,
       'Example School 3'
    );