<%
    String name=request.getParameter("name");
    String Email=request.getParameter("email");
    String phone=request.getParameter("phoneNumber");
    out.println("wecome"+name);
%><br>
<%
    out.println("your mail"+Email);
%><br>
<%
    out.println("your phone number"+phone);
 %>