

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
    </head>
    <body>
        <br>
        <br>
        <h2 style="text-align: center"> Create User </h2>
        <p style="text-align: center"> Java Hibernate, Servlet, JSP with MySQL </p><hr>
        <br>
        <div style="padding-left: 60%;">
        <form action="userManagment_Controller" method="POST">
            <div class="form-group">
            <input type="submit" name="readUsers" class="btn btn-success" value="View Users"> &nbsp; &nbsp; <br>
            </div>
        </form>
        </div>
        <br>
        <div style="padding-left: 40%; padding-right: 40%;">
        <form action="userManagment_Controller" method="GET">
            <div class="form-group">
                <label> First Name </label>
		<input type="text" name="first_name" class="form-control" />
            </div>
            <div class="form-group">
		<label> Last Name </label>
		<input type="text" name="last_name" class="form-control" />
            </div>
            <div class="form-group">
		<label> Email </label>
		<input type="text" name="email" class="form-control" />
            </div>
            <div class="form-group">
		<label> Telephone </label>
		<input type="text" name="telephone" class="form-control" />
            </div>
            <div class="form-group">
		<input type="submit" name="createUser" class="btn btn-info" value="Insert" />		
            </div>
	</form>
        </div>
    </body>
</html>
