<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cart</title>
    <link rel="stylesheet" href="<c:url value="/template/asset/cart/cart.css"/>"/>
</head>
<body>
<h1>Your cart</h1>
<div class="container">
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th class="center">Quantity</th>
        <th class="center">Description</th>
        <th class="center">Price</th>
        <th class="center">Amount</th>
        <th></th>
    </tr>
    </thead>
    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>
                <form  action="" method="post" class="bg-light col text-center">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type=text name="quantity"
                           value="<c:out value='${item.quantity}'/>"
                           id="quantity">
                    <input class="btn btn-secondary" type="submit" value="Update">
                </form>
            </td>
            <td><c:out value='${item.product.description}'/></td>
            <td class="center">${item.product.priceCurrencyFormat}</td>
            <td class="center">${item.totalCurrencyFormat}</td>
            <td class="center">
                <form  action="" method="post" class="bg-light col text-center">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="hidden" name="quantity" value="0">
                    <input class="btn btn-secondary"  type="submit" value="Remove Item">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
<h2 id="h2cart"><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</h2>
<div class="col text-center" >

    <a class="btn btn-primary" href="<c:url value="/produce"/>">Continue Shopping</a>

    <a class="btn btn-primary" href="https://ducnhoxlatui.github.io/WebProgramming/">Home</a>
</div>



</body>
</html>