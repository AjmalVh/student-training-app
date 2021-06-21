using System.Collections.Generic;
using System.Data;
using Microsoft.Data;
using Microsoft.Data.SqlClient;
using Dapper;

public class StudentData
{
    private string ConnectionString { get; set; } = @"Server=.\SQLEXPRESS,1433;Initial Catalog=StudentDatabase;Integrated Security= SSPI";

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