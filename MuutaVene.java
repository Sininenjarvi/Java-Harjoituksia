package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Model.Vene;


@WebServlet("/MuutaVene")
public class MuutaVene extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MuutaVene() {
        super();
        System.out.println("MuutaVene.MuutaVene()");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MuutaVene.doGet()");
		int tunnus= Integer.parseInt(request.getParameter("tunnus"));
		String nimi = request.getParameter("nimi");
		String merkkimalli = request.getParameter("merkkimalli");
		Double pituus = (double) Integer.parseInt(request.getParameter("pituus"));
		Double leveys = (double) Integer.parseInt(request.getParameter("leveys"));
		Double hinta = (double) Integer.parseInt(request.getParameter("hinta"));
		Vene vene = new Vene(tunnus, nimi, merkkimalli, pituus, leveys, hinta);
		Dao Dao = new Dao();
		Dao.muutaVene(vene);
		response.sendRedirect("HaeVene");
			
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MuutaVene.doPost()");
		int tunnus= Integer.parseInt(request.getParameter("tunnus"));
		String nimi = request.getParameter("nimi");
		String merkkimalli = request.getParameter("merkkimalli");
		Double pituus = Double.parseDouble(request.getParameter("pituus"));
		Double leveys = Double.parseDouble(request.getParameter("leveys"));
		Double hinta = Double.parseDouble(request.getParameter("hinta"));
		Vene vene = new Vene(tunnus, nimi, merkkimalli, pituus, leveys, hinta);
		Dao Dao = new Dao();
		Dao.muutaVene(vene);
		response.sendRedirect("HaeVene");
		//request.setAttribute("Vene", vene);		
		//String jsp = "/haevene.jsp"; 
		//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		//dispatcher.forward(request, response);		
	}

}
