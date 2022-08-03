<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Functions</title>
    </head>
    <body>
        <h1>Function page</h1>
        <c:set var="name" value="Pranav Shivam" ></c:set>
        <h2><c:out value="${name}"></c:out></h2>
        <<h3>Length of name is  ${fn:length(name)} </h3>
        <br><!-- comment -->
        <c:out value="${fn:toLowerCase(name)}"></c:out>
        <br><!-- comment -->
        <c:out value="${fn:contains(name,'Shiv')}"></c:out>
    </body>
</html>
