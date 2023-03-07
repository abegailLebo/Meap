<%@ Page Title="" Language="C#" MasterPageFile="~/MEAP1.Master" AutoEventWireup="true" CodeBehind="Mentors.aspx.cs" Inherits="MEAP3._0.Mentors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" >
 $(document).ready(function () { 

          $(".table").prepend($("<thead></thead").append($(this).find
          ("tr:first"))).DataTable();

 });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MEAPDB3.1ConnectionString %>" SelectCommand="SELECT * FROM mentors"></asp:SqlDataSource>

   <asp:GridView class="table table-striped table-bordered"
      ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
       <Columns>
           <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
           <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
           <asp:BoundField DataField="surname" HeaderText="Surname" SortExpression="surname" />
           <asp:BoundField DataField="campus" HeaderText="Campus" SortExpression="campus" />
           <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
           <asp:BoundField DataField="phonenum" HeaderText="Phone No" SortExpression="phonenum" />
           <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
       </Columns>
                                    
                                       
   </asp:GridView>
    <hr />
            <h3 class="text"> Mentor Profiles</h3>
        <!-- Topic Cards -->
    <div id="cards_landscape_wrap-2" >
        <div class="container">
            <div class="row" >
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 ">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="images/male1.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                    <h4>THABO DANIELS</h4>
                                    <h5>Course: Computer Science</h5>
                                    <h5>Campus: Polokwane</h5>
                                    <h5>Phone Number: 0712345678 </h5>
                                    <h5>Email Address: Daniels2@yahoo.com</h5>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="images/female.jpg" alt="" />
                                </div>
                                <div class="text-container">                                    
                                    <h4>ABIGAIL LEKHUBU</h4>
                                    <h5>Course: IT(Software Development) </h5>
                                    <h5>Campus: eMalahleni</h5>
                                    <h5>Phone Number: 0987654321</h5>
                                    <h5>Email Address: abegail1@gmail.com</h5>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="images/male2.jpg" alt="" />
                                </div>

                                <div class="text-container">
                                    <h4>LUKE ABRAHAMS</h4>
                                    <h5>Course: Computer Science </h5>
                                    <h5>Campus: Soshanguve</h5>
                                    <h5>Phone Number: 0789955454</h5>
                                    <h5>Email Address: AbL123@gmail.com</h5>
                                   </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                    <a href="">
                        <div class="card-flyer">
                            <div class="text-box">
                                <div class="image-box">
                                    <img src="images/female2.jpg" alt="" />
                                </div>
                                <div class="text-container">
                                  <h4>NADIA VAN DE BERG</h4>
                                    <h5>Course: Computer Science </h5>
                                    <h5>Campus: Pretoria</h5>
                                    <h5>Phone Number: 0667788524</h5>
                                    <h5>Email Address: nadiaVDB@gmail.com</h5>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid bg-1  ">
    <img src="images/contacttras.gif"  />
</div>
    <center <div style="font-family: Arial">
    <fieldset style="width: 500px">
        
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
                        OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </fieldset>
</div>></center>

</asp:Content>

