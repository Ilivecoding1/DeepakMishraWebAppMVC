<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="DesignationAdd.aspx.cs" Inherits="CloudPro_Solution.DesignationAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       
        <div class="container-fluid">
          <p>Designation Master</p>
            <table style="font-size:smaller;">
            <%--<tr><th>Designation Master</th></tr>--%>
             
                 <tr>
                     
                     <td>Enter Designation Name:</td><td><asp:TextBox ID="txtDesigName" runat="server"></asp:TextBox></td><td>Select Department</td><td>
                <asp:DropDownList ID="ddlDetp" runat="server" OnSelectedIndexChanged="ddlDetp_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
                <td>
                <asp:DropDownList ID="ddlSubDept" runat="server"></asp:DropDownList></td>
               
            </tr>
            
            <tr><td>
                <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" CssClass="btn btn-success btn-sm" />
                </td><td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary btn-sm" />
                         </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-danger btn-sm" />
                </td>
            </tr>

        </table><br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                      
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" Height="250px" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
