<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.StudentMark" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Student Mark - Mark Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: 	#fffff0;
            padding-top: 30px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background-color: #3498db;
            color: white;
            font-weight: bold;
            border-radius: 10px 10px 0 0 !important;
        }
        .btn-primary {
            background-color: #3498db;
            border-color: #3498db;
        }
        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }
        .form-label {
            font-weight: 500;
        }
        .alert {
            border-radius: 8px;
        }
        .nav-pills .nav-link.active {
            background-color: #3498db;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="card">
                    <div class="card-header">
                        Navigation
                    </div>
                    <div class="card-body">
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="markadd.jsp">Add Marks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="markupdate.jsp">Update Marks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="markdelete.jsp">Delete Marks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="DisplayMarksServlet">Display Marks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="report_form.jsp">Generate Reports</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-9">
                <div class="card">
                    <div class="card-header">
                        Update Student Mark
                    </div>
                    <div class="card-body">
                        <!-- Display success or error messages if any -->
                        <% if (request.getAttribute("successMessage") != null) { %>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <%= request.getAttribute("successMessage") %>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        <% } %>
                        
                        <% if (request.getAttribute("errorMessage") != null) { %>
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <%= request.getAttribute("errorMessage") %>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        <% } %>
                        
                        <!-- Search Form -->
                        <div class="card mb-3">
                            <div class="card-header bg-info text-white">
                                Search Student by ID
                            </div>
                            <div class="card-body">
                                <form action="UpdateMarkServlet" method="get" class="d-flex">
                                    <input type="number" class="form-control me-2" name="studentId" placeholder="Enter Student ID" required>
                                    <button type="submit" class="btn btn-info">Search</button>
                                </form>
                            </div>
                        </div>
                        
                        <!-- Update Form -->
                        <%
                            StudentMark studentMark = (StudentMark) request.getAttribute("studentMark");
                            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        %>
                        
                        <form action="UpdateMarkServlet" method="post" id="updateMarkForm" class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label for="studentId" class="form-label">Student ID</label>
                                <input type="number" class="form-control" id="studentId" name="studentId" 
                                       value="<%= studentMark != null ? studentMark.getStudentId() : "" %>" 
                                       <%= studentMark != null ? "readonly" : "" %> required>
                                <div class="invalid-feedback">Please enter a valid Student ID.</div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="studentName" class="form-label">Student Name</label>
                                <input type="text" class="form-control" id="studentName" name="studentName" 
                                       value="<%= studentMark != null ? studentMark.getStudentName() : "" %>" required maxlength="100">
                                <div class="invalid-feedback">Please enter a Student Name (max 100 characters).</div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="subject" class="form-label">Subject</label>
                                <select class="form-select" id="subject" name="subject" required>
                                    <option value="" disabled>Select a subject</option>
                                    <option value="Mathematics" <%= studentMark != null && "Mathematics".equals(studentMark.getSubject()) ? "selected" : "" %>>Mathematics</option>
                                    <option value="Physics" <%= studentMark != null && "Physics".equals(studentMark.getSubject()) ? "selected" : "" %>>Physics</option>
                                    <option value="Chemistry" <%= studentMark != null && "Chemistry".equals(studentMark.getSubject()) ? "selected" : "" %>>Chemistry</option>
                                    <option value="Biology" <%= studentMark != null && "Biology".equals(studentMark.getSubject()) ? "selected" : "" %>>Biology</option>
                                    <option value="Computer Science" <%= studentMark != null && "Computer Science".equals(studentMark.getSubject()) ? "selected" : "" %>>Computer Science</option>
                                    <option value="English" <%= studentMark != null && "English".equals(studentMark.getSubject()) ? "selected" : "" %>>English</option>
                                    <option value="History" <%= studentMark != null && "History".equals(studentMark.getSubject()) ? "selected" : "" %>>History</option>
                                    <option value="Geography" <%= studentMark != null && "Geography".equals(studentMark.getSubject()) ? "selected" : "" %>>Geography</option>
                                </select>
                                <div class="invalid-feedback">Please select a Subject.</div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="marks" class="form-label">Marks</label>
                                <input type="number" class="form-control" id="marks" name="marks" min="0" max="100" 
                                       value="<%= studentMark != null ? studentMark.getMarks() : "" %>" required>
                                <div class="invalid-feedback">Please enter Marks (0-100).</div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="examDate" class="form-label">Exam Date</label>
                                <input type="date" class="form-control" id="examDate" name="examDate" 
                                       value="<%= studentMark != null ? dateFormat.format(studentMark.getExamDate()) : "" %>" required>
                                <div class="invalid-feedback">Please select a valid Exam Date.</div>
                            </div>
                            
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">Update Student Mark</button>
                                <button type="reset" class="btn btn-secondary">Reset Form</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Form validation script -->
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
            
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.querySelectorAll('.needs-validation')
            
            // Loop over them and prevent submission
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }
                        
                        form.classList.add('was-validated')
                    }, false)
                })
        })()
        
        // Additional validation for dates
        document.getElementById('examDate').addEventListener('change', function() {
            const selectedDate = new Date(this.value);
            const today = new Date();
            
            if (selectedDate > today) {
                this.setCustomValidity('Exam date cannot be in the future');
            } else {
                this.setCustomValidity('');
            }
        });
    </script>
</body>
</html>