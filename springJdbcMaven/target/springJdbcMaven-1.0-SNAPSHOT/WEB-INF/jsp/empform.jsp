<%-- 
    Document   : empform
    Created on : Aug 21, 2017, 3:22:27 PM
    Author     : Vishal Prasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html> 
    <!--     <style>
            .formfieldset{
                color: #0293FF; /* Blue */
                align: center;
                position: absolute;
                top:30%;
                width : 50%;
                left : 25%;	
                margin-bottom: 10%;
            }
         </style>-->
    <body>
        <%@ include file = "baseTheme.html" %>
        <fieldset class="formfieldset">
            <div class="mui-container-fluid">
                <form:form name="addEmployeeForm" id="addEmployeeForm" method="post" action="save" class="mui-form">  
                    <legend>Add New Employee </legend>
                    <div class="mui-textfield mui-textfield--float-label">
                        <form:input type="text" id="AddEmployeeFullName" path="e_name" />
                        <label>Full Name</label>
                    </div>
                    <div class="mui-textfield mui-textfield--float-label">
                        <form:input type="number" id="AddEmployeeSalary" min="0" step="0.01" path="e_salary" />
                        <label>Salary</label>
                    </div>
                    <div class="mui-textfield mui-textfield--float-label">
                        <form:input type="text" id="AddEmployeeCompany" path="e_company" /> 
                        <label>Company</label>
                    </div>
                    <input type="Button" value="Save" class="mui-btn mui-btn--raised mui-btn--primary" onclick="javascript:validateForm();" />  

                </form:form> 
            </div>
        </fieldset>

    </body>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="resources\css\baseStyle.css">
    <script type="text/javascript" src="resources\css\addNewEmployee.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>

</html>
