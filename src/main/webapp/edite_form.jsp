<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="DAO.ImageDAO" %>
<%@ page import="modal.Image" %>

<%
    // Retrieve image ID from the request
    String imageIdParam = request.getParameter("id");
    int imageId = Integer.parseInt(imageIdParam);

    // Retrieve image data for editing
    ImageDAO imageDAO = new ImageDAO();
    Image imageToEdit = imageDAO.selectImage(imageId);
%>

<html>
<head>
    <!-- Include necessary CSS or Bootstrap if needed -->
    <title>Edit Image</title>
</head>
<body>

   <form action="<%= request.getContextPath() %>/update" method="post">
    <!-- Hidden field to store image ID for updating -->
    <input type="hidden" name="id" value="<%= imageToEdit.getId() %>">

    <fieldset class="form-group">
        <label for="nom">Image Name</label>
        <input type="text" class="form-control" name="nom" value="<%= imageToEdit.getNom() %>" required="required">
    </fieldset>

    <fieldset class="form-group">
        <label for="description">Image Description</label>
        <input type="text" class="form-control" name="description" value="<%= imageToEdit.getDescription() %>">
    </fieldset>

    <fieldset class="form-group">
        <label for="cheminImage">Image Path</label>
        <input type="text" class="form-control" name="cheminImage" value="<%= imageToEdit.getCheminImage() %>">
    </fieldset>

    <button type="submit" class="btn btn-primary">Update</button>
</form>


</body>
</html>
