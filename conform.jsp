
<%@ page import="java.sql.*" %>
<%
                                                
                                            
              String keyvalue=request.getParameter("prokey");
              String kk="order deliverd"; 
              int x=121;           
              try{
                Class.forName("com.mysql.jdbc.Driver");
              
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users?characterEncoding=utf8","root","root");

                
                PreparedStatement ps=con.prepareStatement("UPDATE orders SET ProductStatus= ? WHERE ProductKey='"+keyvalue+"'");
                ps.setString(1,kk);
                x=ps.executeUpdate();
              
                if(x>0){
              
                response.sendRedirect("admin.jsp");
              
                }else{
                  out.print("sorry");
                }
              
                }catch(Exception e){
                out.print(e);
                }
                  %>