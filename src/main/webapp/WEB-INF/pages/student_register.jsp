<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="stag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">
   .container
   {
      background-color: #E1E8ED; 
      padding: 20px;
      border-radius: 10px;
      font-size: 20px;
      margin-left: 600px;
      margin-right: 600px;
      border:1px solid blue;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      
   }
   td
   {
      padding-top:10px;
      padding-left: 10px;
   }
   .sub
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: green;
   }
   .can
   {
     width:120px;
     height:30px;
     color:white;
     border: none;
     border-radius: 5px;
     background-color: maroon;
     margin-left: 20px;
      
   }
   h1
   {
      color:red;
      text-align: center;
   }
   #idType,#department
   {
     width:170px;
     height: 20px;
     text-align: center;
   }
   select:hover,input:hover
   {
      border: 1px solid red;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      border-radius: 3px;
   }
   center
   {
      padding-top: 20px;
   }
</style>
</head>
<body>

 <h1>Student Registration Form</h1>
 <hr>
 <stag:form action="register" method="post" class="container" modelAttribute="stud">
 <table align="center">
   <tr>
     <td>Sno</td>
     <td><stag:input type="text" name="sno" path="sno"/></td>
   </tr>
   <tr>
     <td>Name</td>
     <td><stag:input type="text" name="sname" path="sname"/></td>
   </tr>
   <tr>
     <td>Address</td>
     <td><stag:input type="text" name="saddr" path="saddr"/></td>
   </tr>
 </table>
 <center>
        <input type="submit" value="Register" class="sub">
        <input type="reset" value="Reset" class="can">
 </center>
 </stag:form>
</body>
</html>