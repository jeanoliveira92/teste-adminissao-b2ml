package servlets;

import controllers.professorController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class professor extends HttpServlet {

    protected void page(HttpServletRequest request, HttpServletResponse response, String address) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        page(request, response, "/professor.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulacao = request.getParameter("titulacao");
        String nome = request.getParameter("nome");

        try {
            professorController professor = new professorController();
            professor.createProfessor(titulacao, nome);
            request.setAttribute("message", "Professor Cadastrado com sucesso!");
        } catch (Exception ex) {
            if (ex.getMessage().equals("0")) {
                request.setAttribute("error", "Professor previamente cadastrado");
            } else {
                request.setAttribute("error", ex.getMessage());
            }
        }

        page(request, response, "/professor.jsp");

    }

}
