<%@ Page Title="" Language="C#" MasterPageFile="~/MEAP1.Master" AutoEventWireup="true" CodeBehind="Homepg.aspx.cs" Inherits="MEAP3._0.Homepg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
  
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  .bg-1 { 
    background-color: #0CBAD2;
    color: #ffffff;
  }
  .bg-2 { 
    background-color: #474e5d;
    color: #ffffff;
  }
  .bg-3 { 
    background-color: #ffffff;
    color: #555555;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  </style>
</head>
<body>

<div class="container-fluid bg-1 text-center">
    <img src="images/banner23.jpg" />
 
</div>



<div class="container-fluid bg-3 text-center">    
  <h3>OUR 3 PRIMARY FUNCTIONS</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>View your time table from Monday to Saturday.</p>
      <img src="images/schooltable.jpg" alt="Image" width="350" height="300">
    </div>
    <div class="col-sm-4"> 
      <p>View students for particular week day and session time</p>
      <img src="images/viewtodo.jpg" alt="Image" width="350" height="300">
    </div>
    <div class="col-sm-4"> 
      <p>Book a session with Student Development Support(SDS).</p>
      <img src="images/booksession.jpg" alt="Image" width="350" height="300">
    </div>
  </div>
</div>



<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
        <img src="images/signin.jpg" />
    </div>
    <div class="col-sm-8">
      <h2>Login</h2>
      <!--<h4><strong>MISSION:</strong> Make Text Bold-->
          <h4>Login into your user account with your credentials </h4>
    </div>
  </div>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>View Class Time Table</h2>
    <h4>View weekly class time table</h4>
    </div>
    <div class="col-sm-4">
        <img src="images/managetime.gif" width="400" height="320" />
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
        <img src="images/appointmentfid.gif" />
    </div>
    <div class="col-sm-8">
      <h2>Book session </h2>
      <!--<h4><strong>MISSION:</strong> Make Text Bold-->
          <h4>Book a session weekly</h4>
    </div>
  </div>
</div>
    <div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Status </h2>
    <h4>Wait for session approval status</h4>
    </div>
    <div class="col-sm-4">
        <img src="images/managetime.gif" width="400" height="320" />
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
        <img src="images/appointmentfid.gif" />
    </div>
    <div class="col-sm-8">
      <h2>Session approved </h2>
      <!--<h4><strong>MISSION:</strong> Make Text Bold-->
          <h4>Attend session  with SDS</h4>
    </div>
  </div>
</div>
</body>
</html>

</asp:Content>
