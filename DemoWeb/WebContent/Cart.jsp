<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="web.*" %>
<%@ page import="Dao.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User1 auth = (User1) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = new ArrayList<>();
double total = 0.0;
if (cartList != null && !cartList.isEmpty()) {
    ProductDao pDao = new ProductDao(DbCon.getConnection());
    cartProduct = pDao.getCartProducts(cartList); // Method to fetch cart products from database
    total = pDao.getTotalCartPrice(cartList); // Method to calculate total price of cart
    request.setAttribute("total", total);
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Heavenly Cakes</title>
    <style type="text/css">
        .table tbody td {
            vertical-align: middle;
        }
        .btn-incre, .btn-decre {
            box-shadow: none;
            font-size: 25px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="myphoto.jsp">Heavenly Cakes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="myphoto.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Cart.jsp">Cart <span class="badge badge-danger"><%= cartList != null ? cartList.size() : 0 %></span> </a></li>
                <%
                if (auth != null) {
                %>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
                <li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
                <%
                } else {
                %>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <%
                }
                %>
            </ul>
        </div>
    </div>
</nav>
    <div class="container my-3">
        <div class="d-flex py-3">
            <h3>Total Price: $ <%= dcf.format(total) %></h3>
            <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
        </div>
        <table class="table table-light">
            <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Buy Now</th>
                    <th scope="col">Cancel</th>
                </tr>
            </thead>
            <tbody>
                <%
                if (cartProduct != null && !cartProduct.isEmpty()) {
                    for (Cart c : cartProduct) {
                %>
                <tr>
                    <td><%= c.getName() %></td>
                    <td><%= c.getCategory() %></td>
                    <td><%= dcf.format(c.getPrice()) %></td>
                    <td>
                        <form action="order-now" method="post" class="form-inline">
                            <input type="hidden" name="id" value="<%= c.getId() %>" class="form-input">
                            <div class="form-group d-flex justify-content-between">
                                <a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%= c.getId() %>">
                                    <i class="fas fa-plus-square"></i>
                                </a>
                                <input type="text" name="quantity" class="form-control" value="<%= c.getQuantity() %>" readonly>
                                <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%= c.getId() %>">
                                    <i class="fas fa-minus-square"></i>
                                </a>
                            </div>
                            <button type="submit" class="btn btn-primary btn-sm">Buy</button>
                        </form>
                    </td>
                    <td>
                        <a href="remove-from-cart?id=<%= c.getId() %>" class="btn btn-sm btn-danger">Remove</a>
                    </td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr>
                    <td colspan="5" class="text-center">No items in the cart.</td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
