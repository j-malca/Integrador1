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
      <input type="text" class="form-control" id="input_nombres" value="" name="" required >
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
        <option selected disabled value="" name="tipo_doc">Elegir</option>
        <option value="1">Dni</option>
        <option value="2">Pasaporte</option>
        <option value="3" >Tpt</option>
        <option value="4" >Ce</option>
      </select>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault04">Pais</label>
      <select class="custom-select" id="validationDefault04"  name="pais" required>
        <option selected disabled value="">Elegir</option>
        <option value="1" >Peru</option>
        <option value="2">Venezuela</option>
        <option value="3" >Argentina</option>
        <option value="4">Colombia</option>
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
    
    
    
  </div>
  
  <div  class="form grpup">
  	<div class="">
 	<button class="btn btn-primary btn-md " data-toggle="button"type="submit">Registrar</button> 
 	<button class="btn btn-primary btn-md " data-toggle="button"type="reset">Limpiar</button>
 </div>
  </div>
 
  
</form>



</div>        


<div class="col-sm-6">
            <table class="table table-hover">
  <thead>
      
       <tr >
      <th  scope="col">N°</th>
      <th scope="col">Documento </th>
      <th  scope="col">Nombre</th>
      <th scope="col">Apellido Paterno</th>
      <th scope="col">Apellido Materno</th>
      <th scope="col">Tipo de Documento</th>     
    </tr>
    
  </thead> 
  <tbody>
       
         <%
             
        try { 
            
            Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
           st = con.createStatement();
                                    rs = st.executeQuery("SELECT trabajadores.id_trabajador ,trabajadores.numero_doc_usu,trabajadores.nom_usu,"
                                            + "trabajadores.apep_usu,trabajadores.apem_usu,TIPO_DOCUMENTO.desc_tipo_doc "
                                            + "FROM trabajadores INNER JOIN TIPO_DOCUMENTO ON   trabajadores.id_tipo_doc = TIPO_DOCUMENTO.id_tipo_doc" );
                                    while (rs.next()){
                                    
                                        %>
 
                                        
                                      <tr>
                                         <th scope="row"> <%= rs.getString(1) %> </th>
                                        <td><%= rs.getString(2) %></td>
                                        <td><%= rs.getString(3) %></td>
                                        <td><%= rs.getString(4) %></td>
                                         <td><%= rs.getString(5) %></td>
                                          <td><%= rs.getString(6) %></td>
                                        <td><i class="fa fa-pencil" aria-hidden="true"></i></td>
                                        <td><i class="fa fa-trash-o" aria-hidden="true"></i></td>
                                      </tr>  
                                     
                                        <%
                                    }  
                            } catch (Exception e){
                            out.print("Error mysql" + e  );
                                 }    
                     %>
   
   
  </tbody>
       
        
</table>
            <%
            if (request.getParameter("enviar") != null) {
               int ubi = Integer.parseInt(request.getParameter("ubic"));
               int id_preg1 = Integer.parseInt(request.getParameter("id_pregu1"));
                int id_preg2 = Integer.parseInt(request.getParameter("id_pregu2"));
                int id_preg3 = Integer.parseInt(request.getParameter("id_pregu3"));
                int id_preg4 = Integer.parseInt(request.getParameter("id_pregu4"));
                int id_preg5 = Integer.parseInt(request.getParameter("id_pregu5"));
                int id_preg6 = Integer.parseInt(request.getParameter("id_pregu6"));
                int id_preg7 = Integer.parseInt(request.getParameter("id_pregu7"));
                int id_preg8 = Integer.parseInt(request.getParameter("id_pregu8"));
		int id_preg9 = Integer.parseInt(request.getParameter("id_pregu8"));
		int id_preg10 = Integer.parseInt(request.getParameter("id_pregu8"));
                String respu1 = request.getParameter("resput1");
                String respu2 = request.getParameter("resput2");
                String respu3 = request.getParameter("resput3");
                String respu4 = request.getParameter("resput4");
                String respu5 = request.getParameter("resput5");
                String respu6 = request.getParameter("resput6");
                String respu7 = request.getParameter("resput7");
                String respu8 = request.getParameter("resput8");
		String respu9 = request.getParameter("resput8");
		String respu10 = request.getParameter("resput8");

                try {
                   
                    Statement st1=null;
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
                    st=con.createStatement();
                    st.executeUpdate("");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>         
        </div>        
        
        
 
        </div>
 
        
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>
