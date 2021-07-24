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
        
   
<!------>


<br>
<!------- navbar---->
<div class="container" >

<br>
<!--formulario------>
	<form class="container-fluid" action="Registrar_preguntas.jsp" method="post" >
		<!--  fila 1  -->
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="cate_preguntas"> Categoria Preguntas </label>   
      <select class="custom-select" id="cate_preguntas" name="cate_preguntas"  required>
        <option selected disabled value="">Elegir</option>
        <option value="01">Medicas</option>
        <option value="02" >COVID-19</option>
        <option value="03" >Otros</option>
     
      </select>
    </div>
    <div class="col-md-4 mb-3">
      <label for="cali_preguntas">Calificacion Pregunta</label>
    <select class="custom-select" id="cali_preguntas" name="cali_preguntas" required>
        <option selected disabled value="">Elegir</option>
        <option value="01" >Alto</option>
        <option value="02">Medio</option>
        <option value="03">Bajo</option>
     
      </select>
    </div>
    
    
  </div>
<!-- fila 2  -->

<div class="form-row">
<div class="col-md-11 mb-4">
      <label for="validationDefaultUsername">Pregunta </label>
      <input type="text" class="form-control" id="txtpregunta" name="txtpregunta" value="" required>
      <br>
      <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>

     
    </div>
</div>
<!-- fila 3  -->
  
<%
            if (request.getParameter("enviar") != null) {
                String cate_preguntas = request.getParameter("cate_preguntas");
                String cali_preguntas = request.getParameter("cali_preguntas");
                String pregunta = request.getParameter("txtpregunta");

                try {
                    Connection con=null;
                    Statement st=null;
                    
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
 




  
</form>


</div>

		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>