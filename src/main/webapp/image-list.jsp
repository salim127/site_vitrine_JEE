<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page import="DAO.ImageDAO" %>
<%@ page import="modal.Image" %>

<% 
    if (session.getAttribute("name") == null) {
        response.sendRedirect("loginAdmin.jsp");
    }
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Image Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="<%=request.getContextPath()%>/list" class="navbar-brand"> Image Management App </a>
            <a href="contactList.jsp" class="navbar-brand"> list des contact</a>
        </div>
    </nav>
</header>
<br>

<div class="row">
    <div class="container">
        <h3 class="text-center">List of Images</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Image</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Image Path</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
          <% 
    ImageDAO imageDAO = new ImageDAO();
    List<Image> images = imageDAO.selectAllImages();
    for (Image image : images) {
%>
    <tr>
        <td><%= image.getId() %></td>
        <td><%= image.getNom() %></td>
        <td><%= image.getDescription() %></td>
        <td>
            <img src="<%= image.getCheminImage() %>" alt="Image" style="max-width: 100px;"/>
        </td>
        <td>
            <a href="<%= request.getContextPath() %>/edit?id=<%= image.getId() %>">Edit</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<%= request.getContextPath() %>/delete?id=<%= image.getId() %>">Delete</a>
        </td>
    </tr>
<% 
    }
%>

            </tbody>
        </table>
    </div>
</div>

</body>
</html>
