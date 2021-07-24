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
        
        <div class="d-flex">
            
      
        
        
        
        
        
<div class="col-sm-6">
            <div class="container" >

<br>



	<form class="container-fluid" action="Categoria_preguntas.jsp" method="post" >
		    
    
  </div>


<div class="form-row">
<div class="col-md-11 mb-4">
      <label for="validationDefaultUsername">GATEGORIA</label>
      <input type="text" class="form-control" id="txtpregunta" name="TXTCATE" value="" required>
      <br>
      <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>

     
    </div>
</div>

   <%
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;  
                
     %>
<%
            if (request.getParameter("enviar") != null) {
                String cate_preguntas = request.getParameter("TXTCATE");
                        

                try {
                    
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
                    st=con.createStatement();
                    st.executeUpdate("insert into  PREGUNTAS (id_cate_preg) values ('"+cate_preguntas+"');");
                    request.getRequestDispatcher("Preguntas.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>
    
     
   
 
</div>
 




  
</form>
 </div>         


<div class="col-sm-6">
            <table class="table table-hover">
  <thead>
      
       <tr >
      <th  scope="col">N°</th>
      <th scope="col">categoria </th>
      <th scope="col">Acciones</th>
    </tr>
    
  </thead> 
  <tbody>
       
         <%
             
        try { 
            
            Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost/dbscovid?user=root&password=");
           st = con.createStatement();
                                    rs = st.executeQuery("SELECT row_number()OVER (ORDER BY id_cate_preg ) AS contador,id_cate_preg ,des_cate_preg   FROM CATEGORIA_PREGUNTAS");
                                    while (rs.next()){
                                    
                                        %>                                          
                                      <tr>
                                         <th scope="row"> <%= rs.getString(1) %> </th>
                                        <td><%= rs.getString(3) %></td>
                                      
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
        
        
 
        </div>
 
        
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>
