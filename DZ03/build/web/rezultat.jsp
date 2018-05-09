<%-- 
    Document   : rezultat
    Created on : May 9, 2018, 11:49:32 AM
    Author     : manojlovic
--%>

<%@page import="com.manojlovic.akcije.Akcije"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% // Kreira kolacice za ime i prezime.
    Cookie imeAkcije = new Cookie("imeAkcije", request.getParameter("imeAkcije"));
    Cookie kolicina = new Cookie("kolicina", request.getParameter("kolicina"));

// Dodavanje oba kolacica u zaglavlje odgovora.
    response.addCookie(imeAkcije);
    response.addCookie(kolicina);%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rezultat DZ03</title>
    </head>
    <body background="background.jpg">
        <div align="center">
            <h2>Rezultat</h2>
        </div>
        <h3>Uneli ste akciju:</h3>
        <%= request.getParameter("imeAkcije")%>
        <h3>Uneli ste kolicinu:</h3>
        <%= request.getParameter("kolicina")%>


        <%!Akcije stockServer = new Akcije();%>
        <%if (request.getParameter("imeAkcije").equalsIgnoreCase("Gold")) {%>
        <h3>Cena pojedinacne: "<%= request.getParameter("imeAkcije")%>", akcije iznosi: 150.2 dolara</h3>
        <h3>Ukupno, cena iznosi:
            <%=stockServer.proracun(Integer.parseInt(request.getParameter("kolicina")), 150.2)%> dolara.
        </h3>
        <%} else if (request.getParameter("imeAkcije").equalsIgnoreCase("Oil")) {%>
        <h3>Cena pojedinacne: "<%= request.getParameter("imeAkcije")%>", akcije iznosi: 110.00 dolara</h3>
        <h3>Ukupno, cena iznosi:
            <%=stockServer.proracun(Integer.parseInt(request.getParameter("kolicina")), 110.00)%> dolara.
        </h3>
        <%} else if (request.getParameter("imeAkcije").equalsIgnoreCase("Silver")) {%>
        <h3>Cena pojedinacne: "<%= request.getParameter("imeAkcije")%>", akcije iznosi: 84.25 dolara</h3>
        <h3>Ukupno, cena iznosi:
            <%=stockServer.proracun(Integer.parseInt(request.getParameter("kolicina")), 84.25)%> dolara.
        </h3>
        <%} else if (request.getParameter("imeAkcije").equalsIgnoreCase("Platinum")) {%>
        <h3>Cena pojedinacne: "<%= request.getParameter("imeAkcije")%>", akcije iznosi: 190.5 dolara</h3>
        <h3>Ukupno, cena iznosi:
            <%=stockServer.proracun(Integer.parseInt(request.getParameter("kolicina")), 190.5)%> dolara.
        </h3>
        <%} else {%>
        <h3>Preusmeravanje na pocetnu ...</h3>
            <%Thread.sleep(3000);%>
            <%response.sendRedirect("http://localhost:16471/DZ03/index.html");%>
                    
        <%}%>
    </body>
</html>
