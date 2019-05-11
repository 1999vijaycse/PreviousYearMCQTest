<%
    session.setAttribute("uname",null);
    session.invalidate();
    out.println("Log Out Successfully.....");
    response.sendRedirect("login.jsp");
    %>