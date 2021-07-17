<%-- 
    Document   : preguntas2
    Created on : 17 jul. 2021, 13:20:52
    Author     : Jonnathan
--%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="UTF-8">
	<title>Document</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0 ">
         <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
</head>
    <body>
        
        <%
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;  
                
     %>
        
        <div class="d-flex">
            
      
        
        
        
        
        
<body>

<div class="container" >

<br>
<!--formulario------>
<form class="container-fluid" action="trabajadores.jsp" method="post">
		<!--  fila 1  -->
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="input_nombres">Nombres</label>
      <input type="text" class="form-control" id="input_nombres" value="" required >
    </div>
    <div class="col-md-4 mb-3">
      <label for="input_apellido_paterno">Apellido Paterno</label>
      <input type="text" class="form-control" id="input_apellido_Paterno" value="" placeholder="A....Z" required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefaultUsername">Apellido Materno</label>
      <input type="text" class="form-control" id="input_apellido_Materno" value="" required>
     
    </div>
    
  </div>
<br>
<!-- fila 2  -->

<div class="form-row">
	<div class="col-md-4 mb-3">
      <label for="validationDefault04">Tipo de Documento</label>
      <select class="custom-select" id="validationDefault04" required>
        <option selected disabled value="">Elegir</option>
        <option>Dni</option>
        <option>Pasaporte</option>
        <option>Tpt</option>
        <option>Ce</option>
      </select>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault04">Pais</label>
      <select class="custom-select" id="validationDefault04" required>
        <option selected disabled value="">Elegir</option>
        <option>Peru</option>
        <option>Venezuela</option>
        <option>Argentina</option>
        <option>Colombia</option>
      </select>
    </div>
    
     <div class="col-md-4 mb-3">
      <label for="validationDefaultUsername">Numero de Documento</label>
      <input type="text" class="form-control" id="validationDefault02" value="" required>
     
    </div>

</div>
<br>
<!-- fila 3  -->
  
  <div class="form-row">
    
    <div class="col-md-4 mb-3">
      <label for="validationDefault04">Tipo de Usuario</label>
      <select class="custom-select" id="validationDefault04" required>
        <option selected disabled value="">Elegir</option>
        <option>admin</option>
        <option>User</option>
     
      </select>
    </div>
    
  </div>
  
  <div  class="form grpup">
  	<div class="">
 	<button class="btn btn-primary btn-md " data-toggle="button"type="submit">Registrar</button> 
 	<button class="btn btn-primary btn-md " data-toggle="button"type="reset">Limpiar</button>
 </div>
  </div>
 
  
</form>



</div>        


  <%
            if (request.getParameter("enviar") != null) {
                String cate_preguntas = request.getParameter("cate_preguntas");
                String cali_preguntas = request.getParameter("cali_preguntas");
                String pregunta = request.getParameter("txtpregunta");

                try {
                   
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
                    st=con.createStatement();
                    st.executeUpdate("insert into  PREGUNTAS (id_cate_preg,id_cal_preg,desc_preg) values ('"+cate_preguntas+"','"+cali_preguntas+"','"+pregunta+"');");
                    request.getRequestDispatcher("Preguntas.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>
        
        
 
        </div>
 
        
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>
