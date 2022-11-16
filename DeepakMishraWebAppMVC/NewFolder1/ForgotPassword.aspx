<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CloudPro_Solution.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>CloudPro Login</title>
    <link href="Customized/css/CloudForgot.css" rel="stylesheet" />
    <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <script src="JQery/jquery-3.6.0.min.js"></script>
    <script src="Customized/js/CloudLogin.js"></script>
    <script>
        $(document).ready(function () {
            $('#btnReset').click(function checkblank() {
                var a = $('#txtEmail').val();
               
                if (a == '' ) {
                    alert('Email can not be blank, please enter your registered email id.');
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
   <div class="centerdiv">

       <table style="border:1px solid;color:maroon;font-weight:bold;height:250px;width:550px;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-style:italic;">
         <tr> <td><img alt="cloudpro" src="Multimedia/Images/Green-Cloud.jpg" height="65" width="80" style="padding-left:10px;" /></td><td style="border-left:1px solid;"><b>Cloud Pro Solution Pvt. Ltd.<br /></b><p style="font-size:xx-small">Cloud based payroll solution</p></td></tr>
          <tr style="border-top:1px solid;"> <td></td><td></td></tr>
           <tr><td>Email:</td><td>
               <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true" placeholder="Enter registered email" BackColor="LightYellow" MaxLength="30" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email can not be blank" ForeColor="Red" Font-Size="Smaller" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please enter correct email id" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ForeColor="Red" Font-Size="Smaller"></asp:RegularExpressionValidator>     
                              </td></tr>
             
           <tr><td></td><td>
               <asp:Button ID="btnReset" OnClientClick="checkblank();" OnClick="btnReset_Click" runat="server" Text="Send Reset Email" CssClass="btn btn-success btn-sm" Width="200px" /></td></tr>
           <tr><td></td><td style="font-size:xx-small;">Copyright &copy CloudPro 2021 | All right resereved.</td></tr>

           
       </table>
       <table style="color:maroon;">
           <tr><td><a href="PortalLogin.aspx">Click to Login</a></td><td >|</td><td><a href="Register.aspx">Click to Register</a></td></tr>
       </table>
       <div class="container">
           <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
       </div>
    </div>
    </div>
    </form>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <script src="fontawesome-free-5.15.3-web/js/all.min.js"></script>
</body>
</html>
