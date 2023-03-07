<%@ Page Title="" Language="C#" MasterPageFile="~/MEAP1.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="MEAP3._0.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class ="row">
            <div class="col-md-6 mx-auto">
               <center> <div class="card"  style="width: 20rem;"></center>
                    <div class="card-body  w-100">

                        <div class="row">
                            <div class="col">
                                <center><img src="images/admin.png" />
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control w-100" ID="TextBox1"
                               runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>
                                <br />
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control w-100" ID="TextBox2"
                               runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                 <div class="form-group">
                                     <asp:Button class="btn btn-primary btn-success " ID="Button1" runat="server" width="100%" Text="Login" />
                                </div>
                                <br />
                               

                            </div>
                        </div>

                    </div>
                </div>

                <a href="Homepg.aspx"> Back to home </a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
