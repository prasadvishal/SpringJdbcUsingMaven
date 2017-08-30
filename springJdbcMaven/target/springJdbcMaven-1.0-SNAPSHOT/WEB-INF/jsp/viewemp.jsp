<%-- 
    Document   : viewemp
    Created on : Aug 21, 2017, 3:27:48 PM
    Author     : Vishal Prasad
--%>

   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   <%@ include file = "baseTheme.html" %>
<h1>Employees List</h1> 

<fieldset class="formfieldset">
    
<table class="striped">  
<tr><th>Id</th><th>Name</th><th>Salary</th><th>Company</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.e_id}</td>  
   <td>${emp.e_name}</td>  
   <td>${emp.e_salary}</td>  
   <td>${emp.e_company}</td>  
   <td><a href="editemp/${emp.e_id}">Edit</a></td>  
   <td><a href="deleteemp/${emp.e_id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table> 
</fieldset>
   <br/>  
   <a href="empform" style="align-content: center" >Add New Employee</a>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="resources\css\baseStyle.css">
    <script type="text/javascript" src="resources\css\addNewEmployee.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>
