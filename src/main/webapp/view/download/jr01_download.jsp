<%@include file="/common/taglib.jsp" %>

<c:url value="/home" var="home"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Download Music</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/download/download.css"/>"/>
</head>
<body>

<h1>Downloads</h1>

<h2>Remix Music</h2>

<table class="table">
    <thead class="thead-dark">
    <tr>
        <th class="center">Song title</th>
        <th class="center">Audio Format</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="center">Cry with you</td>
        <td class="center"><a href="/musicStore/sound/${productCode}/filter.mp3">MP3</a></td>
    </tr>
    <tr>
        <td class="center">Faded Face</td>
        <td class="center"><a href="/musicStore/sound/${productCode}/so_long.mp3">MP3</a></td>
    </tr>
    </tbody>
</table>
<div class="col text-center">
    <a  class="btn btn-primary" href="?action=viewAlbums">View list of albums</a>
    <a class="btn btn-primary" href="?action=viewCookies">View all cookies</a>

    <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
</div>

</body>
</html>