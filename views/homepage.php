<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SolutionsIT</title>
    <link type="text/css" rel="stylesheet"
          href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet"
          href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#one").click(function () {
                $("#text_one").toggle();
            });
            $("#two").click(function () {
                $("#text_two").toggle();
            });
            $("#three").click(function () {
                $("#text_three").toggle();
            });
        });
    </script>
</head>
<body>
<div class="container">

    <?php include 'views/header.php'; ?>

    <div class="row" id="top-logo">
        <h1>SolutionsIT</h1>
    </div>
    <div class="row" id="bottom-logo">
        <img id="logo" src="assets/banner.jpg">
    </div>
    <div class="row" id="products">
        <div class="col-md-4">
            <h1>Web Developement</h1>
            <button id="one">Toggle</button>
            <p class="Hidden" id="text_one">Desc</p>
        </div>
        <div class="col-md-4">
            <h1>Recover lost Data</h1>
            <button id="two">Toggle</button>
            <p class="Hidden" id="text_two">Desc</p>
        </div>
        <div class="col-md-4">
            <h1>IT Maintenence</h1>
            <button id="three">Toggle</button>
            <p class="Hidden" id="text_three">Desc</p>
        </div>
    </div>
    <div class="row" id="portfolio">
        <h1>Portfolio</h1>

        <div class="col-md-4">
            <h1>Nothing</h1>

            <p>Nothing.</p>
        </div>
        <div class="col-md-4">
            <h1>Nothing</h1>

            <p>Nothing.</p>
        </div>
        <div class="col-md-4">
            <h1>Nothing</h1>

            <p>Nothing.</p>
        </div>
    </div>
    <div class="row" id="contact">
        <div style="height:357px;" class="col-md-3">
            <h1>Contact Info</h1>

            <p>Company description.</p>
        </div>
        <div class="col-md-3">
            <h2>Rajur Hint</h2>
            <img src="assets/placeholder.gif">

            <p>rajur.hint@khk.ee</p>
        </div>
        <div class="col-md-3">
            <h2>Martin Kooga</h2>
            <img src="assets/placeholder.gif">

            <p>martin.kooga@khk.ee</p>
        </div>
        <div class="col-md-3">
            <h2>Hardi Kaiv</h2>
            <img src="assets/placeholder.gif">

            <p>hardi.kaiv@khk.ee</p>
        </div>
    </div>
    <div class="row" id="links">
        <div class="col-sm-12">
            <a href="www.facebook.com"><img id="fb" src="assets/fb-art.jpg"></a>
        </div>

    </div>
</div>
</body>
</html>