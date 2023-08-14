<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

    <%@ page import="java.sql.*" %>
<%

      String Proname=request.getParameter("ProductName");
      String name=request.getParameter("name");
      String kg=request.getParameter("killogram");
      String number=request.getParameter("num");
      String location=request.getParameter("location");
      String price=request.getParameter("price");
      String DT=request.getParameter("D/T");
      String keyy=request.getParameter("key");
      String status="Processing";

      int x=121;
      
try{
  Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?characterEncoding=utf8","root","root");

  PreparedStatement ps=con.prepareStatement("INSERT INTO orders VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)");

  ps.setString(1,Proname);
  ps.setString(2,name);
  ps.setString(3,kg);
  ps.setString(4,number);
  ps.setString(5,location);
  ps.setString(6,price);
  ps.setString(7,DT);
  ps.setString(8,keyy);
  ps.setString(9,status);

  x=ps.executeUpdate();

  if(x>0){
%>
    <div classs="container p-5">
        <div class="row no-gutters">
            <div class="col-lg-6 col-md-12 m-auto">
                <div class="alert alert-success fade show" role="alert">
                    <button onclick="fun()" type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="True">&times;</span>
                      </button>
                     <h4 class="alert-heading">Success</h4>
                      <p>order placed :)</p>
                </div>
            </div>
        </div>
    </div>
<%

  }else{
%>
<div classs="container p-5">
    <div class="row no-gutters">
        <div class="col-lg-6 col-md-12 m-auto">
            <div class="alert alert-success fade show" role="alert">
                <button onclick="fun()" type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="True">&times;</span>
                  </button>
                 <h4 class="alert-heading">order failed</h4>
                  <p>retry :(</p>
            </div>
        </div>
    </div>
</div>
<%
  }

  }catch(Exception e){
  out.print(e);
  }
    %>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>
        function fun(){
            window.close();
            window.open("ecom.html");
            
        }
    </script>
</body>
</html>
