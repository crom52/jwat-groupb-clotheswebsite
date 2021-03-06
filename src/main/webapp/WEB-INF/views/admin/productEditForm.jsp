<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	
	
        <form:form modelAttribute = "productEditForm"  method="POST" action="saveEditProduct">
        
        <div class="container" style="font-size:20px;color:black">
		<div class="table-wrapper" style="background-color:transparent" >
			<div class="table-title" style="background-color:#cf6777">
				<div class="row" >
					<div class="col-sm-6" >
						<h2 >Edit Product</h2>
					</div>
					<br>
				

				</div>

			</div>
		</div >
	
             <table>
     			<tr>
                    <td><form:label path="id"> Product id ${id} </form:label></td>
                    <td><form:hidden path="id"/></td>
                </tr>
                <tr>
                    <td><form:label path="name"> Name</form:label></td>
                    <td><form:input path="name" required="required" /></td>
                </tr>
                <tr>
                    <td><form:label path="url1" >Image</form:label></td>
                    <td><form:input type="file" id = "fileUpload" path="url1" required="required"  /></td>
                   
                </tr>
                 <tr>
                    <td><form:label path="amount">Amount</form:label></td>
                    <td><form:input  type="number" path="amount" required="required" /></td>
                </tr>
                 <tr>
                    <td><form:label path="price">Price</form:label></td>
                    <td><form:input type="number" path="price" required="required" /> </td>
                </tr>
                <tr>
                    <td><form:label path="promotion">Promotion </form:label></td>
                    <td><form:input  type="number" maxlength="3" min = "0" max = "100" required="required" path="promotion"/></td>
                </tr>

                </table>
                	<div class="modal-footer" style = "	text-align: left;">

						<input type="submit" class="btn btn-info" value="Save">  
						<a href="#" onclick="history.go(-1)"> <input type="button" class="btn btn-default"  value="Cancel"> 	
						</a>
						
							
					</div>
       	</div> </form:form>

</body>
<script type="text/javascript">

    $(function()
    {
        $('#fileUpload').on('change',function ()
        {
            var filePath = $(this).val();
            console.log(filePath);
        });
    });

</script>
</html>