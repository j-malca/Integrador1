<%-- 
    Document   : Graficas2
    Created on : 23 jun. 2021, 00:23:49
    Author     : Jonnathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <link rel="stylesheet" href="libs/morris.css">
        
        <script src="libs/morris.min.js" charset=UTF-8"></script>
        <title>Graficas</title>
    </head>
    <body>
        <div class="container">
            <h1>Graficas</h1><!-- comment -->
            <hr><!-- comment -->
            <div class="row">
                <div class="col-md-6">
                    <h2>Graficas</h2><!-- comment -->
                    <hr><!-- comment -->
                    <div id="myfirstchart" ></div>
            
                </div>      
                
                <div class="col-md-6">
                    
                    <h2>Graficas</h2><!-- comment -->
                    <hr><!-- comment -->
                    <div id="graph2" ></div>
                    
                </div>
           </div>
        </div>
        <script src="graficas.js" charset="utf-8" ></script>
    </body>
</html>
