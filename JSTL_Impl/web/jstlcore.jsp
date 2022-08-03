<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Core</title>
    </head>
    <body>
        <h1>this is JSTL Example</h1>
        <c:set var="i" value="12" scope="application"></c:set>
        <c:out value="${i}"></c:out>
        <c:remove var="i"></c:remove>
            <hr>
            <!-- Conditional Statement--->
        <c:set var="n" value="150" scope="application"></c:set>
        <c:if test="${n>15}">
            <<h1>This condition is true</h1>
        </c:if>
        <hr>
        <c:choose>
            <c:when test="${n>0}">
                <p>This is +ve no.</p>
            </c:when>
            <c:when test="${n<0}">
                <p>This is -ve no.</p>
            </c:when>
            <c:otherwise>
                <p>This ia zero 0 means laddu</p>
            </c:otherwise>
        </c:choose>
        <hr><!-- For loop -->
        <c:forEach var="j" begin="1" end="10">
            <p>value for j is <c:out value="${j}"></c:out></p>
        </c:forEach>
            <hr><!-- ReDirecting  -->
        <c:url var="myurl" value="https://www.google.co.in/search" >
            <c:param name="q" value="Pranav Singh Tomar "></c:param>
        </c:url> 
            <<h2><c:out value="${myurl}"></c:out></h2>
        <c:redirect url="${myurl}" ></c:redirect>
    </body>
</html>
