<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Availability</title>
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

        .available {
            color: green;
            font-weight: bold;
        }

        .booked {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Availability</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
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
                        String query = "SELECT * FROM availability ORDER BY date, time";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                            out.println("<td>" + rs.getDate("date") + "</td>");
                            out.println("<td>" + rs.getTime("time") + "</td>");
                            String status = rs.getString("status");
                            if ("available".equalsIgnoreCase(status)) {
                                out.println("<td class='available'>Available</td>");
                            } else {
                                out.println("<td class='booked'>Booked</td>");
                            }
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<tr><td colspan='4'>Error fetching availability.</td></tr>");
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                    }
                %>
            </tbody>
        </table>
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
    <title>View Availability</title>
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

        .available {
            color: green;
            font-weight: bold;
        }

        .booked {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Availability</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
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
                        String query = "SELECT * FROM availability ORDER BY date, time";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getInt("id") + "</td>");
                            out.println("<td>" + rs.getDate("date") + "</td>");
                            out.println("<td>" + rs.getTime("time") + "</td>");
                            String status = rs.getString("status");
                            if ("available".equalsIgnoreCase(status)) {
                                out.println("<td class='available'>Available</td>");
                            } else {
                                out.println("<td class='booked'>Booked</td>");
                            }
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<tr><td colspan='4'>Error fetching availability.</td></tr>");
                    } finally {
                        if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                        if (stmt != null) try { stmt.close(); } catch (SQLException ignored) {}
                        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
>>>>>>> e1969ed6e763746f220968b2661a7a0c6d2b3ef0
