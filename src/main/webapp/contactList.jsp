<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.ContactDAO" %>
<%@ page import="modal.Contact" %>

<html>
<head>
    <title>Contact List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/image-list.jsp">Image List</a>
        <a class="navbar-brand" href="#">Contact List</a> <!-- Nouveau lien pour la liste des contacts -->
    </nav>
</header>
<br>

<div class="row">
    <div class="container">
        <h3 class="text-center">List of Contacts</h3>
        <hr>
        <div class="container text-left">
            
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th> 
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Message</th>
                    <th>Action</th> 
                </tr>
            </thead>
            <tbody>
                <% 
                ContactDAO contactDAO = new ContactDAO();
                List<Contact> contacts = contactDAO.getAllContacts();
                for (Contact contact : contacts) {
                %>
                <tr>
                    <td><%= contact.getId() %></td> <!-- Afficher l'ID -->
                    <td><%= contact.getName() %></td>
                    <td><%= contact.getEmail() %></td>
                    <td><%= contact.getPhone() %></td>
                    <td><%= contact.getMessage() %></td>
                    <td>
                        <form action="DeleteContactServlet" method="post">
                            <input type="hidden" name="contactId" value="<%= contact.getId() %>"> <!-- Utiliser l'ID pour la suppression -->
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
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
