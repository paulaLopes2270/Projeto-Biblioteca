package Filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter("/LivrosController")
public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(false);

        String action = req.getParameter("action");

        if (session != null && session.getAttribute("user") != null) {
            // Usuário logado
            chain.doFilter(request, response);
        } else if ("listar".equals(action)) {
            // Usuário não logado pode listar livros
            chain.doFilter(request, response);
        } else {
            // Redireciona para a página de login
            res.sendRedirect("login.jsp");
        }
    }

    @Override
    public void destroy() {
    }
}