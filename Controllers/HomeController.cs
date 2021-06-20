using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using student_training_app.Models;

namespace student_training_app.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Students()
        {
            StudentData studentData = new StudentData();
            var studentList = studentData.GetAllStudents();

            return View("Students", studentList);
        }

        public IActionResult AddStudent()
        {
            return View();
        }

        public IActionResult Create(Student student)
        {
            if (!string.IsNullOrWhiteSpace(student.Name) && !string.IsNullOrWhiteSpace(student.School))
            {
                StudentData studentData = new StudentData();
                studentData.CreateStudent(student);
            }

            return Students();
        }
    }
}
