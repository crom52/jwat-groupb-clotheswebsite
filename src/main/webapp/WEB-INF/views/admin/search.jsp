<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Users Search List</h2>
					</div> <br>
					<div class="col-sm-6">
						<a href=<c:url value = "/admin/listUser/1"/> class="btn btn-success"> <span> Go to User List</span></a>
					<br>
					</div>
						
                </div>
            </div>
            
    
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
						
                        <th align="right">ID</th>
                        <th align="right">UserName</th>
						<th align="right">Email</th>
                        <th align="right">Password</th>
                        <th align="right">Active</th>
                        <th align="right">Role</th>
                        
                    </tr>
                </thead>
                	
                <tbody>
                
					<c:forEach items="${result}" var="user" >
					<tr>
					
						<td align="center"><c:out value="${user.id}"></c:out></td>
						<td align="center"><c:out value="${user.userName}"></c:out></td>
						<td align="center"><c:out value="${user.email}"></c:out></td>
						<td align="center"><c:out value="${user.password}"></c:out></td>
						<td align="center"><c:out  value="${user.active}"></c:out></td>
						<td align="center"><c:out value="${user.roleUserEntity.roleName}"></c:out></td>
						
                          <td>  <a href=<c:url value = "/admin/editUser/${user.userName} "/> class="edit"><img src="https://iconsetc.com/icons-watermarks/simple-yellow/raphael/raphael_pensil-edit/raphael_pensil-edit_simple-yellow_512x512.png" width ="20px" height="20px" class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</a> </td>
                          <td>  <a href="delete/${user.id}" class="delete"><img src="https://cdn1.iconfinder.com/data/icons/social-messaging-ui-color/254000/08-512.png" width ="25px" height="25px" class="material-icons"  class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</a>
          			</td>
          			</tr>
				</c:forEach>
		
                </tbody>
                   
            </table>
        </div>
        
    </div>

</body>
</html>