<%@include file="/common/taglib.jsp" %>
<c:url value="/home" var="home"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Download</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/download/download.css"/>"/>
</head>
<body>

<h1>List of albums</h1>

<div class="container col text-center" style="max-width: 600px;margin:0 auto">
    <br>
    <div class="list-group">
    <a href="download?action=checkUser&amp;productCode=8601" class="list-group-item list-group-item-action list-group-item-primary">
        You from yesterday - Falling Cry
    </a>

    <a href="download?action=checkUser&amp;productCode=pf01" class="list-group-item list-group-item-action list-group-item-secondary">
        Where home you now- Amee
    </a>

    <a href="download?action=checkUser&amp;productCode=pf02" class="list-group-item list-group-item-action list-group-item-success">
        Gone- Rose
    </a>

    <a href="download?action=checkUser&amp;productCode=jr01" class="list-group-item list-group-item-action list-group-item-danger">
        Remix Music
    </a>

    </div>
</div>

<div  class="col text-center m-4" >
    <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
<h2>Select each product for more information</h2>
</div>

</body>
</html>