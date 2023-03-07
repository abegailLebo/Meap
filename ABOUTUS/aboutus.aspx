<%@ Page Title="" Language="C#" MasterPageFile="~/MEAP1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="MEAP3._0.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>   
<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
</head>
<body>

<form class="form-inline">
  <div class="input-group">
 
  </div>
</form>

  <!-- Container (About Section) -->
  <div class="container-fluid" >
  <div class="row">
    <div class="col-sm-8">
    <h2><strong>About MEAP</strong> </h2>  
      <h4>My Everday Assitant Planner</h4> 
      <h4>MEAP is the easy, free, flexible, and visual way to manage your Tasks and classes and book councelling sessions</h4>
    </div>
    <div class="col-sm-4">
        <img src="images/thingspossible.jpg" />
    </div>
  </div>
</div>

  <!-- (Our Mission Section) -->
  <div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
        <img src="images/view%20schedule.jpg" />
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2>
      <h4><strong>MISSION:</strong> Ensure students are able to manage time based on schedule</h4>
        <h4> that allows them to book sessions with SDS personel.</h4>
        <h4> And for sds to be manage student bookings on the site</h4>
    </div>
  </div>
</div>
  <!-- (Special Quotes carousel Section) -->
  <center><h2>Special Quotes</h2></center>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel" style="height: 200px">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"The key is not to prioritize what's on your schedule, but to schedule your priorities.
"<br><span>Stephen Covey</span></h4>
        
      </div>
      <div class="item">
        
        <h4>"A schedule defends from chaos and whim. A net for catching days."<br><span>Annie Dillard</span></h4>
              
      </div>
      <div class="item">
        <h4>"The only reason I'm coming out here tomorrow is the schedule says I have to."<br><span>Sparky Anderson
</span></h4>
      </div>
    </div>
  
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


</body>
</html>
    <a href="Homepg.aspx"> Back to home </a><br /><br />
</asp:Content>


