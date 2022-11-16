<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CloudPro_Solution.ContactUs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
        <table>
            <tr><td>Your Name</td><td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td></tr>
            <tr><td>Your Email</td><td>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                   </td></tr>
             <tr><td>Your Phone</td><td>
                 <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                   </td></tr>
            <tr><td>Your Department</td><td>
                 <asp:TextBox ID="txtDept" runat="server"></asp:TextBox>
                                        </td></tr>
            <tr><td>Subject</td><td>
                 <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                                </td></tr>
            <tr><td>Attachments</td><td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td></tr>
            <tr><td>Query Description</td><td>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="500" Height="100px" Width="300px"></asp:TextBox>
                                          </td></tr>
            <tr><td>
                <asp:Label ID="lblTicketNumber" runat="server" Text="" Visible="false"></asp:Label></td></tr>
            <tr><td>
                <asp:Button ID="btnSendQuery" runat="server" Text="Raise Ticket" OnClick="btnSendQuery_Click" CssClass="btn btn-primary btn-sm"/></td></tr>
        </table>
        <table>
            <tr><td> <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label></td></tr>
           <tr><td><asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label></td></tr>
            
        </table>
    </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
