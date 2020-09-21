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
<title>Listaa veneet</title>
</head>
<body>
<%
out.print("Kirjautuneena " + session.getAttribute("kayttaja") + "<br>");
%>
<form action="ListaaVeneet" method="post" >

<%
if(request.getParameter("ilmo")!=null){
	out.print(request.getParameter("ilmo"));	
}
%>
<br></br>
<table>
<tr>
<th class="vaaka">Nimi</th>
<th class="vaaka">Merkkimalli</th>
<th class="vaaka">Pituus</th>
<th class="vaaka">Leveys</th>
<th class="vaaka">Hinta</th>
<th></th>
</tr>
<%
if(request.getAttribute("veneet")!=null){	
	ArrayList<Vene> veneet = (ArrayList<Vene>)request.getAttribute("veneet");
	for(int i=0;i<veneet.size();i++){
		out.print("<tr>");
		out.print("<td>" + veneet.get(i).getNimi() + "</td>");
		out.print("<td>" + veneet.get(i).getMerkkimalli() + "</td>");
		out.print("<td>" + veneet.get(i).getPituus() + "</td>");
		out.print("<td>" + veneet.get(i).getLeveys() + "</td>");
		out.print("<td>" + veneet.get(i).getHinta() + "</td>");
		out.print("<td><a class='poistaVene' href='poistavene.jsp?poista_tunnus=" + veneet.get(i).getTunnus() + "'><abbr title='PoistaVene'> X </abbr></a>");
		out.print("<a class='muutaVene' href='muutavene.jsp?muutaVene=" + veneet.get(i).getTunnus() + "'><abbr title='MuutaVene'> M </abbr></a></td>\n");
		out.print("</tr>");
	}	
}
%>

</table>
</form>
<script>
	$(document).ready(function(){
		$("#nimi").focus();
	    $("#listaaKaikki").click(function(){
	    	window.location.href = 'listaaveneet.jsp' ;
	    });
	});
</script>
<br><br>
<img src="http://www.lightning.fi/fd/images/stories/slides/060718-162457cs_std.jpg" alt="nettivene.fi" width="100%" height="40%">
</body>
</html>