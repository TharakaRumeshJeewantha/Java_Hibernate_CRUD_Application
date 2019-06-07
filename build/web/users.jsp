

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
        <script>
            $(document).read(function(){
                $("#deleteUser").hide();
                $("#updateUser").hide();
                
                $("#update").click(function(){
                    $("#updateUser").show();
                    $("#deleteUser").hide();
                });
                
                $("#delete").click(function(){
                    $("#deleteUser").show();
                    $("#updateUser").hide();
                });
            });
        </script>
        
        <title>Users</title>
    </head>
    <body>
        <br>
        <br>
        <h2 style="text-align: center">View Users</h2>
        <p style="text-align: center">Java Hibernate, Servlet, JSP with MySQL</p><hr>
        <br>
            
            <div style="padding-left: 60%;">
                <a href="createUser.jsp" class="btn btn-success">+ Add New User</a>
            </div>
            
            <br>
            
            <div style="padding-left: 40%; padding-right: 40%;">
            <form action="userManagment_Controller" method="POST">
                
                <div style="padding-left: 40%;">
                <select name="id">
                    <c:forEach items="${userList}" var="user">
                        <option value="${user.id}">${user.id}</option>
                    </c:forEach>
                </select> &nbsp;&nbsp;
                Update: <input type="checkbox" id="update"> &nbsp;&nbsp;
                Delete: <input type="checkbox" id="delete" onclick="document.getElementById('first_name').disabled=true">
                </div>
                <br>
                
                <div class="form-group">
                <label> First Name </label>
                <input id="first_name" type="text" name="first_name"  class="form-control">
                </div>
                <div class="form-group">
                <label> Last Name </label>
                <input id="last_name" type="text" name="last_name"  class="form-control">
                </div>
                <div class="form-group">
                <label> Email </label>
                <input id="email" type="text" name="email"  class="form-control">
                </div>
                <div class="form-group">
                <label> Telephone </label>
                <input id="telephone" type="text" name="telephone"  class="form-control">
                </div>
                
                <button type="submit" id="updateUser" class="btn btn-warning" name="updateUser"> Update </button>&nbsp;&nbsp;
                <button type="submit" id="deleteUser" class="btn btn-danger" name="deleteUser"> Delete </button>
                
            </form>
            </div>
            
            <br>
            <br>
            
            <table class = "table table-striped table-bordered">
                <tr>
                        <th> ID </th>
			<th> First Name </th>
			<th> Last Name </th>
			<th> Email </th>
			<th> Telephone </th>
		</tr>
                
        <c:forEach var="usr" items="${userList}">    
            <tr>
            <td> ${usr.id} </td>
            <td> ${usr.first_name} </td>
            <td> ${usr.last_name} </td>
            <td> ${usr.email} </td>
            <td> ${usr.telephone} </td>
            </tr>
        </c:forEach>
         
            </table>
            
    </body>
</html>
