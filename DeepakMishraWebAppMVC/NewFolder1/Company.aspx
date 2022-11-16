<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="CloudPro_Solution.Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <p>Company Master</p>
          <table>
             <tr><td>
                <asp:Button ID="btnAddNew" runat="server" Text="Add New" OnClick="btnAddNew_Click" CssClass="btn btn-success btn-sm" />
                </td><td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary btn-sm" />
                         </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-danger btn-sm" />
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="txtCmpName" runat="server"></asp:TextBox>
                </td>
                <td>Company Address:</td>
                <td>
                    <asp:TextBox ID="txtcmpAddress" runat="server"></asp:TextBox>
                </td>
                <td>ShortName:</td>
                <td>
                    <asp:TextBox ID="txtShortName" runat="server"></asp:TextBox>
                </td>
                <td>Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>Website:</td>
                <td>
                    <asp:TextBox ID="txtWEbsite" runat="server"></asp:TextBox>
                </td>
                <td>Fax:</td>
                <td>
                    <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                </td>
                <td>PAN:</td>
                <td>
                    <asp:TextBox ID="txtPan" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>GST:</td>
                <td>
                    <asp:TextBox ID="txtGst" runat="server"></asp:TextBox>
                </td>
                <td>ESIC No:</td>
                <td>
                    <asp:TextBox ID="txtEsi" runat="server"></asp:TextBox>
                </td>
                <td>PF No:</td>
                <td>
                    <asp:TextBox ID="txtPF" runat="server"></asp:TextBox>
                </td>
                <td>Image Path:</td>
                <td>
                    <asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Owner Name:</td>
                <td>
                    <asp:TextBox ID="txtOwner" runat="server"></asp:TextBox>
                </td>
                <td>Owner Address:</td>
                <td>
                    <asp:TextBox ID="txtOwnadd" runat="server"></asp:TextBox>
                </td>
                <td>Owner Contact:</td>
                <td>
                    <asp:TextBox ID="txtOwnphone" runat="server"></asp:TextBox>
                </td>
                <td>Designation:</td>
                <td>
                    <asp:TextBox ID="txtDesig" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Bank Name:</td>
                <td>
                    <asp:TextBox ID="txtcmpBank" runat="server"></asp:TextBox>
                </td>
                <td>Bank Address:</td>
                <td>
                    <asp:TextBox ID="txtBankAddress" runat="server"></asp:TextBox>
                </td>
                <td>A/C No:</td>
                <td>
                    <asp:TextBox ID="txtAcNo" runat="server"></asp:TextBox>
                </td>
                <td>IFSC Code:</td>
                <td>
                    <asp:TextBox ID="txtIFSC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Manager Name:</td>
                <td>
                    <asp:TextBox ID="txtMgnr" runat="server"></asp:TextBox>
                </td>
                <td>Manager Contact:</td>
                <td>
                    <asp:TextBox ID="txtMgrphone" runat="server"></asp:TextBox>
                </td>
                <td>Company Type:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True" Value="0" Text="-Please Select-"></asp:ListItem>
                        <asp:ListItem  Value="1" Text="Parent Company"></asp:ListItem>
                        <asp:ListItem  Value="2" Text="Contractor"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                 <td>Group Name:</td>
                <td>
                    <asp:DropDownList ID="ddlgroup" runat="server"></asp:DropDownList>
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
</asp:Content>
