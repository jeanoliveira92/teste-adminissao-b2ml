package servlets;

import controllers.turmaController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class turma extends HttpServlet {

    protected void page(HttpServletRequest request, HttpServletResponse response, String address) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        page(request, response, "/turma.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sala = request.getParameter("sala");
        String dataab = request.getParameter("dataab");
        String dataen = request.getParameter("dataen");

        try {

            turmaController turma = new turmaController();
            turma.createTurma(sala, dataab, dataen);
            request.setAttribute("message", "Turma Cadastrado com sucesso!");
        } catch (Exception ex) {
            if (ex.getMessage().equals("0")) {
                request.setAttribute("error", "Turma previamente cadastrado");
            } else {
                request.setAttribute("error", ex.getMessage());
            }
        }

        page(request, response, "/turma.jsp");

    }

}
