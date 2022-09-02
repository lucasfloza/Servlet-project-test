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

/** This servlet class uses the method "doPost" to receive the request with data from the form "bem-vindo.html" (through request.getParameter() ), 
* creates a company with the data obtained and saves it in the database.
* 
*After that, it returns the request to the browser using "response.sendRedirect("ListEmpresas");"
**/


//http://localhost:8080/gerenciador/novaEmpresa
@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
								
		protected void doPost(HttpServletRequest request,HttpServletResponse response) 
				throws ServletException, IOException {
					
			/**Rescuing parameters(tag name) from the form "bem-vindo.html"*/
			String nomeDaEmpresa = request.getParameter("nome");
			String emailDaEmpresa = request.getParameter("email");
			String senhaDaEmpresa = request.getParameter("senha");
			String dataDaAbertura = request.getParameter("data");
			
			
			/**Converting String to Date ( String -> Date)*/
			Date dataAbertura;
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				dataAbertura = sdf.parse(dataDaAbertura);
			} catch (ParseException e) {
				throw new ServletException(e);
			}
			
			/**Creating a company object and associating the data obtained with their respective attributes*/
			Empresa empresa = new Empresa();
			empresa.setNome(nomeDaEmpresa);
			empresa.setEmail(emailDaEmpresa);
			empresa.setSenha(senhaDaEmpresa);
			empresa.setDataAbertura(dataAbertura);
			
			/**Creating a database and adding the company*/			
			Banco bancoDeDados = new Banco();
			bancoDeDados.adiciona(empresa);
			
			/**Returning the request to the browser, instead of using the Dispatcher, where it will be 
			responsible for redirecting to the "listaEmpresas.jsp"*/
			response.sendRedirect("listaEmpresas");
		}
}
