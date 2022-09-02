package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**Servlet class responsible for editing the company's saved data within the database*/
@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String nomeDaEmpresa = request.getParameter("nome");
	String emailDaEmpresa = request.getParameter("email");
	String senhaDaEmpresa = request.getParameter("senha");
	String dataDaAbertura = request.getParameter("data");
	String idForm = request.getParameter("id");
	
	Integer id = Integer.valueOf(idForm);
	

	System.out.println(idForm);
	
//		-> Fazendo um Parsin ( String -> Date)
	Date dataAbertura;
	try {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dataAbertura = sdf.parse(dataDaAbertura);
	} catch (ParseException e) {
		throw new ServletException(e);
	}

	

//	->	Criando o objeto de banco de dados 

Banco banco = new Banco();

Empresa empresa = banco.buscaEmpresaPelaId(id);
empresa.setNome(nomeDaEmpresa);
empresa.setEmail(emailDaEmpresa);
empresa.setSenha(senhaDaEmpresa);
empresa.setDataAbertura(dataAbertura);

response.sendRedirect("listaEmpresas");

	}

}
