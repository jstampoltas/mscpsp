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
    String county = request.getParameter("county");
    session.setAttribute("county", county);
    String type = session.getAttribute("type").toString();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mscpsp?useUnicode=yes&characterEncoding=UTF-8",
            "root", "ncc1701e");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select distinct town from school where county='" + county + "'");
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Εγγραφή νέου χρήστη</title>
    </head>
    <body>

        <%
            if (type.equals("1")) {
                out.println("<form method=\"post\" action=\"reg_sch.jsp\">");
            } else {
                out.println("<form method=\"post\" action=\"reg3.jsp\">");
            }
        %>
    <center>
        <table border="1" width="30%" cellpadding="5">
            <thead>
                <tr>
                    <th colspan="2">Εγγραφή νέου χρήστη</th>
                </tr>
            </thead>
            <tbody>
                <tr><td colspan="2">Επιλέξτε Πόλη:
                        <select id="town" name="town">
                            <%                                        while (rs.next()) {
                                    out.println("<option value=\"" + rs.getString("town") + "\">" + rs.getString("town") + "</option>");
                                }
                            %>                             
                        </select>
                    </td></tr> 
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