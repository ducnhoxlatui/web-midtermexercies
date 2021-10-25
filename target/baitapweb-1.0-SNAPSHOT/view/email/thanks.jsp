<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thanks</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/email/email.css"/>"/>
</head>
<body>
<h1>Thanks for joining our email list</h1>
<h2>Here is the information that you entered:</h2>
<form action="" method="get" style="max-width: 600px;margin:0 auto" class="bg-light">
    <div class="border border-primary rounded p-3">
    <div class="div-thanks">
        <input type="hidden" name="action" value="back"> <%-- //join--%>
        <label class="thanks-nd">Email:</label>
        <span class="thanks-nd">${user.email}</span><br>
        <label class="thanks-nd">First Name:</label>
        <span class="thanks-nd">${user.firstName}</span><br>
        <label class="thanks-nd">Last Name:</label>
        <span class="thanks-nd">${user.lastName}</span><br>

        <div class="col text-center">
        <a class="btn btn-primary " href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
        </div>
    </div>
    </div>

</form>
</body>
</html>
