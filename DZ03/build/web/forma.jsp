<%-- 
    Document   : forma
    Created on : May 9, 2018, 10:56:39 AM
    Author     : manojlovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forma DZ03</title>
    </head>
    <body background="background.jpg">
        <div align="center">
            <h2>Forma za unos</h2>
        </div>
         <form action="http://localhost:16471/DZ03/rezultat.jsp" method="GET">
            <h3>Unesite oznaku akcije:</h3>
                <input type="text" name="imeAkcije"></br></br>
  
            <h3>Unesite kolicinu:</h3>
                <input type="number" name="kolicina"></br></br>
                <input type="submit" value="IZRACUNAJ" />
         </form>
        
        
    </body>
</html>
