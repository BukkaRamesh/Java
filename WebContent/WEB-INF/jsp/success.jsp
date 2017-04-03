<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
 
<!--  ******* Server url ******* -->
 <meta name="google-signin-client_id" content="187111670040-d7tvnvse3tgta4i4vrbnga4pe7620l6m.apps.googleusercontent.com">

<!--  ******* local url ****** -->
<!-- <meta name="google-signin-client_id" content="187111670040-0a6cnb7af5cvr9v27un6oqbpgipfhv7g.apps.googleusercontent.com"> -->


<title>Success Form</title>
</head>
<body>
	<font color="green"><h1>Hello</h1></font>
	<h2>${msg}</h2> 
	
	
	<td colspan="2"><a href="getList">Click Here to See User List</a></td></br>
	<!-- <td colspan="2"><a href="register">Click Here to See User List</a></td> -->
	
	<a href="login" onclick="signOut();">Sign out</a>
		
	<script>
	  function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	    	gapi.auth2.getAuthInstance().disconnect();
	    	//gapi.auth2.setToken(null);
	        //gapi.auth2.signOut();
	      console.log('User signed out.');
	    });
	  }
	  
	  function onLoad() {
	      gapi.load('auth2', function() {
	        gapi.auth2.init();
	      });
	    }
	</script>
</body>
</html>