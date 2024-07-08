<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            width: 100%;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .create-account {
            text-align: center;
            margin-top: 20px;
        }
        .create-account input[type="submit"] {
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .create-account input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
    <script type="text/javascript">
        function validatePassword() {
            var password = document.getElementById("password").value;
            if (password.length < 8) {
                alert("Password must be at least 8 characters long.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h1>Create Your Account : </h1>
<div class="container">
    <form action="create" method="post" onsubmit="return validatePassword()">
        <div class="form-group">
            <label for="username">Enter Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Enter Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Create">
        </div>
    </form>
</div>
</body>
</html>
