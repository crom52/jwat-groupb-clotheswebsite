<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<%-- <body>
	<h1>Edit User </h1>
	
        <form:form method="POST" action="saveEditUser" modelAttribute= "userEditForm">
        
  
		
						 <table>				
						  
                  </table>
      
               
				
				
	
					<div class="modal-footer" style = "	text-align: left;">

						<input type="submit" class="btn btn-info" value="Save">  
						<a onclick="history.go(-1)"> <input type="button" class="btn btn-default"  value="Cancel"> 	
						</a>
						
							
					</div>
						
        
       
     
             
           <!--     
                
                <tr>
                    <td><input type="submit" value="Save"/></td>
                </tr>
               -->
        </form:form>
        

</body> --%>
<body>
	
	
       
        	 <form:form modelAttribute = "userEditForm"  method="POST" action="saveEditUser">
        
        <div class="container" style="font-size:20px;color:black">
		<div class="table-wrapper" style="background-color:transparent" >
			<div class="table-title" style="background-color:#cf6777">
				<div class="row" >
					<div class="col-sm-6" >
						<h2 >Edit User</h2>
					</div>
					<br>
				

				</div>

			</div>
		</div >
             <table>
     	
 				<tr>
                    <td><form:label path="userName">User Name : ${userName}</form:label></td>
                    <td><form:hidden path="userName"/></td>
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
                     <form:radiobutton path= "active" value = "1" label = "Active"/>
                    <form:radiobutton path= "active" value = "0" label = "Inactive"/>
                    </td>
                </tr>
                <tr>
                    <td><form:label required="required" path="roleUserEntity.id">Role User ID</form:label></td>
                   <td>
                    <form:radiobutton path= "roleUserEntity.id" value = "1" label = "Admin"/>
                    <form:radiobutton path= "roleUserEntity.id" value = "2" label = "Customer"/>
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