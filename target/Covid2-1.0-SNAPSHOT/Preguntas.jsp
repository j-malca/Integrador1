<%-- 
    Document   : Preguntas
    Created on : 21/05/2021, 03:52:34 PM
    Author     : jmalca
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
<!------>
<div class="container" >

<br>
<!--formulario------>
<form class="container-fluid" action="">
	<!--  fila 1  -->
    <table class="table table-hover">
  <thead>
      <tr >
      <th colspan="4" scope="col">Preguntas</th>
      <th scope="col"> <a href="Registrar_preguntas.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i> </th>
      
    </tr>
       <tr >
      <th  scope="col">ID</th>
      <th scope="col">categoria </th>
      <th  scope="col">Calificacion </th>
      <th scope="col">Pregunta</th>
      <th scope="col">Acciones</th>
    </tr>
    
  </thead>
  <tbody>
      
         <%
        try { 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
                                    st = con.createStatement();
                                    rs = st.executeQuery(" SELECT preguntas.id_pregunta,CATEGORIA_PREGUNTAS.des_cate_preg,CALIFICACION_PREGUNTA.desc_cal_preg,desc_preg FROM preguntas INNER JOIN CATEGORIA_PREGUNTAS  on CATEGORIA_PREGUNTAS.id_cate_preg = preguntas.id_cate_preg INNER JOIN CALIFICACION_PREGUNTA  on CALIFICACION_PREGUNTA.id_cal_preg = preguntas.id_cal_preg" );
                                    while (rs.next()){
                                    
                                        %>
 
                                        
                                      <tr>
                                         <th scope="row"> <%= rs.getString(1) %> </th>
                                        <td><%= rs.getString(2) %></td>
                                        <td><%= rs.getString(3) %></td>
                                        <td><%= rs.getString(4) %></td>
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
</div>
   
</form>


	<nav class="navbar navbar-light alert-info"style="background-color: #e3f2fd;">
  <a class="navbar-brand" href="#">
   <!--- <img src="img/logozeus.png" width="60" height="60" class="d-inline-block align-top" alt="">--->
  </a>
  <div class="footer">
						Copyright &copy; Zeus.com 2020
		</div>
</nav>
</div>

		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>