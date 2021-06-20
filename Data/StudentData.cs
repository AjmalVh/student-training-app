using System.Collections.Generic;
using System.Data;
using Microsoft.Data;
using Microsoft.Data.SqlClient;
using Dapper;

public class StudentData
{
    private string ConnectionString { get; set; } = "Server=tcp:avh-db.database.windows.net,1433;Initial Catalog=student-training-db;Persist Security Info=False;User ID=ajmalvh;Password=Password777!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

    //Get database connectivity
    public IDbConnection GetDatabaseConnection()
    {
        IDbConnection databaseConnection = new SqlConnection(ConnectionString);
        return databaseConnection;
    }

    // Get all students from the database
    public List<Student> GetAllStudents()
    {
        var databaseConnection = GetDatabaseConnection();       
        var query = "SELECT Id, Name, Age, School, City FROM StudentTable";
        var allStudents = databaseConnection.Query<Student>(query).AsList();

        return allStudents;
    }

    public void CreateStudent(Student student)
    {
        var databaseConnection = GetDatabaseConnection();
        var query = string.Format( "INSERT into  StudentTable (Name, School) Values ('{0}', '{1}')",student.Name, student.School);
        databaseConnection.Execute(query);
    }
}