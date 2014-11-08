<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTDT HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>JQuery JSON AJAX Example 1 with Servlet</title>
 <script src="scripts/jquery.min.js" language="javascript"></script>
 <link rel="stylesheet" type="text/css" href="styles/index.css"/>
 <script language="javascript">
   $(document).ready(function() {
     $('#submit').click(function(event) {
       var username=$('#user').val();
       $.get('actionServlet',{user:username},function(responseText) {
         $('#welcometext').text(responseText);
       });
     });
   });
 </script>
</head>
<body>
 <form id="frm1">
  <h1>JQuery AJAX Example 1 with Servlet</h1>
  Enter your name:
  <input type="text" id="user"/>
  <input type="button" id="submit" value="Ajax Submit"/><br/><br/>
  <div id="welcometext"></div>
 </form>
</body>
</html>