<%@ Page Title="" Language="C#" MasterPageFile="~/MEAP1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MEAP3._0.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
     
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  </style>
</head>
<body>


<div class="container-fluid bg-1 text-center ">
    <img src="images/contactus.jpg" width="720" />
</div>
<div class="container text-center">
  <h3>STUDENT DEVELOPMENT SUPPORT</h3>
  <p><em>For The Students</em></p>
  <p>The Directorate of Student Development and Support (SDS)</p>
  <p>facilitates the academic success and personal well-being of individual students. </p>
  <p>The Directorate is organised in service unite per learning site to ensure accessibility of services, </p>
  <p>although certain services are centralised due to their nature.​</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Dr Shafeeka Dockrat</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="images/tut.jpg" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p>Director: Student Development and Support</p>
        <p>Tel: +27 12 382 4260</p>
        <p>Email: DockratS@tut.ac.za</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Thea Stopforth</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="images/tut.jpg" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        <p>Administrator</p>
        <p>Tel: +27 12 382 4260</p>
        <p>Email: StopforthT@tut.ac.za</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>TUT Contact Centre</strong></p><br>
      

      <a href="#demo3" data-toggle="collapse">
        <img src="images/tut.jpg" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p>Tel: 086 110 2421</p>
        <p>Email: general@tut.ac.za</p>
        <p>SMS Number: 30655</p>
      </div>
    </div>
  </div>
</div>

<center <div style="font-family: Arial">
    <fieldset style="width: 500px">
        <legend title="Contact us">Contact us</legend>
        <table>
            <tr>
                <td>
                    <b>Name:</b>
                </td>
                <td>
                    <asp:TextBox 
                        ID="txtName" 
                        Width="400px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator1" 
                        runat="server"
                        ControlToValidate="txtName" 
                        ErrorMessage="Name is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Email:</b>
                </td>
                <td>
                    <asp:TextBox 
                        ID="txtEmail" 
                        Width="400px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        Display="Dynamic" 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator2"
                        runat="server" 
                        ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required"
                        Text="*">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator 
                        Display="Dynamic" 
                        ForeColor="Red" 
                        ID="RegularExpressionValidator1"
                        runat="server" 
                        ErrorMessage="Invalid Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail"
                        Text="*">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Subject:</b>
                </td>
                <td>
                    <asp:TextBox 
                        ID="txtSubject" 
                        Width="400px" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator3" 
                        runat="server"
                        ControlToValidate="txtSubject" 
                        ErrorMessage="Subject is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top">
                    <b>Comments:</b>
                </td>
                <td style="vertical-align: top">
                    <asp:TextBox 
                        ID="txtComments" 
                        Width="400px" 
                        TextMode="MultiLine" 
                        Rows="5" 
                        runat="server">
                    </asp:TextBox>
                </td>
                <td style="vertical-align: top">
                    <asp:RequiredFieldValidator 
                        ForeColor="Red" 
                        ID="RequiredFieldValidator4" 
                        runat="server"
                        ControlToValidate="txtComments" 
                        ErrorMessage="Comments is required" 
                        Text="*">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary 
                        HeaderText="Please fix the following errors" 
                        ForeColor="Red"
                        ID="ValidationSummary1" 
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label 
                        ID="lblMessage" 
                        runat="server" 
                        Font-Bold="true">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button 
                        ID="Button2" 
                        runat="server" 
                        Text="Submit" 
                        OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </fieldset>
</div>></center>
   
</body>

</html>


    
</asp:Content>
