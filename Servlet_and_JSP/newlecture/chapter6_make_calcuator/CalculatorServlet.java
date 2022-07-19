package chapter6_make_calcuator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lombok.Cleanup;
import lombok.NoArgsConstructor;

@NoArgsConstructor

@WebServlet("/Calculator")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html; charset=utf8");
		Cookie[] cookies = req.getCookies();
		
		
		String exp = "0";
		
		// 계산기의 출력 값 "exp"
		if(cookies != null) {
			
			for(Cookie c : cookies) {
				if(c.getName().equals("exp")) {
					exp = c.getValue();
					break;
				}
			}		
		}
	
		@Cleanup
		PrintWriter out = res.getWriter();
		
		out.write("<!DOCTYPE html>");
		out.write("<html lang=\"en\">");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<meta http-equiv=\"X-UA-Compatible\"content=\"IE=edge\">");
		out.write("<meta name=\"viewport\"content=\"width=device-width, initial-scale=1.0\">");
		out.write("<title>Document</title>");

		out.write("<style>");
		out.write("input{");
		out.write("width: 50px;");
		out.write("height: 50px;");
		out.write("}");

		out.write(".output {");
		out.write("height: 50px;");
		out.write("background: #e9e9e9;");
		out.write("font-size: 24px;");
		out.write("text-align: right;");
		out.write("padding: 0 5px;");
		out.write("}");

		out.write("</style>");
		out.write("</head>");
		out.write("<body>");
		out.write("<div>");
		out.write("<form action=\"CalculatorCookie\"method=\"POST\">");
		out.write("<table>");
		out.write("<tr>");
		out.printf("<td class=\"output\"colspan=\"4\">%s</td>", exp);
		out.write("</tr>");

		out.write("<tr>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"CE\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"C\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"BS\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"/\"></td>");
		out.write("</tr>");

		out.write("<tr>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"7\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"8\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"9\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"*\"></td>");
		out.write("</tr>");

		out.write("<tr>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"4\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"5\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"6\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"-\"></td>");
		out.write("</tr>");

		out.write("<tr>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"1\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"2\"></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"3\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"+\"></td>");
		out.write("</tr>");

		out.write("<tr>");
		out.write("<td></td>");
		out.write("<td><input type=\"submit\"name=\"value\"value=\"0\"></td>");
		out.write("<td><input type=\"submit\"name=\"dot\"value=\".\"></td>");
		out.write("<td><input type=\"submit\"name=\"operator\"value=\"=\"></td>");
		out.write("</tr>");
		out.write("</table>");
		out.write("</form>");
		out.write("</div>");
		out.write("</body>");
		out.write("</html>");
	} // service

} // end class
