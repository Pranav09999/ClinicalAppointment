<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinic Appointment Scheduling</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #007BFF;
            color: #fff;
            padding: 15px 20px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 24px;
            margin: 0;
        }

        .nav-links {
            margin-top: 10px;
        }

        .nav-links a {
            text-decoration: none;
            color: #fff;
            margin: 0 10px;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #ffeeba;
        }

        .container {
            margin: 50px auto;
            max-width: 800px;
            text-align: center;
            flex: 1; /* Pushes the footer to the bottom */
        }

        .container h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333;
        }

        .container a {
            display: inline-block;
            margin: 20px;
            padding: 12px 25px;
            text-decoration: none;
            font-size: 18px;
            color: #fff;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .container a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px 20px;
        }

        footer p {
            margin: 0;
            font-size: 14px;
        }

        footer a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <h1>Clinic Appointment Scheduling System</h1>
        <div class="nav-links">
            <a href="/prav/bookAppointment.jsp">Book Appointment</a>
            <a href="/prav/viewAppointments.jsp">View Appointments</a>
            <a href="/prav/viewAvailability.jsp">View Availability</a>
        </div>
    </header>

    <div class="container">
        <h2>Welcome to Our Clinic</h2>
        <p>Your health is our priority. Book an appointment, check availability, or view your scheduled appointments below.</p>
        <a href="/prav/bookAppointment.jsp">Book an Appointment</a>
        <a href="/prav/viewAvailability.jsp">View Availability</a>
	<a href="/prav/viewAppointments.jsp">View Appointments</a>
    </div>

    <footer>
        <p>&copy; 2024 Clinic Appointment Scheduling System. All rights reserved.</p>
        <p>
            For support, contact us at
            <a href="mailto:support@clinicappointments.com">support@clinicappointments.com</a>.
        </p>
    </footer>
</body>
</html>
