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
        <title>Tendencia de casos Covid-19</title>
    </head>
    <body>
        <div class="container">
            <h1>TENDENCIA DE CASOS COVID</h1><!-- comment -->
            <hr><!-- comment -->
            <div class="row">
               <div class="col-md-6">
                    <h2>PROGRESO CASOS COVID ANUAL</h2> comment
                    <hr>
                    <div id="myfirstchart" ></div>
             
                </div>      
                
                <div class="col-md-6">
                    
                    <h2>PROGRESO CASOS COVID POR UNIDAD DE AREA</h2><!-- comment -->
                    <hr><!-- comment -->
                    <div id="graph2" ></div>
                    
                </div>
           </div>
            <div class="row">
               <div class="col-md-12">
                    <h2>PROGRESO CASOS COVID MENSUAL</h2><!-- comment -->
                    <hr><!-- comment -->
                    <div id="morris-line-chart" ></div>
            
                </div>       
                
            </div>
        </div>
        <script src="graficas.js" charset="utf-8" ></script>
    </body>
</html>
