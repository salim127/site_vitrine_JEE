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

            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Images</a></li>
            </ul>
        </nav>
    </header> 
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
               
 <form action="insert" method="post">
              
               
                <fieldset class="form-group">
                    <label>Image Name</label>
                    <input type="text"  class="form-control" name="nom" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Image Description</label>
                    <input type="text" class="form-control" name="description">
                </fieldset>

                <fieldset class="form-group">
                    <label>Image Path</label>
                    <input type="text" class="form-control" name="cheminImage">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
