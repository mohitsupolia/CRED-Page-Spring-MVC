<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./css_js.jsp" %>
</head>
<body>
<div class="container m-3">
<div class="row">
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">Change the Product Detail</h1>
<form action="${pageContext.request.contextPath}/handle-product" method="post">
<input type="hidden" value="${product.id}" name="id"/>
<div class="form-group">
<label for="name">Product Name</label>
<input type="text" class="form-control" id="name" aria-describedby="email help" name="name"
placeholder="Enter the Product name here" value="${product.name}">
</div>
<div class="form-group">
<label for="description">Product Description</label>
<textarea class="form-control" name="description" id="description" row="5"
placeholder="Enter the Product Description"${product.description}></textarea>
</div>
<div class="form-group">
<label for="price">Product Price</label>
<input type="text" placeholder="Enter Product Price" name="price" class="form-control" id="price"
value="${product.price}">
</div>
<div class="container text-center">
<a href="${pagecontext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
<button type="Submit" class="btn btn-warning">Update</button>
</div>
</form>
</div>
</div>
</div>

</body>
</html>