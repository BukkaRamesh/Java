<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Being Java Guys | Spring DI Hello World</title>
<style>
body {
 font-size: 20px;
 color: teal;
 font-family: Calibri;
}

td {
 font-size: 15px;
 color: black;
 width: 100px;
 height: 22px;
 text-align: left;
}

.heading {
 font-size: 18px;
 color: white;
 font: bold;
 background-color: orange;
 border: thick;
}
</style>

<script>  
function validateform(){  
var firstName=document.registration.firstName.value;  
var lastName=document.registration.lastName.value;
var userName=document.registration.userName.value;
var password=document.registration.password.value;
  


if(firstName==null || firstName==""){  
	  alert("firstName can't be blank");  
	  return false;  
}else if(lastName==null || lastName==""){  
	  alert("lastName can't be blank");  
	  return false;  
}else if(userName==null || userName==""){  
  alert("userName can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  
</script>  


</head>
<body>
 <center>
  <br /> <br /> <br /> <b> Registration Form </b> <br />
  <br />
  <div>
   <form:form method="post" action="insert.spring" modelAttribute="user" name="registration" onsubmit="return validateform()">
    <table>
     <tr>
      <td>First Name :</td>
      <td><form:input path="firstName" /></td>
     </tr>
     <tr>
      <td>Last Name :</td>
      <td><form:input path="lastName" /></td>
     </tr>
     <tr>
      <td>User Name :</td>
      <td><form:input path="userName" /></td>
     </tr>
     <tr>
      <td>password :</td>
      <td><form:input path="password" type="password"/></td>
     </tr>
     <tr>
      <td>Gender :</td>
      <td><form:radiobuttons path="gender"
        items="${map.genderList}" /></td>
     </tr>
     <tr>
      <td>City :</td>
      <td><form:select path="city" items="${map.cityList}" /></td>
     </tr>
     <tr>
      <td> </td>
      <td><input type="submit" value="Save" /></td>
      
     </tr>
     <tr>
      
      <!-- <td colspan="2"><a href="getList">Click Here to See User List</a></td> -->
     </tr>
    </table>
   </form:form>
  </div>
 </center>
</body>
</html>