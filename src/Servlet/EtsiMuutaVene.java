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

@WebServlet("/EtsiMuutaVene")
public class EtsiMuutaVene extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EtsiMuutaVene() {
        super();
        System.out.println("EtsiMuutaVene.EtsiMuutaVene()");
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("EtsiMuutaVene.doGet()");
		int tunnus= Integer.parseInt(request.getParameter("tunnus"));
		Dao dao = new Dao();
		Vene vene = dao.loytyykoVene(tunnus);
		request.setAttribute("vene", vene);		
		String jsp = "/muutavene.jsp"; 
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("EtsiMuutaVene.doPost");
	}

}
