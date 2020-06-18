package servlets;

import controllers.alunoController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class aluno extends HttpServlet {

    protected void page(HttpServletRequest request, HttpServletResponse response, String address) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        page(request, response, "/aluno.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String matricula = request.getParameter("matricula");
        String nome = request.getParameter("nome");

        try {

            alunoController aluno = new alunoController();
            aluno.createAluno(matricula, nome);
            request.setAttribute("message", "Aluno Cadastrado com sucesso!");
        } catch (Exception ex) {
            if (ex.getMessage().equals("0")) {
                request.setAttribute("error", "Aluno previamente cadastrado");
            }else{
                request.setAttribute("error", ex.getMessage());                
            }
        }

        page(request, response, "/aluno.jsp");

    }

}
