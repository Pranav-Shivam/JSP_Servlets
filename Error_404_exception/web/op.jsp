
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_ex.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //fetch Two no
            int a=Integer.parseInt(request.getParameter("n1"));
            int b=Integer.parseInt(request.getParameter("n2"));
            int c=a/b;
            %>
            <h1>Result is <%= c  %></h1>
    </body>
</html>
