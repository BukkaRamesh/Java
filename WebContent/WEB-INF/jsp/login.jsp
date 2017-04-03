<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://apis.google.com/js/platform.js" async defer></script>

<!--  ******* Server url ******* -->
 <meta name="google-signin-client_id" content="187111670040-d7tvnvse3tgta4i4vrbnga4pe7620l6m.apps.googleusercontent.com">

<!--  ******* local url ****** -->
<!--  <meta name="google-signin-client_id" content="187111670040-0a6cnb7af5cvr9v27un6oqbpgipfhv7g.apps.googleusercontent.com"> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title>
</head>
<body>
    <form:form name="submitForm" method="POST">
        <div align="center">
            <table>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="userName" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit" /></td>
                </tr>
            </table>
            <div style="color: red">${error}</div>
        </div>
        <div align="center" class="g-signin2" data-onsuccess="onSignIn"></div>
    </form:form>
</body>

	<script>
		function onSignIn(googleUser) {
		  var profile = googleUser.getBasicProfile();
		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
		  console.log('Name: ' + profile.getName());
		  console.log('Image URL: ' + profile.getImageUrl());
		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		    
		  var id_token = googleUser.getAuthResponse().id_token;
		  console.log("ID Token: " + id_token);
		  
		  window.location.href = "success?username=" +profile.getName() + "";
		}
	</script>


</html>
</html>