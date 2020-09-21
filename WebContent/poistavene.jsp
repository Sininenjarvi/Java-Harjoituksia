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
<title>Poista vene (HUOM poistuu kokonaan kannasta)</title>
</head>
<body>
<%
out.print("Kirjautuneena: " + session.getAttribute("kayttaja") + "<br>");
%>
<form action="PoistaVene" method="post" id="poistaVene">

<%
if(request.getParameter("ilmo")!=null){
	out.print(request.getParameter("ilmo"));	
}
%>
<br></br>
<table border="1">
<tr>
<th align="right" style="width 33%" class="pysty">Nimi:</th>
<td><input type="text" name="etunimi" id="nimi"></td>
</tr>
<tr>
<th align="right" style="width 33%" class="pysty">Merkkimalli:</th>
<td><input type="text" name="smerkkimalli" id="merkkimalli"></td>
</tr>
<tr>
<th align="right" style="width 33%" class="pysty">Pituus:</th>
<td><input type="text" name="pituus" id="pituus"></td>
</tr>
<tr>
<th align="right" style="width 33%" class="pysty">Leveys:</th>
<td><input type="text" name="leveys" id="leveys"></td>
</tr>
<tr>
<th align="right" style="width 33%" class="pysty">Hinta:</th>
<td><input type="text" name="hinta" id="hinta"></td>
</tr>
<tr>
<td colspan="2" class="nappiSarake">
<input type="submit" value="Poista" id="poistaVene">
<input type="button" value="Kaikki veneet" id="kaikkiVeneet">
</td>
</tr>

<%
if(request.getAttribute("vene")!=null){	
	ArrayList<Vene> vene = (ArrayList<Vene>)request.getAttribute("vene");
	for(int i=0;i<vene.size();i++){
		out.print("<tr>");
		out.print("<td>" + vene.get(i).getTunnus() + "</td>");
		out.print("<td>" + vene.get(i).getNimi() + "</td>");
		out.print("<td>" + vene.get(i).getMerkkimalli() + "</td>");
		out.print("<td>" + vene.get(i).getPituus() + "</td>");
		out.print("<td>" + vene.get(i).getLeveys() + "</td>");
		out.print("<td>" + vene.get(i).getHinta() + "</td>");
		out.print("<td><a class='poistaVene' href='poistavene.jsp?poista_tunnus=" + vene.get(i).getTunnus() + "'><abbr title='PoistaVene'> X </abbr></a>");
		out.print("</tr>");
	}	
}
%>
</table>
<input type="hidden" name="tunnus" value="<%= request.getParameter("poistaVene")%>">
</form>
<script>
	$(document).ready(function(){
		$("#hakusana").focus();
	    $("#poistaVene").click(function(){
	    	window.location.href = 'poistavene.jsp';
	    })
</script>
</body>
</html>