package Web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Jedi;
import Dao.JediDAO;
	
/** * Servlet implementation class ServletAlunos */
@WebServlet("/ServletAlunos")
public class JediServlet extends HttpServlet {

	private String paginaJsp;
	private HttpServletRequest request;
	private Jedi jedi;
	private JediDAO dao;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		RequestDispatcher rd = null;
		this.request = request;
		String cmd = request.getParameter("cmd");

		try {

			if (cmd != null)
				jediBind();

			dao = new JediDAO();

			switch (cmd.toLowerCase()) {
			case "listar":
				listar();
				break;
			case "incluir":
				incluir();
				break;
			case "exc":
				excluirGet();
				break;
			case "excluir":
				excluirPost();
				break;
			case "con":
				consultar();
				break;
			case "atu":
				atualizarGet();
				break;
			case "atualizar":
				atualizarPost();
				break;
			case "principal":
			default:
				principal();
				break;
			}

			rd = request.getRequestDispatcher(paginaJsp);
			rd.forward(request, response);

		} catch (Exception e) {
			request.setAttribute("erro", e.toString() + " " + e.getMessage());
			rd = request.getRequestDispatcher("/erro.jsp");
			rd.forward(request, response);
		}
	}

	private void atualizarGet() throws Exception {
		jedi = dao.procurarJedi(jedi.getNome());
		HttpSession session = request.getSession(true);
		session.setAttribute("aluno", jedi);
		paginaJsp = "/formAtuAluno.jsp";
	}

	private void atualizarPost() throws Exception {
		dao.atualizar(jedi);
		paginaJsp = "/ServletAlunos?cmd=listar";
	}

	private void listar() throws Exception {
		request.setAttribute("alunosList", dao.todosJedi());
		paginaJsp = "/mostrarAlunosCads.jsp";
	}

	private void incluir() throws Exception {
		dao.salvar(jedi);
		paginaJsp = "/ServletAlunos?cmd=listar";
	}

	private void excluirGet() throws Exception {
		jedi = dao.procurarJedi(jedi.getNome());
		HttpSession session = request.getSession(true);
		session.setAttribute("aluno", jedi);
		paginaJsp = "/formExcAluno.jsp";
	}

	private void excluirPost() throws Exception {
		dao.excluir(jedi);
		paginaJsp = "/ServletAlunos?cmd=listar";
	}

	private void consultar() throws Exception {
		jedi = dao.procurarJedi(jedi.getNome());
		HttpSession session = request.getSession(true);
		session.setAttribute("aluno", jedi);
		paginaJsp = "/formConsAluno.jsp";
	}

	private void principal() {
		paginaJsp = "/index.jsp";
	}

	private void jediBind() {
		this.jedi = new Jedi();
		try {
			jedi.setNome(request.getParameter("txtNome"));
			jedi.setEspecie(request.getParameter("txtEspecie"));
			jedi.setPlaneta(request.getParameter("txtPlaneta"));
			jedi.setStatus(request.getParameter("txtStatus"));
			jedi.setSexo(request.getParameter("txtSexo"));
			jedi.setIdade(Integer.parseInt(request.getParameter("txtIdade")));
			jedi.setMidiChlorians(Integer.parseInt(request.getParameter("txtMidi")));
			jedi.setClasse(request.getParameter("txtClasse"));
		} catch (Exception e) {
			return;
		}
	}

}