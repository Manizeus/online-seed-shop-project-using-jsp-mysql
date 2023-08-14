<%
String num=request.getParameter("num");
%>
<%
if(num.equals("5185")){
    response.sendRedirect("ecom.html");
}else{
    out.println("wrong pass");
}
%>