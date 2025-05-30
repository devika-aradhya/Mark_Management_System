# Mark_Management_System



✅ 1. Project Setup Steps
A. Environment Setup
Install Apache Tomcat (v9 or v10) as your servlet container.

Use Eclipse IDE or NetBeans for Java EE development.

Install MySQL and create a database studentdb (or similar).

Add the MySQL JDBC Driver (Connector/J) to your project's lib folder or classpath.

✅ 2. Database Setup
Create Database and Table
sql
Copy
Edit
CREATE DATABASE studentdb;

USE studentdb;

CREATE TABLE StudentMarks (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Subject VARCHAR(50),
    Marks INT,
    ExamDate DATE
);
✅ 3. Project Structure Overview
css
Copy
Edit
MarkWebApp/
├── WebContent/
│   ├── index.jsp                → Home / Navigation Page
│   ├── markadd.jsp              → Form to add student marks
│   ├── markupdate.jsp           → Form to update marks
│   ├── markdelete.jsp           → Form to delete records
│   ├── markdisplay.jsp          → Show all/search marks
│   ├── reports.jsp              → Report options
│   ├── report_form.jsp          → Input form for reports
│   └── report_result.jsp        → Display report output
├── src/
│   ├── com/
│   ├── dao/
│   │   └── MarkDAO.java         → JDBC logic to connect to DB and handle queries
│   ├── model/
│   │   └── StudentMark.java     → POJO for student mark data
│   └── servlet/
│       ├── AddMarkServlet.java
│       ├── UpdateMarkServlet.java
│       ├── DeleteMarkServlet.java
│       ├── DisplayMarksServlet.java
│       ├── ReportServlet.java
│       └── ReportCriteriaServlet.java
└── WEB-INF/web.xml              → Servlet mappings
✅ 4. Implementation Steps
A. Create POJO: StudentMark.java
Contains fields: studentId, studentName, subject, marks, examDate

Include getter and setter methods.

B. Create DAO: MarkDAO.java
Handles add, update, delete, display, and report queries using JDBC.

Methods:

addMark(StudentMark mark)

updateMark(StudentMark mark)

deleteMark(int studentId)

getAllMarks()

getMarksByStudentId(int id)

getMarksAbove(int threshold)

getMarksBySubject(String subject)

getTopNStudents(int n)

C. Create JSP Pages
Form-based JSPs for user input.

Use form tags with POST method.

Each form submits data to corresponding servlet.

D. Create Servlets
Each servlet handles form requests and interacts with MarkDAO.

AddMarkServlet.java → Handles adding new record.

UpdateMarkServlet.java → Updates an existing mark.

DeleteMarkServlet.java → Deletes record using ID.

DisplayMarksServlet.java → Shows all or search by ID.

ReportCriteriaServlet.java → Accepts report input.

ReportServlet.java → Generates and displays report.

E. Configure web.xml
Map each servlet to a URL pattern.

xml
Copy
Edit
<servlet>
    <servlet-name>AddMarkServlet</servlet-name>
    <servlet-class>servlet.AddMarkServlet</servlet-class>
</servlet>
<servlet-mapping>
    <servlet-name>AddMarkServlet</servlet-name>
    <url-pattern>/addMark</url-pattern>
</servlet-mapping>
<!-- Repeat for other servlets -->
✅ 5. Features of the Application
A. CRUD Operations
Add Marks: Insert new student marks.

Update Marks: Modify existing marks by StudentID.

Delete Marks: Remove student record by ID.

Display Marks: View all records or filter by StudentID.

B. Report Functionalities
Students scoring above a certain mark.

Students scoring in a specific subject.

Top N students by highest marks.

C. UI Features
Clean and simple JSP forms.

Table layout to display records.

Bootstrap can be added for better design.

D. Error Handling
Handle invalid inputs or missing records.

Display success/error messages on each operation.

✅ 6. Optional Enhancements
Add session handling for admin login.

Export reports to PDF or CSV.

Add date filters (e.g., show marks for a particular exam month).

Use JSTL and MVC pattern for better separation.


1.ADD MARKS 
[https://github.com/devika-aradhya/Mark_Management_System/blob/main/MarkWebApp/ADDMARKS.png]




2.UPDATE MARKS
[]



3.DELETE MARKS
[https://github.com/devika-aradhya/Mark_Management_System/blob/main/MarkWebApp/DELETEMARK.png]



4.DISPLAY MARKS
[https://github.com/devika-aradhya/Mark_Management_System/blob/main/MarkWebApp/DISPLAYMARK.png]
