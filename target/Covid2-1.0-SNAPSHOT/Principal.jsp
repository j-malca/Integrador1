<%-- 
    Document   : Principal
    Created on : 6 jun. 2021, 19:17:45
    Author     : Jonnathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0 ">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-lig" style="background-color: #e3f2fd;" >
  <div class="container-fluid">
    <a class="btn btn-outline-success" href="Graficas.jsp" target="iframeprincipla">Principal</a>
    
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a style="margin-left: 10px; border:none"   class="btn btn-outline-success" aria-current="page" href="trabajadores.jsp" target="iframeprincipla">Trabajadores</a>
        </li>
        <li class="nav-item">
          <a style="margin-left: 10px; border:none" class="btn btn-outline-success" href="#">Categorias</a>
        </li>
        <li class="nav-item">
            <a  style="margin-left: 10px; border:none" class="btn btn-outline-success" href="preguntas2.jsp" target="iframeprincipla" >Preguntas </a>
        </li>
        <li class="nav-item">
            <a  style="margin-left: 10px; border:none" class="btn btn-outline-success" href="Graficas.jsp" target="iframeprincipla" >Estadistica </a>
        </li>
      </ul>
 
    </div>
    
    <div class="dropdown align-top">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    Dropdown butkkkon
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>
</div>
  </div>
</nav>
        
        
        
        
        
        
        
        <div class="m-4" style="height: 800px">
            <iframe name="iframeprincipla" style="height:100%;width:100%"></iframe>
        </div>
        
      
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
    <footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
  <!-- Copyright -->
</footer>

</html>
