<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>User Admin</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/useradmin/user.css"/>"/>
</head>
<body>

<h1>Users</h1>

<%--<table>--%>

<%--    <tr>--%>
<%--        <th class="center">First Name</th>--%>
<%--        <th class="center">Last Name</th>--%>
<%--        <th class="center" colspan="3">Email</th>--%>
<%--    </tr>--%>
<%--    <c:forEach var="user" items="${users}">--%>
<%--        <tr>--%>
<%--            <td>${user.firstName}</td>--%>
<%--            <td>${user.lastName}</td>--%>
<%--            <td>${user.email}</td>--%>
<%--            <td><a href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>--%>
<%--            <td><a href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>

    <div class="container">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="user" items="${users}">
                    <tr class="table-active">
                        <td >${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td><a href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>
                        <td><a href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
                    </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
<%--</table>--%>
<div class="col text-center"  >
    <button class="btn btn-outline-dark p-2 m-4" ><a href="userAdmin">Refresh</a></button>
    <button class="btn btn-outline-dark p-2 m-4" ><a href="https://ducnhoxlatui.github.io/WebProgramming/">home</a></button>

</div>

</body>
</html>