package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pais;
import service.PaisService;

/**
 * Servlet implementation class ManterClienteController
 */

//b. Altere o servlet para fazer dispatch do JSP. N�o se esque�a de passar o javabean via request

@WebServlet("/ManterPais.do")
public class ManterPaisController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pNome = request.getParameter("nome");
		String pPopulacao = request.getParameter("populacao");
		String pArea = request.getParameter("area");
		
		//instanciar o javabean
		Pais p = new Pais();
		p.setNome(pNome);
		p.setPopulacao(Long.parseLong(pPopulacao));
		p.setArea(Double.parseDouble(pArea));
		
		//instanciar o service
		PaisService ps = new PaisService();
		ps.criar(p);
		p = ps.carregar(p.getId());
		
		request.setAttribute("pais", p);
		
		RequestDispatcher view = request.getRequestDispatcher("Pais.jsp");
		view.forward(request, response);
		
	}

}
