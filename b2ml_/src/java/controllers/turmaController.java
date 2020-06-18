package controllers;

import database.bdConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class turmaController {

    public void createTurma(String sala, String da, String de) throws Exception {

        String sql = "INSERT into turma(sala, data_abertura, data_encerramento) values (?,to_date(?, 'YYYY-MM-DD'), to_date(?, 'YYYY-MM-DD'))";

        try {
            Connection con = bdConfig.con();
            PreparedStatement pstmt = con.prepareStatement(sql);

            pstmt.setString(1, sala);
            pstmt.setString(2, da);
            pstmt.setString(3, de);
            pstmt.execute();

            pstmt.close();
            con.close();
        } catch (Exception ex) {
            if (ex.getMessage().startsWith("ERROR: duplicate key value violates unique constraint")) {
                throw new Exception("0");
            } else {
                throw new Exception(ex.getMessage());
            }
        }
    }
}
