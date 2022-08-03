

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <%
            if(session.getAttribute("username")== null)
            {
            response.sendRedirect("login.jsp");
        }
            %>
            welcome ${username}
            <a href="video.jsp">Video here</a>
            <form action="Logout">
                <input type="submit" value="Logout">
            </form>
    </body>
</html>
