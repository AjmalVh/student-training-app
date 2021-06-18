using System.Collections.Generic;
using System.Data;
using Microsoft.Data;
using Microsoft.Data.SqlClient;
using Dapper;
using System;

public static class StudentDataStore
{
    public static List<Student> GetStudentData()
    {
        var studentList = new List<Student>();

        for(int i =1; i<15; i++)
        {
            studentList.Add(
                new Student(){
                    Id = i,
                    Name = $"Student {i}",
                    Age = new Random().Next(12,18),
                    School = $"District School {new Random().Next(1,9)}"
                }
            );
        }

        return studentList;
    }
}