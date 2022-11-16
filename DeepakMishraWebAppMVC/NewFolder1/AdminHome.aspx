<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="CloudPro_Solution.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="fontawesome-free-5.15.3-web/css/fontawesome.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <div class="row" style="padding-top: 50px;">
            <div class="col-md-2" style="border-left: 4px solid; border-color: red; background-color: dodgerblue; height: 50px; width: 160px;">
                <strong>Total Employee</strong>
                <asp:Label ID="lbltotemp" runat="server" Text="" ForeColor="Maroon" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2" style="border-left: 4px solid; border-color: dodgerblue; background-color: red; height: 50px; width: 160px; margin-left: 25px;">
                <strong>Resign Employee</strong>
                <asp:Label ID="lblleftemp" runat="server" Text="" ForeColor="White" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2" style="border-left: 4px solid; border-color: blueviolet; background-color: lightgreen; height: 50px; width: 160px; margin-left: 25px;">
                <strong>Active Employee</strong>
                <asp:Label ID="lblactive" runat="server" Text="" ForeColor="Maroon" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2" style="border-left: 4px solid; border-color: darkgray; background-color: gold; height: 50px; width: 160px; margin-left: 25px;">
                <strong>Present Employee</strong>
                <asp:Label ID="lblpresentemp" runat="server" Text="" ForeColor="Maroon" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>
            <div class="col-md-2" style="border-left: 4px solid; border-color: gold; background-color: darkgrey; height: 50px; width: 160px; margin-left: 25px;">
                <strong>Absent Employee</strong>
                <asp:Label ID="lblabsentemp" runat="server" Text="" ForeColor="Maroon" Font-Bold="true" Font-Size="Large"></asp:Label>
            </div>

            <div class="row" style="padding-top: 50px;">
                <div class="col-md-12">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <asp:Label ID="lblempname" runat="server" Text="" Visible="false"></asp:Label>
                                <asp:GridView ID="grdLvForm" runat="server" AutoGenerateColumns="False" OnRowCommand="grdLvForm_RowCommand" AllowPaging="True" Font-Size="Smaller" PageSize="5" OnPageIndexChanging="grdLvForm_PageIndexChanging" ForeColor="#333333" ShowHeaderWhenEmpty="True" CellPadding="2">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField HeaderText="S.No" DataField="sno" />
                                        <asp:BoundField HeaderText="Date Applied" DataField="apply_date" />
                                        <asp:BoundField HeaderText="Paycode" DataField="pay_code" />
                                        <asp:BoundField HeaderText="Name" DataField="emp_name" />
                                        <asp:BoundField HeaderText="Leave Type" DataField="lv_type" />
                                        <asp:BoundField HeaderText="Full/Half" DataField="full_half" />
                                        <asp:BoundField HeaderText="From" DataField="fromdt" />
                                        <asp:BoundField HeaderText="To" DataField="todt" />
                                        <asp:BoundField HeaderText="Total Leave" DataField="total" />
                                        <asp:BoundField HeaderText="Remarks" DataField="remarks" />
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <asp:TextBox ID="txtHodMsg" runat="server" MaxLength="100" TextMode="MultiLine" Height="40px" Width="80px"></asp:TextBox>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="btnApprove" runat="server" CommandName="Approve" Text="Approve" CommandArgument='<%#Eval("sno")%>' />
                                            </ItemTemplate>
                                            <ControlStyle CssClass="btn btn-success btn-xs" />

                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="btnReject" runat="server" CommandName="Reject" Text="Reject" CommandArgument='<%#Eval("sno")%>' />
                                            </ItemTemplate>
                                            <ControlStyle CssClass="btn btn-danger btn-xs" />
                                        </asp:TemplateField>

                                    </Columns>

                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div class="row" style="padding-top: 50px;">
                <div class="col-md-6">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <asp:Label ID="lblEmailSent" runat="server" Text="" Font-Size="Small" ForeColor="Green"></asp:Label>
                                <asp:Label ID="lblNoBirthday" runat="server" Text="" Font-Size="Small" ForeColor="red"></asp:Label>
                                <%--<strong>Today's Birthday List</strong>--%>
                                <asp:GridView ID="grdBirthdaylist" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Font-Size="Smaller" AllowPaging="True" PageSize="3" OnPageIndexChanging="grdBirthdaylist_PageIndexChanging" ShowHeaderWhenEmpty="true" Width="250">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="pay_code" HeaderText="Paycode" />
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                        <asp:BoundField DataField="desc1" HeaderText="Designation" />
                                        <asp:BoundField DataField="dob" HeaderText="DOB" />
                                        <asp:BoundField DataField="age" HeaderText="Age" />
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="btnSendEmail" runat="server" CausesValidation="false" Text="Send Wishes" OnClick="btnSendEmail_Click" />
                                            </ItemTemplate>
                                            <ControlStyle CssClass="btn btn-success btn-xs" />
                                        </asp:TemplateField>

                                    </Columns>
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
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="col-md-6">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <asp:Label ID="lblEmailSent1" runat="server" Text="" Font-Size="Small" ForeColor="Green"></asp:Label>
                                <asp:Label ID="lblNoAnniversery" runat="server" Text="" Font-Size="Small" ForeColor="red"></asp:Label>
                                <%--<strong>Today's Birthday List</strong>--%>
                                <asp:GridView ID="grdMarriage" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Font-Size="Smaller" AllowPaging="True" PageSize="3" OnPageIndexChanging="grdMarriage_PageIndexChanging" ShowHeaderWhenEmpty="true" Width="250">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="pay_code" HeaderText="Paycode" />
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                        <asp:BoundField DataField="desc1" HeaderText="Designation" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" />
                                        <asp:BoundField DataField="Anniversery" HeaderText="Anniversery" />
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="btnSendEmail1" runat="server" CausesValidation="false" Text="Send Wishes" OnClick="btnSendEmail1_Click" />
                                            </ItemTemplate>
                                            <ControlStyle CssClass="btn btn-success btn-xs" />
                                        </asp:TemplateField>

                                    </Columns>
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
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>

        </div>

    </div>
    <script src="fontawesome-free-5.15.3-web/js/fontawesome.min.js"></script>
</asp:Content>
