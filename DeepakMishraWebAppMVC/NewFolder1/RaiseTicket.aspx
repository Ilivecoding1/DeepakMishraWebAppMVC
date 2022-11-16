<%@ Page Title="" Language="C#" MasterPageFile="~/OtherUsers.Master" AutoEventWireup="true" CodeBehind="RaiseTicket.aspx.cs" Inherits="CloudPro_Solution.RaiseTicket" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    <h3>Support System-Raise A Ticket</h3>
                    <table>
                        <tr>
                            <td>Your Name</td>
                            <td>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Your Email</td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Your Phone</td>
                            <td>
                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Your Department</td>
                            <td>
                                <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Subject</td>
                            <td>
                                <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Issue Category</td>
                            <td>
                                <asp:DropDownList ID="ddlIssueCat" runat="server">
                                    <asp:ListItem Value="0" Text="-Please Select-" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Hardware"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Software"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Severity Level</td>
                            <td>
                                <asp:DropDownList ID="ddlSavLevel" runat="server">
                                    <asp:ListItem Value="0" Text="-Please Select-" Selected="True"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Stopped Working"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Urgent"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="Important"></asp:ListItem>
                                    <asp:ListItem Value="4" Text="Less Important"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Attachments</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>Query Description</td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="500" Height="100px" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblTicketNumber" runat="server" Text="" Visible="false"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnSendQuery" runat="server" Text="Raise Ticket" OnClick="btnSendQuery_Click" CssClass="btn btn-primary btn-sm" /></td>
                        </tr>
                    </table>
                    <table>

                        <tr>
                            <td>
                                <asp:UpdateProgress ID="UpdWt" runat="server" DisplayAfter="1" AssociatedUpdatePanelID="UpdatePanel1">
                                    <ProgressTemplate>
                                        <asp:Image ID="img" ImageUrl="~/Multimedia/Images/loading-please-wait.gif" runat="server" Height="60px" Width="150px" />

                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                                <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                        </tr>

                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
