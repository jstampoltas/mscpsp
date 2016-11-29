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
    String town = request.getParameter("town");
    session.setAttribute("town", town);
    String type = session.getAttribute("type").toString();
    String county = session.getAttribute("county").toString();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mscpsp?useUnicode=yes&characterEncoding=UTF-8",
            "root", "ncc1701e");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select distinct name from school where county='" + county + "' "
            + "and town='" + town + "'");
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Εγγραφή νέου χρήστη</title>
    </head>
    <body>

        <%
            if (type.equals("2")) {
                out.println("<form method=\"post\" action=\"reg_stu.jsp\">");
            } else if (type.equals("3")) {
                out.println("<form method=\"post\" action=\"reg_tea.jsp\">");
            } else if (type.equals("4")) {
                out.println("<form method=\"post\" action=\"reg_par.jsp\">");
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
                <tr><td colspan="2">Επιλέξτε Σχολείο:
                        <select id="schname" name="schname">
                            <%                                        while (rs.next()) {
                                    out.println("<option value=\"" + rs.getString("name") + "\">" + rs.getString("name") + "</option>");
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