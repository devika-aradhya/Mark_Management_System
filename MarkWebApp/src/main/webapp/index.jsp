<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Mark Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- Font Awesome (Optional for icons) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    
    <style>
     body {
    font-family: 'Roboto', sans-serif; /* Changed font family to Roboto */
    background-color: #f8f9fa;
    padding-top: 30px;
    color: #343a40;
}

.card {
    border-radius: 12px;
    transition: all 0.4s ease-in-out;
    background-color: #ffffff;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
}

.card:hover {
    box-shadow: 0 10px 25px rgba(0,0,0,0.18);
    transform: translateY(-5px);
}

.card-header {
    background-color: #6c5ce7;
    color: white;
    font-weight: 600;
    font-size: 1.15rem;
    padding: 1rem 1.25rem;
    border-radius: 12px 12px 0 0 !important;
}

.btn-primary {
    background-color: #00b894;
    border: none;
    padding: 0.75rem 1.5rem;
    font-weight: 500;
    border-radius: 8px;
    color: white;
    transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
}

.btn-primary:hover {
    background-color: #00967a;
    transform: translateY(-2px);
}

.jumbotron {
    background: linear-gradient(135deg, #6c5ce7, #00b894);
    padding: 3.5rem 2.5rem;
    border-radius: 20px;
    color: white;
    margin-bottom: 50px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
}

.jumbotron h1 {
    font-weight: 700;
    margin-bottom: 1rem;
}

.jumbotron p {
    font-size: 1.15rem;
    opacity: 0.95;
}

.feature-icon {
    font-size: 3rem;
    margin-bottom: 20px;
    color: #6c5ce7;
    transition: transform 0.3s ease-in-out;
}

.feature-icon:hover {
    transform: scale(1.1);
}

.footer {
    background: #343a40;
    color: #e9ecef;
    padding: 50px 0;
    margin-top: 60px;
    border-radius: 20px 20px 0 0;
    box-shadow: 0 -5px 15px rgba(0, 0, 0, 0.1);
}

.footer a {
    color: #a29bfe;
    text-decoration: none;
    transition: color 0.3s ease-in-out;
}

.footer a:hover {
    color: #ffffff;
    text-decoration: underline;
}

.divider {
    border-top: 1px solid rgba(0,0,0,0.1);
    margin: 40px 0;
}
    </style>
</head>
<body>

<div class="container">
    <div class="jumbotron text-center">
        <h1 class="display-5 fw-bold">Student Mark Management</h1>
        <p class="lead">Manage, update, and analyze student examination marks easily</p>
    </div>

    <div class="row">
        <!-- Sidebar -->
        <div class="col-lg-3 mb-4">
            <div class="card">
                <div class="card-header">Navigation</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="index.jsp" class="text-decoration-none">Home</a></li>
                    <li class="list-group-item"><a href="markadd.jsp" class="text-decoration-none">Add Marks</a></li>
                    <li class="list-group-item"><a href="markupdate.jsp" class="text-decoration-none">Update Marks</a></li>
                    <li class="list-group-item"><a href="markdelete.jsp" class="text-decoration-none">Delete Marks</a></li>
                    <li class="list-group-item"><a href="DisplayMarksServlet" class="text-decoration-none">Display Marks</a></li>
                    <li class="list-group-item"><a href="report_form.jsp" class="text-decoration-none">Generate Reports</a></li>
                </ul>
            </div>
        </div>

        <!-- Main Features -->
        <div class="col-lg-9">
            <div class="row g-4">
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-plus-circle"></i></div>
                    <h5>Add Marks</h5>
                    <p>Add new marks to the system</p>
                    <a href="markadd.jsp" class="btn btn-primary">Add</a>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-edit"></i></div>
                    <h5>Update Marks</h5>
                    <p>Edit existing student marks</p>
                    <a href="markupdate.jsp" class="btn btn-primary">Update</a>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-trash"></i></div>
                    <h5>Delete Marks</h5>
                    <p>Remove outdated records</p>
                    <a href="markdelete.jsp" class="btn btn-primary">Delete</a>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-table"></i></div>
                    <h5>Display</h5>
                    <p>View all student marks</p>
                    <a href="DisplayMarksServlet" class="btn btn-primary">Display</a>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-chart-line"></i></div>
                    <h5>Reports</h5>
                    <p>Generate performance reports</p>
                    <a href="report_form.jsp" class="btn btn-primary">Report</a>
                </div>
                <div class="col-md-4 text-center">
                    <div class="feature-icon"><i class="fas fa-info-circle"></i></div>
                    <h5>About</h5>
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#aboutModal">Info</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer mt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>&copy; 2024 Student Mark Management System</p>
                <p>Designed by Devika S A - 4AL22CS037</p>
            </div>
            <div class="col-md-6 text-md-end">
                <a href="#">Home</a> | 
                <a href="#">Support</a>
            </div>
        </div>
    </div>
</footer>

<!-- About Modal -->
<div class="modal fade" id="aboutModal" tabindex="-1" aria-labelledby="aboutModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">About This System</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>This platform allows schools to manage student marks with ease using JSP, Servlets, and JDBC. Features include:</p>
                <ul>
                    <li>CRUD operations on marks</li>
                    <li>Performance-based reporting</li>
                    <li>Search by student ID</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
