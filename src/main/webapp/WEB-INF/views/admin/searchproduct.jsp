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
						<h2>Product Search List</h2>
					</div> <br>
					<div class="col-sm-6">
						<a href=<c:url value = "/admin/listProduct/1"/> class="btn btn-success"> <span> Go to Products List</span></a>
					<br>
					</div>
						
                </div>
            </div>
            
 
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
            <th  align="center">Image</th>
            <th  align="center">ID</th>
            <th  align="center">Name</th>
            <th align="center" >Amount</th>
            <th  align="center">Price</th>
            <th  align="center">Promotion</th>
            
        </tr>
                </thead>
                	
                <tbody>
                
					 <c:forEach items="${result}" var="product">
        <tr>
            <td align="center" width ="70px" height="70px"><img width="50" height="50" src="${product.url1}" /></td>
            <td align="center" width ="30px">${product.id}</td>
            <td align="center">${product.name}</td>
            <td align="center">${product.amount}</td>
            <td align="center" width ="100px">${product.price}</td>
            <td align="center">${product.promotion}</td>
            
              <td>
					<a href=<c:url value = "/admin/editProduct/${product.id} "/> class="edit"><img src="https://iconsetc.com/icons-watermarks/simple-yellow/raphael/raphael_pensil-edit/raphael_pensil-edit_simple-yellow_512x512.png" width ="20px" height="20px" class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</a>
                    <a href="delete/${product.id}" class="delete"><img src="https://cdn1.iconfinder.com/data/icons/social-messaging-ui-color/254000/08-512.png" width ="25px" height="25px" class="material-icons"  class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</a>
			</td>
        </tr>
      
        </c:forEach>
		
                </tbody>
                   
            </table>
        </div>

    </div>
</body>
</html>