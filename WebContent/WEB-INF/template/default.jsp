<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


   
<title><tiles:getAsString name="title" /></title>
<tiles:insertAttribute name="header"></tiles:insertAttribute>


</head>
<body class="thumb">
<div id="main">
      <div id="intro" class="col-md-12">
      
       <header>
          <div class="content text-center wow fadeIn">

            <a href="${pageContext.request.contextPath}/">
              <img class="brand wow zoomIn" alt="Kush Kumar Dhawan" height="165" width="180" src="${pageContext.request.contextPath}/magnetickush/images/avatarf.png">
            </a>

            <h1>MagneticKush</h1>
           <!--   <p>"Whatever can happen will happen"</p> -->
            <p>"Over every mountain there is a path, although it may not be seen from the valley"</p>
            <p>
              <a href="#open" class="toggle-fullscreen btn btn-default btn-outline btn-lg wow tada hidden-xs hidden-sm">Blog</a> 
              <a href="${pageContext.request.contextPath}/about#open" class="btn btn-outline btn-default btn-lg">About</a>
              <a href="${pageContext.request.contextPath}/contact#open" class="btn btn-outline btn-default btn-lg">Contact</a>
              <a href="${pageContext.request.contextPath}/magnetickush/pdf/KushKumarDhawan.pdf" class="btn btn-outline btn-default btn-lg">Resume</a>
           
            </p>
          </div>
        </header>
</div>
      <div id="content" class="col-md-8 col-md-offset-4">
<tiles:insertAttribute name="body"></tiles:insertAttribute>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>

</div><!-- /#content -->
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