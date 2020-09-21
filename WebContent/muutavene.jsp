<%@include file="onkokirjauduttu.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="Model.Vene"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
<link rel="stylesheet" type="text/css" href="main.css">
<title>Muuta veneen tietoja</title>
</head>
<body>
<%
out.print("Kirjautuneena: " + session.getAttribute("kayttaja") + "<br>");
%>

<form action="MuutaVene" method="post" name="muutaVene" id="muutaVene">

<table> 
<tr>
<th align="right" class="pysty">Nimi:</th>
<td><input type="text" name="nimi" id="nimi"></td>
</tr>
<tr>
<th align="right" class="pysty">Merkkimalli:</th>
<td><input type="text" name="merkkimalli" id="merkkimalli" ></td>
</tr>
<tr>
<th align="right" class="pysty">Pituus:</th>
<td><input type="text" name="pituus" id="pituus"></td>
</tr>
<tr>
<th align="right" class="pysty">Leveys:</th>
<td><input type="text" name="leveys" id="leveys"></td>
</tr>
<tr>
<th align="right" class="pysty">Hinta:</th>
<td><input type="text" name="hinta" id="hinta"></td>
</tr>
<tr>

<td colspan="2" class="nappiSarake"><input type="submit" value="Vahvista muutos" >
<input type="button" value="Kaikki veneet" id="listaaKaikki"></td>
</tr>
</table>
<input type="hidden" name="tunnus" value="<%= request.getParameter("muutaVene")%>">

</form>


</body>
</html>