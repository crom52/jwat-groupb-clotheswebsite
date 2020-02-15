<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

        <form:form method="POST" action="saveNewUser" modelAttribute="user">
              <div class="container" style="font-size:20px;color:black">
		<div class="table-wrapper" style="background-color:transparent" >
			<div class="table-title" style="background-color:#7bf272">
				<div class="row" >
					<div class="col-sm-6" >
						<h2 >Add User</h2>
					</div>
					<br>
				

				</div>

			</div>
		</div >
             <table>
     	
 				<tr>
                    <td><form:label path="userName" required="required">User Name</form:label></td>
                    <td><form:input path="userName" required="required"/></td>
                </tr> 
                <tr>
                    <td><form:label required="required" type = "email" path="email">Email</form:label></td>
                    <td><form:input required="required" type = "email" path="email"/></td>
                </tr>
                 <tr>
                    <td><form:label required="required" path="password">Password</form:label></td>
                    <td><form:input pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                     required="required" path="password"/></td>
                </tr>
                 <tr>
                    <td><form:label required="required" path="active">Active</form:label></td>
                    <td>
                     <form:radiobutton path= "active" value = "1" label = "Active" required="required"/>
                    <form:radiobutton path= "active" value = "0" label = "Inactive" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td><form:label required="required" path="roleUserEntity.id">Role User ID</form:label></td>
                   <td>
                    <form:radiobutton path= "roleUserEntity" value = "1" label = "Admin" required="required"/>
                    <form:radiobutton path= "roleUserEntity" value = "2" label = "Customer" required="required"/>
                    </td>
                </tr>
                </table>
               
                	<div class="modal-footer" style = "	text-align: left;">

						<input type="submit" class="btn btn-info" value="Save">  
						<a href="#" onclick="history.go(-1)"> <input type="button" class="btn btn-default"  value="Cancel"> 	
						</a>
						
							
					</div>
       	</div> 
        </form:form>

</body>
</html>