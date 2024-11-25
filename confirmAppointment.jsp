<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String patientName = request.getParameter("patientName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String service = request.getParameter("service");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    // Database connection parameters
    String dbURL = "jdbc:mysql://localhost:3306/rest"; // Replace with your DB details
    String dbUser = "root"; // Replace with your DB username
    String dbPassword = "sheker"; // Replace with your DB password

    String message = "Appointment Booked Successfully!";
    Connection conn = null;
    PreparedStatement ps = null;

    try {
        // Validate form inputs
        if (patientName != null && email != null && phone != null && service != null && date != null && time != null) {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert appointment into the database
            String sql = "INSERT INTO appointments (patientName, email, phone, service, appointmentDate, appointmentTime, status) VALUES (?, ?, ?, ?, ?, ?, 'Pending')";
            ps = conn.prepareStatement(sql);
            ps.setString(1, patientName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, service);
            ps.setString(5, date);
            ps.setString(6, time);
            ps.executeUpdate();
        } else {
            message = "Invalid appointment details provided!";
        }
    } catch (Exception e) {
        e.printStackTrace();
        message = "An error occurred while booking the appointment.";
    } finally {
        // Close resources
        if (ps != null) try { ps.close(); } catch (SQLException ignored) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message {
            font-size: 24px;
            font-weight: bold;
            color: white;
            text-align: center;
            background-color: blue;
            padding: 30px;
            border-radius: 50px;
        }
    </style>
</head>
<body>
    <div class="message">
        <%= message %><br>
        <% if ("Appointment Booked Successfully!".equals(message)) { %>
            Name: <%= patientName %><br>
            Date: <%= date %><br>
            Time: <%= time %>
        <% } %>
    </div>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String patientName = request.getParameter("patientName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String service = request.getParameter("service");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    // Database connection parameters
    String dbURL = "jdbc:mysql://localhost:3306/rest"; // Replace with your DB details
    String dbUser = "root"; // Replace with your DB username
    String dbPassword = "sheker"; // Replace with your DB password

    String message = "Appointment Booked Successfully!";
    Connection conn = null;
    PreparedStatement ps = null;

    try {
        // Validate form inputs
        if (patientName != null && email != null && phone != null && service != null && date != null && time != null) {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert appointment into the database
            String sql = "INSERT INTO appointments (patientName, email, phone, service, appointmentDate, appointmentTime, status) VALUES (?, ?, ?, ?, ?, ?, 'Pending')";
            ps = conn.prepareStatement(sql);
            ps.setString(1, patientName);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, service);
            ps.setString(5, date);
            ps.setString(6, time);
            ps.executeUpdate();
        } else {
            message = "Invalid appointment details provided!";
        }
    } catch (Exception e) {
        e.printStackTrace();
        message = "An error occurred while booking the appointment.";
    } finally {
        // Close resources
        if (ps != null) try { ps.close(); } catch (SQLException ignored) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignored) {}
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .message {
            font-size: 24px;
            font-weight: bold;
            color: white;
            text-align: center;
            background-color: blue;
            padding: 30px;
            border-radius: 50px;
        }
    </style>
</head>
<body>
    <div class="message">
        <%= message %><br>
        <% if ("Appointment Booked Successfully!".equals(message)) { %>
            Name: <%= patientName %><br>
            Date: <%= date %><br>
            Time: <%= time %>
        <% } %>
    </div>
</body>
</html>
>>>>>>> e1969ed6e763746f220968b2661a7a0c6d2b3ef0
