<%@include file="/common/taglib.jsp" %>
<c:url value="/sqlgateway" var="sql"/>
<c:url value="/home" var="home"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 120%;
            display: block;
        }
        h1 {
            font-size: 300%;
            margin-top: 30px;
            text-align: center;
            color: teal;
            margin-bottom: 10px;
        }
        h2 {
            font-size: 120%;
            color: #000000;
            margin-bottom: 50px;
            text-align: center;
        }
        #formmmmm{
            border: 5px solid black;
            background-color: #35e058;
            position: absolute;
            left: 10%;
            width: 550px;
            height: 300px;
        }
        label {
            float: left;
            width: 7em;
            margin-bottom: 0.5em;
            font-weight: bold;
        }
        table{
            float: right;
        }
        input[type="text"], input[type="email"] {  /* An attribute selector */
            width: 15em;
            margin-left: 0.5em;
            margin-bottom: 0.5em;
        }
        span {
            margin-left: 0.5em;
            margin-bottom: 0.5em;
        }
        br {
            clear: both;
        }

        /* The styles for the classes */
        .pad_top {
            padding-top: 0.25em;
        }
        .margin_left {
            margin-left: 0.5em;
        }

        /* The styles for the tables */
        table {
            border: 1px solid black;
            border-collapse: collapse;
            width: 500px;
            height: auto;
        }
        th, td {
            border: 1px solid black;
            text-align: left;
            padding: .5em;
        }
        .right {
            text-align: right;
        }
        #sqlkq{
            margin-left: 50%;
        }
        .pee{
            display: flex;
            /*justify-content: space-between;*/
        }
        textarea{
            max-width: 500px;
            max-height: 200px;
            margin-left: 20px;
            margin-top: 20px;
        }
        #rreturnhome{
            display: flex;
            margin-left: 30%;
            margin-top: 25%;
            width: 100px;
            background-color: #ffffff;
        }
        #exxxxce{
            margin-left: 40%;
            width: 90px;
            height: 40px;
            text-align: center;
            background-color: #f8ead5;
            border: 1px solid #363434;
        }
        .divvvv{
            display: flex;
            margin-left: -10%;
            margin-top: 10px;
        }
        .aaaaaa{
            border: 1px solid #363434;
            padding: 5px;
            color: black;
            margin-left: 50px;

            background-color: #f8ead5;
            width: 90px;
            height: 40px;
            text-align: center;
        }
    </style>
    <meta charset="utf-8">
    <title>SQL Gateway</title>
</head>
<body>
<%--<c:if test="${sqlStatement == null}">--%>
<%--    <c:set var="sqlStatement" value="select * from nguoidung" />--%>
<%--</c:if>--%>

<h1>The SQL Gateway</h1>
<h2>Enter an SQL statement and click the Execute button.</h2>

<div>
    <p style="text-align: center" ><b>SQL statement:</b></p>
</div>

<form  action="${sql}" method="post" style="max-width: 600px;margin:0 auto" class="bg-light" >
    <div class="border border-primary rounded p-3">
        <div class="form-group row">
    <textarea name="sqlStatement" cols=200px rows="8">${sqlStatement}</textarea>
    <br>
    <div class="col text-center">
        <input class="btn btn-primary m-2" type="submit" value="Execute">
        <a class="btn btn-primary m-2" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
    </div>
    </div>
    </div>
</form>

<div  >
    <p style="text-align: center" ><b>SQL result:</b></p><br>
    <div class="col-sm-8 " style="max-width: 600px;margin:0 auto">
        ${sqlResult}
    </div>

</div>


<%--<form id="rreturnhome" action="${home}" method="post">
    <input type="hidden" name="action" value="back">
    <input type="submit" value="Home">
</form>--%>
</body>
</html>