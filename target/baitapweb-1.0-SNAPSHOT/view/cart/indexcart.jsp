<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Produce</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/cart/cart.css"/>"/>
</head>
<body>

<h1>CD list</h1>
<div class="container">
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th class="center">Description</th>
        <th class="center">Price</th>
        <th>&nbsp;</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${products}">
        <tr>
            <td><c:out value='${product.description}'/></td>
            <td class="center">${product.priceCurrencyFormat}</td>
            <td>
                <form  action="cart" method="post" class="bg-light col text-center" >
                    <input type="hidden" name="productCode"
                           value="${product.code}">
                    <input type="submit" class="btn btn-secondary"  value="Add To Cart">
                </form>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<%--<div class="container">--%>
<%--    <table class="table">--%>
<%--        <thead class="thead-dark">--%>
<%--        <tr>--%>
<%--            <th>Firstname</th>--%>
<%--            <th>Lastname</th>--%>
<%--            <th>Email</th>--%>
<%--            <th></th>--%>
<%--            <th></th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>

<%--        <c:forEach var="user" items="${users}">--%>
<%--            <tr class="table-active">--%>
<%--                <td >${user.firstName}</td>--%>
<%--                <td>${user.lastName}</td>--%>
<%--                <td>${user.email}</td>--%>
<%--                <td><a href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>--%>
<%--                <td><a href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</div>--%>

<h2 id="h2produce">For customer service, please send an email to ${custServEmail}.</h2>
<div class="col text-center"  >

    <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>

</div>
</body>
</html>