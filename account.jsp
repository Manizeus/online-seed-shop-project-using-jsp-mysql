<%@ page import="Demo.Password"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <%@ page import="java.sql.*" %>
<%

      String name=request.getParameter("Name");
      session.setAttribute("userName",name);
      String num=request.getParameter("num");
      String pass=request.getParameter("password");

      Password obj= new Password();
      String pas=obj.hashPassword(pass);
      int x=121;
      
try{
  Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?characterEncoding=utf8","root","root");

  PreparedStatement ps=con.prepareStatement("INSERT INTO persons VALUES ( ?, ?, ?)");

  ps.setString(1,name);
  ps.setString(2,num);
  ps.setString(3,pas);

  x=ps.executeUpdate();

  if(x>0){

  response.sendRedirect("index.html");

  }else{
    out.print("sorry");
  }

  }catch(Exception e){
  out.print(e);
  }
    %>
</body>
</html>
