
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Category -->
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Các hãng giày </div> 
                        <ul class="list-group Category_block">
                            <c:forEach items="${listCC}" var="o">
                                <li class="list-group-item"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- san pham moi -->
       <!-- san pham moi -->
<div class="card bg-light mb-3" style="max-width: 300px;">
    <div class="card-header bg-success text-white text-uppercase">Sản phẩm mới nhất</div>
    <div class="card-body">
        <img class="img-fluid" src="${p.image}" style="max-width: 100%;" />
        <h5 class="card-title" style="font-size: 1.25rem;">${p.name}</h5>
        <p class="card-text" style="font-size: 1rem;">${p.title}</p>
        <p class="bloc_left_price" style="font-size: 1rem;">${p.price}</p>
    </div>
</div>
    </body>
</html>
