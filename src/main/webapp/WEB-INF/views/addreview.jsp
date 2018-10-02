<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Add Review</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link rel="stylesheet" href="/resources/css/stylebootstrap.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</head>
<body>

<jsp:include page="menu.jsp"/>

<div class="container">
    <sf:form action="/titles/${idTitle}/addreview" method="post" modelAttribute="review">
        <div>
            <sf:label path="reviewName">Review Name</sf:label>
            <sf:input path="reviewName" cssStyle="color: black"/>
            <sf:errors path="reviewName" cssStyle="color: red"/>
        </div>
        <div>
            <sf:label path="text">Text</sf:label>
            <sf:textarea path="text" cssStyle="color: black"/>
            <sf:errors path="text" cssStyle="color: red"/>
        </div>
        <div>
            <sf:label path="mark">Mark</sf:label>
            <sf:input path="mark" cssStyle="color: black"/>
            <sf:errors path="mark" cssStyle="color: red"/>
        </div>
        <input style="color: black" type="submit" name="addreview" value="COMMENT">
    </sf:form>
</div>


</body>
</html>