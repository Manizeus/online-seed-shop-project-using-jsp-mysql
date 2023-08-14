<%@ page import="Demo.Password"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Document</title>
</head>
<body>

    
    <jsp:useBean id="test" class="Demo.Password" />
   
    <%@ page import="java.sql.*" %>
<%

      String numb=request.getParameter("number");
      session.setAttribute("userNumber",numb);
      String key=request.getParameter("pass");
      
      Password obj= new Password();
      String pas=obj.hashPassword(key);


  Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?characterEncoding=utf8","root","root");

  Statement stmt =con.createStatement();
  
  ResultSet rs=stmt.executeQuery("select * from persons WHERE phoneNuber='"+numb+"'");
    if(rs.next()){
        String name=rs.getString(1);
        session.setAttribute("user",name);
       if(rs.getString(3).equals(pas) && rs.getString(1).equals("superUser")){

           response.sendRedirect("admin.jsp");

       }else if(rs.getString(3).equals(pas)){ 

        response.sendRedirect("opt2.html");

      }else{
%>
<div classs="container p-5">
	<div class="row no-gutters">
		<div class="col-lg-6 col-md-12 m-auto">
			<div class="alert alert-success fade show" role="alert">
				<button onclick="fun()" type="button" class="close" data-dismiss="alert" aria-label="Close">
			    	<span aria-hidden="True">&times;</span>
			  	</button>
			 	<h4 class="alert-heading">wrong password</h4>
			  	<p>check the your password</p>
			</div>
		</div>
	</div>
</div>

<%

      }
      
    }else{
%>
<div classs="container p-5">
	<div class="row no-gutters">
		<div class="col-lg-6 col-md-12 m-auto">
			<div class="alert alert-success fade show" role="alert">
				<button onclick="fun()" type="button" class="close" data-dismiss="alert" aria-label="Close">
			    	<span aria-hidden="True">&times;</span>
                    
			  	</button>
			 	<h4 class="alert-heading">wrong number</h4>
			  	<p>check your number or create new account</p>
			</div>
		</div>
	</div>
</div>
    
<% 
    }
    %>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    function fun(){
        window.open("index.html");
        window.close();
    }
</script>
</body>
</html>
