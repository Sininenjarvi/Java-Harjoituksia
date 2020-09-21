package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.Dao;
import Model.Vene;

@WebServlet("/ListaaVeneet")
public class ListaaVeneet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ListaaVeneet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ListaaVeneet.doGet()");
		Dao dao = new Dao();		
		ArrayList<Vene> veneet = dao.listaaKaikki();
		request.setAttribute("vene", veneet);		
		String jsp = "/listaaveneet.jsp"; 
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ListaaVeneet.doPost()");
		Dao dao = new Dao();		
		ArrayList<Vene> veneet = dao.listaaKaikki();
		request.setAttribute("vene", veneet);
		String jsp = "/listaaveneet.jsp"; 
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
	}
	
}


