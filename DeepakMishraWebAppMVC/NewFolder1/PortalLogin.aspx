<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PortalLogin.aspx.cs" Inherits="CloudPro_Solution.PortalLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CloudPro Login</title>
    <link href="Customized/css/CloudLogin.css" rel="stylesheet" />
    <link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.15.3-web/css/all.min.css" rel="stylesheet" />
    <script src="JQery/jquery-3.6.0.min.js"></script>
    <script src="Customized/js/CloudLogin.js"></script>
    <script>
        $(document).ready(function () {
            $('#btnLogin').click(function checkblank() {
                var a = $('#txtUsername').val();
                var b = $('#txtPassword').val();
                if (a == '' || b == '') {
                    alert('Username or password can not be blank');
                }
            });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server" oncontextmenu="false">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="container">
            <div class="centerdiv">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
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
                                <td></td>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtDept" runat="server" Enabled="false" Visible="true"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtUtype" runat="server" Enabled="false" Visible="true"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <%--<tr><td>Usertype:</td><td> <asp:DropDownList ID="ddlUsertype" runat="server" Width="150" ></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" InitialValue="0" ForeColor="Red" Font-Size="Smaller" ControlToValidate="ddlUsertype"></asp:RequiredFieldValidator>
                                </td></tr>
           <tr><td>Department:</td><td> <asp:DropDownList ID="ddlDepartment" runat="server" Width="150" ></asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" InitialValue="0" ForeColor="Red" Font-Size="Smaller" ControlToValidate="ddlDepartment"></asp:RequiredFieldValidator>
                                   </td></tr>--%>
                            <tr style="padding-top: 15px;">
                                <td>Username:</td>
                                <td>

                                    <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged" Width="150" AutoPostBack="true" placeholder="Enter Username" BackColor="LightYellow" MaxLength="30"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="Smaller" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <%--  --%>
                                </td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td>
                                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" BackColor="LightYellow" Width="150" TextMode="Password" MaxLength="30"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="Smaller" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>

                                    <asp:CheckBox ID="chkRemember" runat="server" />
                                    Remember me?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>

                                    <asp:Button ID="btnLogin" OnClientClick="checkblank();" OnClick="btnLogin_Click" runat="server" Text="Login" CssClass="btn btn-success btn-sm" Width="100px" />
                                    <asp:UpdateProgress ID="UpdWt" runat="server" DisplayAfter="1" AssociatedUpdatePanelID="UpdatePanel1">
                                        <ProgressTemplate>
                                            <asp:Image ID="img" ImageUrl="~/Multimedia/Images/loading-please-wait.gif" runat="server" Height="40px" Width="120px" />

                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                </td>
                                
                            </tr>
                            <tr>
                                <td></td>
                                <td style="font-size: xx-small;">Copyright &copy CloudPro 2021 | All right resereved.</td>
                            </tr>


                        </table>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                            </tr>
                        </table>
                    </ContentTemplate>

                </asp:UpdatePanel>

                <table style="color: maroon;">
                    <tr>
                        <td><a href="Register.aspx">Register New User</a></td>
                        <td>|</td>
                        <td><a href="ForgotPassword.aspx">Forgot Password?</a></td>
                    </tr>
                </table>
                <div class="container">
                    <asp:Label ID="Lable1" runat="server" Text="" ForeColor="Red"></asp:Label>
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
