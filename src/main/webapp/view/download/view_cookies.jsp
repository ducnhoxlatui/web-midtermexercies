<%@include file="/common/taglib.jsp" %>
<c:url value="/home" var="home"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/download/download.css"/>"/>
</head>
<body>

<h1>Cookies</h1>

<h2>Here's a table with all of the cookies that this
    browser is sending to the current server.</h2>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th class="center">Name</th>
        <th class="center">Value</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="c" items="${cookie}">
        <tr>
            <td class="center">${c.value.name}</td>
            <td class="center">${c.value.value}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="col text-center">
    <a  class="btn btn-primary" href="download?action=viewAlbums">View list of albums</a>
    <a  class="btn btn-primary" href="download?action=deleteCookies">Delete all persistent cookies</a>
    <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
</div>

</body>
</html>