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
<form class="container-fluid" action="Cuestionario.jsp" metehod="post">

<div class="container form-group">
<div>
    <h1>Cuestionario de Ingreso</h1>
</div>
<!--formulario------>

	<!--  fila 1  -->
    <table class="table table-hover">
  <thead>

       <tr >
      <th  scope="col">N°</th>
      <th scope="col">Pregunta</th>
      <th scope="col">Respuesta</th>
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
                  <th scope="row" > <input type="text" class="form-control" id="txtpregunta" name="id_pregu<%= rs.getString(1)%>" value="<%= rs.getString(1)%>" required>
                                                                                 
                                        </th>
                                        <td><%= rs.getString(4)%></td>
                                        
                                        <td>
                                          <div class="form-group">
        <select class="custom-select" id="cues_preguntas" name="resput<%= rs.getString(1)%>" required>
        <option selected disabled value="">Elegir</option>
        <option value="SI">SI</option>
        <option value="NO">NO</option>
      
       </select>
        
  </div>
                                        </td>
                                        <td>
                                                                                       
                                        </td>                   
                                      </tr>  
                                     
                                        <%
                                    }  
                            } catch (Exception e){
                            out.print("Error mysql" + e  );
                                 }    
                     %>
   
 
  </tbody>
 
</table>
                     
         <div class="">
  <button class="btn btn-primary btn-md " name="enviar" data-toggle="button"type="submit">Enviar</button> 
  <button class="btn btn-primary btn-md " data-toggle="button"type="reset">Limpiar</button>
   
 </div>               
</div>
                     
     <%
            if (request.getParameter("enviar") != null) {
                String cate_preguntas = request.getParameter("cate_preguntas");
                String cali_preguntas = request.getParameter("cali_preguntas");
                String pregunta = request.getParameter("txtpregunta");

                try {
                                  
                    st=con.createStatement();
                    st.executeUpdate("insert into REGISTRO_FORMULARIO (id_trabajador, id_pregunta, id_ubicacion, respuesta_formulario_1,fecha_registro) values('1','1','1','SI',NOW());");
                    request.getRequestDispatcher("Cuestionario.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>    
        
                     
                     
                     
                     
                                        </form>
   




</div>

		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
</body>

</html>