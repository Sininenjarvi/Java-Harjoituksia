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
<title>Veneen lisääminen</title>
</head>
<body>
<%
out.print("Kirjautuneena: " + session.getAttribute("kayttaja") + "<br>");
%>
<form action="LisaaVene" method="post" name="lisaaVene" id="lisaaVene">
<table>
<tr>
<th align="right" style="width:33%" class="pysty">Nimi:</th>
<td><input type="text" name="nimi" id="nimi"></td>
</tr>
<tr>
<th align="right" style="width:33%" class="pysty">Merkkimalli:</th>
<td><input type="text" name="merkkimalli" id="merkkimalli"></td>
</tr>
<tr>
<th align="right" style="width:33%" class="pysty">Pituus:</th>
<td><input type="text" name="pituus" id="pituus"></td>
</tr>
<tr>
<th align="right" style="width:33%" class="pysty">Leveys:</th>
<td><input type="text" name="leveys" id="leveys"></td>
</tr>
<tr>
<th align="right" style="width:33%" class="pysty">Hinta:</th>
<td><input type="text" name="hinta" id="hinta"></td>
</tr>
<tr>
<td colspan="2" class="nappiSarake"><input type="submit" value="Lisää vene">
<input type="button" value="Kaikki veneet"  href='listaaveneet.jsp?ListaaVeneet'></td>
</tr>
</table>
</form>
<%
if(request.getParameter("ilmo")!=null){
	if(request.getParameter("ilmo").equals("1")){
		out.print("Veneen lisääminen onnistui");	
	}else if(request.getParameter("ilmo").equals("0")){
		out.print("Veneen lisääminen ei onnistunut");	
	}
}
%>
<script>
	$(document).ready(function(){
		$("#nimi").focus();
	    $("#kaikki").click(function(){	    	
	    	window.location.href = 'listaavene.jsp';
	    });
	    //var d = new Date();
	    $("#lisaaVene").validate({						
	    	rules: {
				nimi:  {
					required: true,
					minlength: 2,
					maxlength: 12
				},	
				merkkimalli:  {
					required: true,
					minlength: 2,
					maxlength: 20
				},
				pituus:  {
					required: true,
					minlength: 2,
					maxlength: 5
				},	
				leveys:  {
					required: true,
					minlength: 1,
					maxlength: 5,
					number: true
				},	
				hinta:  {
					required: true,
					minlength: 2,
					maxlength: 20,
					number: true
				}				
			},
			messages: {
				nimi: {
					required: "Pakollinen",
					minlength: "Pituus ei riitä",
					maxlength: "Liian pitkä"
					
				},
				merkkimalli: {
					required: "Pakollinen",
					minlength: "Pituus ei riitä",
					maxlength: "Liian pitkä"
				},
				pituus: {
					required: "Pakollinen",
					minlength: "Pituus ei riitä",
					maxlength: "Liian pitkä",
					number: "Anna numero"
				},
				leveys: {
					required: "Pakollinen",
					minlength: "Pituus ei riitä",
					maxlength: "Liian pitkä",
					number: "Anna numero"					
				},
				hinta: {
					required: "Pakollinen",
					minlength: "Pituus ei riitä",
					maxlength: "Liian pitkä",
					number: "Anna numero"					
				}
			},			
			submitHandler: function (form) {
				document.forms["muutaVene"].submit();
			}		
		});
	    
	});

</script>
<a href="haevene.jsp">Näytä kaikki veneet </a>
</body>
</html>