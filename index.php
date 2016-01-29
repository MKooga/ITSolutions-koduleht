<?php
include_once("connect.php");

?>
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
            $("#1").click(function () {
                $("#1text").toggle();
            });
            $("#2").click(function () {
                $("#2text").toggle();
            });
            $("#3").click(function () {
                $("#3text").toggle();
            });
        });
    </script>
</head>
<body>
<div class="container">
    <?php   $logo = "SELECT Logo_name, Logo_img FROM Logo";
$result_logo = $connection->query($logo);
$row_logo = $result_logo->fetch_assoc();

echo'<div class="row" id="top-logo">
        <h1>'. $row_logo['Logo_name'] .'</h1>
    </div>
    <div class="row" id="bottom-logo">
        <img id="logo" src='.$row_logo['Logo_img'].'>
    </div>
    <div class="row">';
$services = "SELECT Service_id, Service_title, Service_name, Service_img, Service_description FROM Services";
$result_services = $connection->query($services);

if ($result_services->num_rows > 0) {
    // output data of each row
    while($row_services = $result_services->fetch_assoc()) {
        $loopResultService= '
            <div class="col-md-4">
             <h1>' . $row_services['Service_title'] .'</h1>
             <h3>' . $row_services['Service_name'] .'</h3>
             <button id=' . $row_services['Service_id'] .'>Toggle</button>
            <p class="Hidden" id=' . $row_services['Service_id'] . 'text>' . $row_services['Service_description'] .'</p>
            </div>

            ';

        echo $loopResultService;
    }

} else {
    echo "0 results";
}

   echo'
</div>
<div class="row"><h1>Portfolio</h1>';
$portfolio = "SELECT Portfolio_name, Portfolio_img, Portfolio_description FROM Portfolio";
$result_portfolio = $connection->query($portfolio);

if ($result_portfolio->num_rows > 0) {
    // output data of each row
    while($row_portfolio = $result_portfolio->fetch_assoc()) {
        $loopResultPortfolio= '
            <div class="col-md-4">
             <h1>' . $row_portfolio['Portfolio_name'] .'</h1>
             <img src='.$row_portfolio['Portfolio_img'].'>
            <p>' . $row_portfolio['Portfolio_description'] .'</p>
            </div>

            ';

        echo $loopResultPortfolio;
    }

} else {
    echo "0 results";
}
echo'</div>';

$team_contact = "SELECT Contact_name, Contact_img, Contact_description FROM team_contact";
$result_team = $connection->query($team_contact);
$row_team = $result_team->fetch_assoc();

echo'<div class="row">
        <h1>'. $row_team['Contact_name'] .'</h1>
        <img src='.$row_team['Contact_img'].'>
        <p>'. $row_team['Contact_description'] .'</p>
    </div>
    <div class="row">';

$contact = "SELECT Contact_name, Contact_description, Contact_email, Contact_phone, Contact_img FROM Contact_info";
$result_contact = $connection->query($contact);

if ($result_contact->num_rows > 0) {
    // output data of each row
    while($row_contact = $result_contact->fetch_assoc()) {
        $loopResultContact= '
            <div class="col-md-4">
             <h3>' . $row_contact['Contact_name'] .'</h3>
             <p>' . $row_contact['Contact_description'] .'</p>
             <img src='.$row_contact['Contact_img'].'>
            <p>E-mail: ' . $row_contact['Contact_email'] .'</p>
            <p>Tel: ' . $row_contact['Contact_phone'] .'</p>
            </div>

            ';

        echo $loopResultContact;
    }

} else {
    echo "0 results";
}
echo'</div>


<div class="row">';
$socialLinks = "SELECT Link_source, Link_img FROM Social_links";
$result_links = $connection->query($socialLinks);

if ($result_links->num_rows > 0) {
    // output data of each row
    while($row_links = $result_links->fetch_assoc()) {
        $loopResultLinks= '
            <div class="col-md-4">
             <a href=' . $row_links['Link_source'] .'><img id="link" src=' . $row_links['Link_img'] .'></a>
            </div>

            ';

        echo $loopResultLinks;
    }

} else {
    echo "0 results";
}
echo '</div></div></div>';

$connection->close();
?>