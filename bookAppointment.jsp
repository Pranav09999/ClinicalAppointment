<<<<<<< HEAD
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
        }

        input, button {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        input:focus {
            outline: none;
            border-color: #007BFF;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book an Appointment</h1>
        <form action="confirmAppointment.jsp" method="post">
            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" id="patientName" name="patientName" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>

            <div class="form-group">
                <label for="service">Service:</label>
                <input type="text" id="service" name="service" placeholder="Enter the required service" required>
            </div>

            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required>
            </div>

            <div class="form-group">
                <label for="time">Time:</label>
                <input type="time" id="time" name="time" required>
            </div>

            <button type="submit">Book Appointment</button>
        </form>
    </div>
</body>
</html>
=======
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
        }

        input, button {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        input:focus {
            outline: none;
            border-color: #007BFF;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book an Appointment</h1>
        <form action="confirmAppointment.jsp" method="post">
            <div class="form-group">
                <label for="patientName">Patient Name:</label>
                <input type="text" id="patientName" name="patientName" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>

            <div class="form-group">
                <label for="service">Service:</label>
                <input type="text" id="service" name="service" placeholder="Enter the required service" required>
            </div>

            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required>
            </div>

            <div class="form-group">
                <label for="time">Time:</label>
                <input type="time" id="time" name="time" required>
            </div>

            <button type="submit">Book Appointment</button>
        </form>
    </div>
</body>
</html>
>>>>>>> e1969ed6e763746f220968b2661a7a0c6d2b3ef0
