<%-- 
    Document   : reg
    Created on : Nov 26, 2016, 11:58:17 AM
    Author     : jcdenton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Εγγραφή</title>
    </head>
    <body>
        <form method="post" action="reg1.jsp">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Παρακαλώ επιλέξτε ένα από τα παρακάτω</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="2">Είστε ένας <select id="type" name="type">
                                    <option value="1" selected>Εκπρόσωπος Σχολείου</option>
                                    <option value="3">Εκπαιδευτικός</option>
                                    <option value="2">Μαθητής / Φοιτητής</option>
                                    <option value="4">Γονέας</option>                               
                                </select></td>
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