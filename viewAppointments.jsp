<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Appointments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Appointments</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Patient Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Service</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String dbURL = "jdbc:mysql://localhost:3306/rest"; // Replace with your DB details
                    String dbUser = "root"; // Replace with your DB username
                    String dbPassword = "sheker"; // Replace with your DB password
                    
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                        String query = "SELECT * FROM appointments";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                            out.println("<td>" + rs.getString("patientName") + "</td>");
                            out.println("<td>" + rs.getString("email") + "</td>");
                            out.println("<td>" + rs.getString("phone") + "</td>");
                            out.println("<td>" + rs.getString("service") + "</td>");
                            out.println("<td>" + rs.getDate("appointmentDate") + "</td>");
                            out.println("<td>" + rs.getTime("appointmentTime") + "</td>");
                            out.println("<td>" + rs.getString("status") + "</td>");
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<tr><td colspan='8'>Error fetching appointments.</td></tr>");
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                    }
                %>
            </tbody>
        </table>
        <div class="btn-container">
            <a href="index.jsp" class="btn">Back To Home</a>
        </div>
    </div>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Appointments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #007BFF;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Appointments</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Patient Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Service</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String dbURL = "jdbc:mysql://localhost:3306/rest"; // Replace with your DB details
                    String dbUser = "root"; // Replace with your DB username
                    String dbPassword = "sheker"; // Replace with your DB password
                    
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
                        String query = "SELECT * FROM appointments";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                            out.println("<td>" + rs.getString("patientName") + "</td>");
                            out.println("<td>" + rs.getString("email") + "</td>");
                            out.println("<td>" + rs.getString("phone") + "</td>");
                            out.println("<td>" + rs.getString("service") + "</td>");
                            out.println("<td>" + rs.getDate("appointmentDate") + "</td>");
                            out.println("<td>" + rs.getTime("appointmentTime") + "</td>");
                            out.println("<td>" + rs.getString("status") + "</td>");
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<tr><td colspan='8'>Error fetching appointments.</td></tr>");
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                    }
                %>
            </tbody>
        </table>
        <div class="btn-container">
            <a href="index.jsp" class="btn">Back To Home</a>
        </div>
    </div>
</body>
</html>
>>>>>>> e1969ed6e763746f220968b2661a7a0c6d2b3ef0
