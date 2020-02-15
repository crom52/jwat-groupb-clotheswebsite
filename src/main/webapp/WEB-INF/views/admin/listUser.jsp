


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Users List</h2>
					</div> <br>
					<div class="col-sm-6" align = "left">
						<a href=<c:url value = "/admin/listProduct/1"/> class="btn btn-success"> <span>Go to Products List</span></a>
					<br>
					</div>
					<div class="col-sm-6">
						<a href=<c:url value = "/admin/adduser"/> class="btn btn-success"><i class="material-icons">&#xE147;</i> <span> Add New User</span></a>
					<br>
					</div>
					
						
                </div>
            </div>
            <form method="POST" action="search" >

        Username or Email  <input  type="text" name="keyword" id="keyword" >
  					<input type ="submit" value="Search" >
    </form>
    
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
                
					<c:forEach items="${listUser}" var="user" >
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
        <c:forEach items = "${listPage}" varStatus ="listPage">
<div align = "center" class="pagination">
  <a href="${listPage.index+1}" class="active">${listPage.index+1}</a>
   </div>
</c:forEach>
    </div>

</body>
</html>                                		                            