<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <style>
        #addEmployeeCard{
            color: #0293FF; /* Blue */
            align: center;
            position: absolute;
            top:30%;
            width : 20%;
            left : 25%;	
            margin-bottom: 10%;
        }
        #viewEployeeCard{
            color: #0293FF; /* Blue */
            align: center;
            position: absolute;
            top:30%;
            width : 20%;
            right : 25%;	
            margin-bottom: 10%;
        }
    </style>
    <body>
        <%@ include file = "\WEB-INF\jsp\baseTheme.html" %> 
        <fieldset id='addEmployeeCard'>
        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="https://cdn4.iconfinder.com/data/icons/pretty_office_3/256/Add-Male-User.png" height="50%" width="50%" align="center">
            </div>
            <div class="card-content">
                <span class="card-title activator grey-text text-darken-4"align="center">Add Employee</span><br><br>
                <p><a href="empform" id="link">Click Here</a></p>
            </div>
        </div>
    </fieldset>
        
        <fieldset id='viewEployeeCard'>
        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="http://www.etab.ac-caen.fr/cornu/contact.png?v=267qyogztpz7an" height="50%" width="50%" align="center">
            </div>
            <div class="card-content">
                <span class="card-title activator grey-text text-darken-4" align="center">View Employees</span><br><br>
                <p><a href="viewemp" id="link">Click Here</a></p>
            </div>
        </div>
        </fieldset>
    </body>
</html>
