package subway;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class using {

    public String role;
    public String anllrole[]=new String[5];
    public int temp[]=new int[5];
    public String onrolestation[]=new String[30];
    public String onstationatroles[]=new String[5];


    public int findshortrole(String startname,String stopname) throws Exception {
        int temps=-1;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kebiao", "root", "123456");
        String sql="WITH RECURSIVE transfer(startname, stopname, stops, paths) AS (\r\n"
                + "SELECT sname, snext, 1 stops, \r\n"
                + "       CAST(concat(sline,sname,'->',sline,snext) AS char(1000)) AS paths\r\n"
                + "FROM biejing_subway\r\n"
                + "WHERE sname = '"+startname+"'\r\n"
                + "UNION ALL\r\n"
                + "SELECT t.startname, s.snext, stops+1, concat(paths, '->', s.sline, s.snext)\r\n"
                + "FROM transfer t \r\n"
                + "JOIN biejing_subway s \r\n"
                + "ON (t.stopname = s.sname AND instr(paths, s.snext)=0)\r\n"
                + ")\r\n"
                + "SELECT *\r\n"
                + "FROM transfer\r\n"
                + "WHERE stopname = '"+stopname+"';";
        Statement stmt= conn.createStatement();
        ResultSet find=stmt.executeQuery(sql);
        find.next();
        role=find.getString(4);
        temps=find.getInt(3);

        find.close();
        stmt.close();
        conn.close();

        return temps;
    }


    public int findfewrole(String startname,String stopname) throws Exception {
        int number=10,location=-1;
        char roles[]=new char[1000];
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kebiao", "root", "123456");
        String sql="WITH RECURSIVE transfer(startname, stopname, stops, paths) AS ( "
                + "SELECT sname, snext, 1 stops, "
                + "       CAST(concat(sline,sname,'->',sline,snext) AS char(1000)) AS paths "
                + "FROM biejing_subway "
                + "WHERE sname = '"+startname+"' "
                + "UNION ALL "
                + "SELECT t.startname, s.snext, stops+1, concat(paths, '->', s.sline, s.snext) "
                + "FROM transfer t "
                + "JOIN biejing_subway s "
                + "ON (t.stopname = s.sname AND instr(paths, s.snext)=0) "
                + ") "
                + "SELECT * "
                + "FROM transfer "
                + "WHERE stopname = '"+stopname+"';";
        Statement stmt= conn.createStatement();
        ResultSet find=stmt.executeQuery(sql);
        int s=0;
        while(find.next()) {
            anllrole[s]=new String();
            anllrole[s]=find.getString(4);
            temp[s]=find.getInt(3);
            s++;
        }

        find.close();
        stmt.close();
        conn.close();



        for(int j=0;anllrole[j]!=null;j++) {
            int change=0;
            char station='#';
            roles=anllrole[j].toCharArray();
            int lengths=roles.length;


            for(int k=0;k<lengths-1;k++) {
                System.out.print(roles[k]);
                if(k==0)station=roles[0];
                if(roles[k]=='>') {
                    if(!(roles[k+1]==station)) {
                        change=change+1;
                        station=roles[k+1];
                    }
                }
            }
            if(change<number) {
                location=j;
                number=change;
            }

        }


        return location;
    }


    public int findstationsatrole(String roles) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kebiao", "root", "123456");
        roles=roles+"号线";
        String sql="SELECT  sname FROM biejing_subway"
                + " WHERE sline='"+roles+"';";
        Statement stmt= conn.createStatement();
        ResultSet find=stmt.executeQuery(sql);
        int stationsnumber=-1;
        while(find.next()) {
            stationsnumber++;
            onrolestation[stationsnumber]=new String();
            onrolestation[stationsnumber]=find.getString(1);

        }

        find.close();
        stmt.close();
        conn.close();

        return stationsnumber;
    }

    public int findrolesatstation(String stations) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/kebiao", "root", "123456");
        String sql="SELECT  sline FROM biejing_subway"
                + " WHERE sname='"+stations+"';";
        Statement stmt= conn.createStatement();
        ResultSet find=stmt.executeQuery(sql);
        int rolesnumber=-1,zhuanhuan=0;
        while(find.next()) {
            if(zhuanhuan%2==0) {
                rolesnumber++;
                onstationatroles[rolesnumber]=new String();
                onstationatroles[rolesnumber]=find.getString(1);

            }
            System.out.print(rolesnumber);
            zhuanhuan++;
        }

        find.close();
        stmt.close();
        conn.close();
        return rolesnumber;
    }

}
