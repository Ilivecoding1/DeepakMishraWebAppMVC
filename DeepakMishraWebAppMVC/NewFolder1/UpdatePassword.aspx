<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePassword.aspx.cs" Inherits="CloudPro_Solution.UpdatePassword" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CloudPro Login</title>
    <link href="Customized/css/CloudUPdate.css" rel="stylesheet" />
    <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <link href="Customized/css/PassBar.css" rel="stylesheet" />
    <script src="JQery/jquery-3.6.0.min.js"></script>
    <script src="Customized/js/CloudLogin.js"></script>
    <script>
        $(document).ready(function () {
            $('#btnSavepass').click(function checkblank() {
                var a = $('#txtPassword').val();
                var b = $('#txtPassword1').val();

                if (a == '' || b == '') {
                    alert('Password can not be blank.');
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="centerdiv">

                <table style="border: 1px solid; color: maroon; font-weight: bold; height: 250px; width: 550px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-style: italic;">
                    <tr>
                        <td>
                            <img alt="cloudpro" src="Multimedia/Images/Green-Cloud.jpg" height="65" width="80" style="padding-left: 10px;" /></td>
                        <td style="border-left: 1px solid;"><b>Cloud Pro Solution Pvt. Ltd.<br />
                        </b>
                            <p style="font-size: xx-small">Cloud based payroll solution</p>
                        </td>
                    </tr>
                    <tr style="border-top: 1px solid;">
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password" BackColor="LightYellow" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password required" ForeColor="Red" Font-Size="Smaller" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        </td>
                        <td>

                            <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtPassword" DisplayPosition="RightSide" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="10" PrefixText="Password Strength: " RequiresUpperAndLowerCaseCharacters="True" TextStrengthDescriptions="Poor;Weak;Average;Nice;Strong;" BarBorderCssClass="BarBorder" TextCssClass="" StrengthStyles="Poor;Weak;Average;Nice;Strong;" HelpStatusLabelID="Label1" HelpHandlePosition="RightSide" />
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td>
                            <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password" placeholder="Confirm Password" BackColor="LightYellow" MaxLength="30" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm Password required" ForeColor="Red" Font-Size="Smaller" ControlToValidate="txtPassword1"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword1" ErrorMessage="Confirm Password do not match" ForeColor="Red" Font-Size="Smaller"></asp:CompareValidator>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="" Font-Size="Smaller" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSavepass" OnClientClick="checkblank();" OnClick="btnSavepass_Click" runat="server" Text="Update Password" CssClass="btn btn-success btn-sm" Width="200px" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="font-size: xx-small;">Copyright &copy CloudPro 2021 | All right resereved.</td>
                    </tr>


                </table>
                <table style="color: maroon;">
                    <tr>
                        <td><a href="PortalLogin.aspx">Click to Login</a></td>
                        <td></td>
                        <td></td>
                    </tr>
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
