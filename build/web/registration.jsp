<%@ page import ="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    String schid = session.getAttribute("schid").toString();
    String type = session.getAttribute("type").toString();
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mscpsp?useUnicode=yes&characterEncoding=UTF-8",
            "root", "ncc1701e");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into members(type, status, first_name, last_name, phone, school, email, uname, pass) values "
            + "('" + type + "', 'tem', '" + fname + "','" + lname + "','" + phone + "', '" + schid + "', '" + email + "','" + uname + "','" + pass + "')");

    if (i > 0) {
        out.print("Registration Successfull!");
    } else {
        out.print("Error!");
    }

%>