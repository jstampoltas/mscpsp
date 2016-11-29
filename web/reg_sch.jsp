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
%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Εγγραφή Εκπροσώπου Σχολείου</title>
    </head>
    <body>
        <form method="post" action="reg_sch2.jsp">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Εισαγωγή στοιχείων σχολείου:</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Όνομα σχολείου</td>
                            <td><input type="text" name="schname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Κατηγορία</td>
                            <td><select id="schtype" name="schtype">
                                    <option value="Λύκειο">Λύκειο</option>
                                    <option value="Δημοτικό">Δημοτικό</option>
                                    <option value="Α.Ε.Ι.">Α.Ε.Ι.</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>Διεύθυνση</td>
                            <td><input type="text" name="schadd" value="" /></td>
                        </tr>
                        <tr>
                            <td>Τηλέφωνο</td>
                            <td><input type="text" name="schphone" value="" /></td>
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