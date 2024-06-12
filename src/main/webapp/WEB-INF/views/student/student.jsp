<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.ClassRoom" %>
<%@ page import="entity.Students" %>
<html>
<head>
    <%@ include file="/include/head.jsp" %>
</head>
<body>
<%@ include file="/include/navbar.jsp" %>
<h1>Students</h1>
<a href="postStudent">New ClassRoom</a>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Phone</th>
        <th scope="col">Password</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Students> studentsList = (List<Students>) request.getAttribute("students");
        if (studentsList != null) {
            int count = 1;
            for (Students students : studentsList) {
    %>
    <tr>
        <th scope="row"><%= count++ %></th>
        <td><%= students.getName() %></td>
        <td><%= students.getEmail() %></td>
        <td><%= students.getPhone() %></td>
        <td><%= students.getPassword() %></td>
        <td>
            <a href="putStudent?id=<%= students.getId() %>">Edit</a>
            <a href="deleteStudent?id=<%= students.getId() %>">Delete</a>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>
<%@ include file="/include/footer.jsp" %>
<%@ include file="/include/script.jsp" %>
</body>
</html>
