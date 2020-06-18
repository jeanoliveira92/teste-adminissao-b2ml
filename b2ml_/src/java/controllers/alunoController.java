package controllers;

import database.bdConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class alunoController {

    public void createAluno(String matricula, String nome) throws Exception {

        String sql = "INSERT into aluno (matricula, nome) values (?,?)";

        try {
            Connection con = bdConfig.con();
            PreparedStatement pstmt = con.prepareStatement(sql);

            pstmt.setInt(1, Integer.parseInt(matricula));
            pstmt.setString(2, nome);
            pstmt.execute();

            pstmt.close();
            con.close();
        } catch (Exception ex) {
            if (ex.getMessage().startsWith("ERROR: duplicate key value violates unique constraint")) {
                throw new Exception("0");
            }else{
                throw new Exception(ex.getMessage());
            }
        }
    }
}
