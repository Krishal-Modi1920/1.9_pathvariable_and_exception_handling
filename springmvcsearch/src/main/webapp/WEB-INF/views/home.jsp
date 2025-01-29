<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- <style type="text/css">
body{
	background: red ! important;
}
</style> -->
    <meta charset="UTF-8">
    <title>Search Page</title>
   
   	 <!-- <link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/script.js' />"></script>-->
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <!--  <img alt="myimage" src="<c:url value='/resources/image/screenshot.png' />">-->
    <div class="container">
        <div class="card mx-auto mt-5 bg-primary" style="width: 60%;">
            <div class="card-body py-5">
                <h3 class="text-center text-white" style="text-transform: uppercase">My Search</h3>
                <form action="search" method="GET" class="mt-3">
                    <div class="form-group">
                        <input type="text" name="querybox" placeholder="Enter your Keyword" class="form-control">
                    </div>
                    <div class="container text-center">
                        <button type="submit" class="btn btn-outline-light mt-3">Search</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN6jIeHz" crossorigin="anonymous"></script>
            
    <!-- <script type="text/javascript">alert("Hello");</script> -->
</body>
</html>
