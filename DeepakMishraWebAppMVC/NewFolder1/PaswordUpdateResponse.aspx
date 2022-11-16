<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaswordUpdateResponse.aspx.cs" Inherits="CloudPro_Solution.PaswordUpdateResponse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Update Message</title>
     <link href="Customized/css/CloudRegister.css" rel="stylesheet" />
     <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <br />
        <h4 class="text-center" style="color:green;">Password Update Request Sucess!!</h4><br />
    <table style="color:maroon;">
           <tr><td><a href="PortalLogin.aspx">Click here to Login</a></td><td >|</td><td><a href="ForgotPassword.aspx">Forgot Password?</a></td></tr>
       </table>
    </div>
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <script src="fontawesome-free-5.15.3-web/js/all.min.js"></script>
</body>
</html>
