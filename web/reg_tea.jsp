<%-- 
    Document   : reg
    Created on : Nov 26, 2016, 11:58:17 AM
    Author     : jcdenton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import ="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    String county = session.getAttribute("county").toString();
    String town = session.getAttribute("town").toString();
    String schname = request.getParameter("schname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mscpsp?useUnicode=yes&characterEncoding=UTF-8",
            "root", "ncc1701e");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select id from school where county='" + county + "' and "
            + "town='" + town + "' and "
            + "name='" + schname + "'");
    rs.next();
    session.setAttribute("schid", rs.getInt("id"));
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Εγγραφή Εκπαιδευτικού</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Εγγραφή Εκπαιδευτικού</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th colspan="2">Εισαγωγή στοιχείων χρήστη:</th>
                        </tr>
                        <tr>
                            <td>Όνομα</td>
                            <td><input type="text" name="fname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Επίθετο</td>
                            <td><input type="text" name="lname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="email" value="" /></td>
                        </tr>
                        <tr>
                            <td>Τηλέφωνο</td>
                            <td><input type="text" name="phone" value="" /></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td><input type="text" name="uname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Επικύρωση" /></td>
                            <td><input type="reset" value="Καθάρισμα" /></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>