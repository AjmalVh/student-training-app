using System.Collections.Generic;
using System.Data;
using Microsoft.Data;
using Microsoft.Data.SqlClient;
using Dapper;

public class StudentData
{
    private string ConnectionString { get; set; } = "CONNECTION STRING HERE";

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
        var query = "SELECT Id, Name, Age, School FROM StudentTable";
        var allStudents = databaseConnection.Query<Student>(query).AsList();

        return allStudents;
    }
}