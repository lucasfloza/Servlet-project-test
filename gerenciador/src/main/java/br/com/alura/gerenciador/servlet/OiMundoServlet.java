package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// para eu conseguir extender a classe "HttpServlet" eu precisei ir nas 
// propriedades do projeto > java build path > adicionar uma biblioteca chamada Server Runtime

@WebServlet(urlPatterns = "/teste")
public class OiMundoServlet extends HttpServlet{
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>");
		out.println("Hello, the communication is successful!!");
		out.println("</h1>");
		out.println("<a>");
		out.println("It's working!");
		out.println("</a>");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("The servlet was called!!");

	}

}
