<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/emailList" var="email"/>
<c:url value="/cart" var="cart"/>
<c:url value="/produce" var="produce"/>
<c:url value="/download" var="download"/>
<c:url value="/sqlgateway" var="sql"/>
<c:url value="/userAdmin" var="use"/>
<c:url value="/userhome" var="useInterface"/>
<!DOCTYPE html>
<html lang="en">
<body>
<div class="list-group">
    <a href="${email}" class="aaa">email</a>
    <a href="${produce}" class="aaa">cart</a>
    <a href="${download}" class="aaa">download</a>
    <a href="${sql}" class="aaa">sql</a>
    <a href="${use}" class="aaa">admin</a>
</div>
</body>

</html>

