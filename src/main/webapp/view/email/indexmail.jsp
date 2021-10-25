<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/thanks" var="thanks"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Email</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/email/email.css"/>"/>

</head>
<body>
<h1 id="hat1">Join our email list</h1>
<h2>To join our email list, enter your name and email address below.</h2>

<form action="${thanks}" method="post" style="max-width: 600px;margin:0 auto" class="bg-light" >
    <input type="hidden" name="action" value="add">
    <div class="border border-primary rounded p-3">
<%--        <input type="hidden" name="action" value="add">--%>
        <div class="form-group row">

            <label class="col-sm-4 col-form-label">Email:</label>
            <div class="col-sm-4 ">
                <input class="form-control" type="email" name="email" value="${user.email}"><br>
            </div>

        </div>
        <div class="form-group row">
        <label class="col-sm-4 col-form-label">First Name:</label>
            <div class="col-sm-4 ">
        <input class="form-control" type="text" name="firstName" value="${user.firstName}"><br>
            </div>
        </div>

        <div class="form-group row">
        <label class="col-sm-4 col-form-label">Last Name:</label>
        <div class="col-sm-4 ">
            <input class="form-control" type="text" name="lastName" value="${user.lastName}"><br>
        </div>
        </div>
        <div class="divsp">
            <input type="submit" value="Join Now" class="btn btn-primary">
            <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
        </div>
    </div>
    </div>
</form>
<%--<form id="rreturnhome" action="" method="post">
    <input type="hidden" name="action" value="back">
    <input type="submit" value="Home">
</form>--%>
</body>
</html>