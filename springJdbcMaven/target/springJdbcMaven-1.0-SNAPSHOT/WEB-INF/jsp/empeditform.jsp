<%-- 
    Document   : empeditform
    Created on : Aug 21, 2017, 3:25:32 PM
    Author     : Vishal Prasad
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ include file = "baseTheme.html" %>

<body>
    <h1>Edit Employee</h1>  
    <fieldset class="formfieldset>"
              <form:form method="post" action="springJdbcMaven/editsave" class="mui-form" name="editEmployeeForm" id="editEmployeeForm">    

                  <form:hidden  path="e_id" />
                  <legend>Edit Employee </legend>
                  <div class="mui-textfield mui-textfield--float-label">
                      <form:input type="text" id="editEmployeeFullName" path="e_name" />
                      <label>Full Name</label>
                  </div>
                  <div class="mui-textfield mui-textfield--float-label">
                      <form:input type="number" id="editEmployeeSalary" min="0" step="0.01" path="e_salary" />
                      <label>Salary</label>
                  </div>
                  <div class="mui-textfield mui-textfield--float-label">
                      <form:input type="text" id="editEmployeeCompany" path="e_company" /> 
                      <label>Company</label>
                  </div>
                  <input type="Button" value="Update" onClick="javascript:document.getElementById('editEmployeeForm').submit();">

              </form:form>  
    </fieldset>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="resources\css\baseStyle.css">
    <script type="text/javascript" src="resources\css\addNewEmployee.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>
</body>