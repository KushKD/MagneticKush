<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


   
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="header"></tiles:insertAttribute>


</head>
<body >
<div id="main">
      <a class="page-brand" href="${pageContext.request.contextPath}/#open">
        <img class="brand wow zoomIn" alt="Kush Kumar Dhawan" height="80" width="80" src="${pageContext.request.contextPath}/magnetickush/images/avatar.png">
      </a>
      <tiles:insertAttribute name="body"></tiles:insertAttribute>
      <tiles:insertAttribute name="footer"></tiles:insertAttribute>
    </div><!-- /#main -->

    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/magnetickush/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/magnetickush/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/magnetickush/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/magnetickush/js/parallax.js"></script>
    <script src="${pageContext.request.contextPath}/magnetickush/js/smoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/magnetickush/js/main.js"></script>
     <script src="${pageContext.request.contextPath}/magnetickush/js/themeswitcher.js"></script>

    

    <script>
      new WOW().init();
    </script>
</body>
</html>