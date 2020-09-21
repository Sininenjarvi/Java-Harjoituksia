package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Model.Vene;


@WebServlet("/LisaaVene")
public class LisaaVene extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LisaaVene() {
        super();
        System.out.println("LisaaVene.LisaaVene()");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LisaaVene.doGet()");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LisaaVene.doPost()");
		String nimi = request.getParameter("nimi");
		String merkkimalli = request.getParameter("merkkimalli");
		double pituus = Double.parseDouble(request.getParameter("pituus")); 
		double leveys = Double.parseDouble(request.getParameter("leveys"));
		double hinta = Double.parseDouble(request.getParameter("hinta")); 
			if(nimi.length()<2||merkkimalli.length()<2){
				response.sendRedirect("lisaavene.jsp?ilmo=0");
				return;
			}
		Vene vene = new Vene(nimi, merkkimalli, pituus, leveys, hinta);
		Dao Dao = new Dao();
		if(Dao.lisaaVene(vene)){
			response.sendRedirect("lisaavene.jsp?ilmo=1");
		}else{
			response.sendRedirect("lisaavene.jsp?ilmo=0");
		}
	}

}
