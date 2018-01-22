
package SqlTp3JDBC;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SqlTp3JDBC {

    public static void main(String[] args) throws SQLException {
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@134.214.112.67:1521:orcl","p1611201","273140");
       Statement stmt = con.createStatement();
       //ex3(stmt);
       //ex4(stmt, "F_Categories");
       //ex5(stmt,"Charles Xavier",26,80);
       //ex6(con,1);
       ex8(con);
       
       
    }

    
    public static void ex3(Statement stmt) throws SQLException {
       ResultSet result = stmt.executeQuery("select * from F_Place");
       while(result.next()){
           System.out.println(result.getString(1)+" | "+result.getString(2)+" | "+result.getString(3)+" | "+result.getString(4));
       }
    }
    
    public static void ex4(Statement stmt, String NomTable) throws SQLException{
        ResultSet result  = stmt.executeQuery("select * from " + NomTable);
        int nbcolomne = result.getMetaData().getColumnCount();
        while(result.next()){
            for (int i = 1; i<=nbcolomne ; i++){
                System.out.print(result.getString(i)+" | ");
            }
            System.out.print("\n");
        }
    }
    public static void ex5(Statement stmt,String user ,int ID ,int Age) throws SQLException {
        int result = stmt.executeUpdate("INSERT INTO F_UTILISATEURS(IDUTILISATEUR,NOMUTILISATEUR,AGE) Values ("+ID+",'"+user+"',"+Age+")");  
    }
    
    public static void ex6 (Connection con,int ID) throws SQLException {
        CallableStatement cst = con.prepareCall("{? = call notePlace(?)}");
        cst.setInt (2,ID);
        cst.registerOutParameter(1,java.sql.Types.NUMERIC);
        boolean succes = cst.execute();
        int result = cst.getInt (1);
        System.out.println(result);
    }
    
    public static void ex7 (Connection con, int ID)throws SQLException {
        CallableStatement cst = con.prepareCall("{? = call note_proprio(?)}");
        cst.setInt (2,ID);
        cst.registerOutParameter(1,java.sql.Types.NUMERIC);
        boolean succes = cst.execute();
        int result = cst.getInt (1);
        System.out.println(result);
    }
    
    public static void ex8 (Connection con) throws SQLException{
        CallableStatement cst = con.prepareCall("{call delete_place (?, ?)}");
        cst.setString(1,"Art and Entertainment");
        cst.setInt (2,1);
        boolean succes = cst.execute();
        cst.close();
    }
}