<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="admin_login.css">
    <title>SolutionIT</title>
</head>
<body>
<div class="wrapper" align="center">

    <div class="container">

            <span>
                <h1 style="color: orangered" font-size="35">SolutionIT</h1>
        </span>
        <h2 style="color: grey">IT-SERVICES</h2>

        <br>

        <form class="form-signin" action="" method="post">
            <h2 class="form-signin-heading">Please sign in</h2>

            <p class="form-signin-heading" id="errorMsg" style="color: red"></p>
            <label for="inputAccountID" class="sr-only"></label>
            <input name="username" id="AccountID" class="form-control" placeholder="Account ID" required autofocus>
            <br>
            <label for="inputPassword" class="sr-only"></label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password"
                   required>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">SIGN IN</button>
        </form>

    </div>
</div>
<!--/container -->
</body>
</html>


