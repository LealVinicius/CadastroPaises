package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Pais;
import service.PaisService;

//b. Altere o servlet para fazer dispatch do JSP. Não se esqueça de passar o javabean via request

@WebServlet("/ManterPais.do")
public class ManterPaisController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pAcao = request.getParameter("acao");
		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pPopulacao = request.getParameter("populacao");
		String pArea = request.getParameter("area");
		int id = -1;
		try {
			id = Integer.parseInt(pId);
		} catch (NumberFormatException e) {

		}
		
		//instanciar o javabean
		Pais p = new Pais();
		p.setNome(pNome);
		p.setPopulacao(Long.parseLong(pPopulacao));
		p.setArea(Double.parseDouble(pArea));
		
		//instanciar o service
		PaisService ps = new PaisService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		if (pAcao.equals("Criar")) {
			ps.criar(p);
			ArrayList<Pais> lista = new ArrayList<>();
			lista.add(p);
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("MostrarPais.jsp");
		}
		else if (pAcao.equals("Excluir")) {
			ps.excluir(p.getId());
			ArrayList<Pais> lista = (ArrayList<Pais>)session.getAttribute("lista");
			lista.remove(busca(p, lista));
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarPais.jsp");			
		} else if (pAcao.equals("Alterar")) {
			ps.atualizar(p);
			ArrayList<Pais> lista = (ArrayList<Pais>)session.getAttribute("lista");
			int pos = busca(p, lista);
			lista.remove(pos);
			lista.add(pos, p);
			session.setAttribute("lista", lista);
			request.setAttribute("cliente", p);
			view = request.getRequestDispatcher("MostrarPais.jsp");			
		} else if (pAcao.equals("Visualizar")) {
			p = ps.carregar(p.getId());
			request.setAttribute("cliente", p);
			view = request.getRequestDispatcher("MostrarPais.jsp");		
		} else if (pAcao.equals("Editar")) {
			p = ps.carregar(p.getId());
			request.setAttribute("cliente", p);
			view = request.getRequestDispatcher("AlterarPais.jsp");		
		}
	
		view.forward(request, response);

	}
	public int busca(Pais p, ArrayList<Pais> lista) {
		Pais pa;
		for(int i = 0; i < lista.size(); i++){
			pa = lista.get(i);
			if(pa.getId() == p.getId()){
				return i;
			}
		}
		return -1;
	}
		
		
	}

