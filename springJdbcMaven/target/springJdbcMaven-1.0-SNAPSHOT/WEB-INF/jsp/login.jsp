<%-- 
    Document   : login
    Created on : Aug 28, 2017, 9:27:57 PM
    Author     : Vishal Prasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : login
    Created on : Aug 23, 2017, 2:59:19 PM
    Author     : anants
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
    <%@ include file = "baseTheme.html" %>
        <div class="container  center" style="height:650px">
            <div class="center" style="padding:0px 300px 0px 300px">
                <h3>Login</h3>  
                <form method="post" action="login">    
                    <table >      
                        <tr>    
                            <td>User Name : </td>   
                            <td><input type='text' name="username"  /></td>  
                        </tr>    
                        <tr>    
                            <td>Password :</td>    
                            <td><input type='password' name="password" /></td>  
                        </tr>   
                        <tr>    
                            <td> </td>    
                            <td>
                                <button class="waves-effect waves-light btn" type="submit" name="action">Sign In</button>
                            </td>    
                        </tr>    
                    </table>    
                </form>    
            </div>
            <h5>
                <% try {
                        if (!request.getAttribute("error").equals("")) {
                            out.println(request.getAttribute("error"));
                        }
                    } catch (Exception e) {
                    }%>
            </h5>
            <h5>
                <% try {
                        if (!request.getAttribute("msg").equals("")) {
                            out.println(request.getAttribute("msg"));
                        }
                    } catch (Exception e) {
                    }%>
            </h5>
        </div>

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
    </body>
</html>
