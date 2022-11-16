<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="EmployeeAdd.aspx.cs" Inherits="CloudPro_Solution.EmployeeAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Customized/css/EmpTabStyle.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container-fluid">
        <div class="container-fluid">

            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <div class="container-fluid">
                        <div class="row">

                            <table>
                                <tr>


                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <div>Select Company:-</div>
                                                    <asp:DropDownList ID="ddlCmpList" runat="server" OnSelectedIndexChanged="ddlCmpList_SelectedIndexChanged" AutoPostBack="true">
                                                    </asp:DropDownList>

                                                </td>
                                                <td>
                                                    <asp:UpdateProgress ID="UpdWt" runat="server" DisplayAfter="1" AssociatedUpdatePanelID="UpdatePanel1">
                                                        <ProgressTemplate>
                                                            <asp:Image ID="img" ImageUrl="~/Multimedia/Images/loading-please-wait.gif" runat="server" Height="50px" Width="100px" />

                                                        </ProgressTemplate>
                                                    </asp:UpdateProgress>
                                                </td>
                                            </tr>
                                        </table>


                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <div>Sort ON:-</div>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" ForeColor="Maroon" Font-Size="Smaller" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="Paycode" Value="1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Card No" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Name" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="DOB" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="DOJ" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="Department" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="SubDepartment" Value="7"></asp:ListItem>
                                            <asp:ListItem Text="Designation" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="Staff/Worker" Value="9"></asp:ListItem>
                                            <asp:ListItem Text="Category" Value="10"></asp:ListItem>
                                            <asp:ListItem Text="Resign Date" Value="11"></asp:ListItem>
                                        </asp:RadioButtonList>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div>Employee Master Records</div>
                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" ForeColor="#333333" GridLines="None" Font-Size="X-Small" AutoGenerateSelectButton="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
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
                                    </td>
                                </tr>
                            </table>
                        </div>


                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
        <div class="container-fluid">
            <table>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnAddData" runat="server" Text="Add New Employee" CssClass="btn btn-success btn-sm" /></td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Details" CssClass="btn btn-primary btn-sm" /></td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Employee" CssClass="btn btn-danger btn-sm" /></td>
                </tr>
            </table>

            <div class="container">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <%-- start --%>

                    <div class="tab">
                        <button id="defaultOpen" class="tablinks" onclick="openCity(event, 'Personal')">Personal</button>
                        <button class="tablinks" onclick="openCity(event, 'Professional')">Professional</button>
                        <button class="tablinks" onclick="openCity(event, 'Wages')">Wages</button>
                        <button class="tablinks" onclick="openCity(event, 'Family')">Family</button>
                        <button class="tablinks" onclick="openCity(event, 'Documents')">Documents</button>
                        <button class="tablinks" onclick="openCity(event, 'Wages1')">Wages1</button>

                    </div>

                    <div id="Personal" class="tabcontent">
                        <h3>Personal</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>Aadhar:</td>
                                <td>
                                    <asp:TextBox ID="txtAdhar" runat="server" placeholder="Enter Aadhar No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Paycode:</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Employee Code" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Card No:</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Card No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Name:</td>
                                <td>
                                    <asp:TextBox ID="txtEmpName" runat="server" placeholder="Enter Employee Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Usertype:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Migrant Status:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Father Name:</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Father Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Mother Name:</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Mother Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Spouse Name:</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Spouse Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Company/Location:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>HOD:</td>
                                <td>
                                    <asp:TextBox ID="TextBox33" runat="server" placeholder="Enter HOD Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Permanent Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Continent:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Country :</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>State:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>District :</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList7" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Pincode:</td>
                                <td>
                                    <asp:TextBox ID="TextBox12" runat="server" placeholder="Enter Pincode" BackColor="LightYellow" Width="80px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Current Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox13" runat="server" placeholder="Enter Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Continent:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList8" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Country :</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList9" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>State:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList10" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>District :</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList11" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Pincode:</td>
                                <td>
                                    <asp:TextBox ID="TextBox18" runat="server" placeholder="Enter Pincode" Width="80px" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Phone:</td>
                                <td>
                                    <asp:TextBox ID="TextBox19" runat="server" placeholder="Enter Phone" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Alternet Phone:</td>
                                <td>
                                    <asp:TextBox ID="TextBox20" runat="server" placeholder="Enter Phone" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Email:</td>
                                <td>
                                    <asp:TextBox ID="TextBox21" runat="server" placeholder="Enter Email Id" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>PAN:</td>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server" placeholder="Enter PAN" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Passport:</td>
                                <td>
                                    <asp:TextBox ID="TextBox23" runat="server" placeholder="Enter Passport No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>UAN:</td>
                                <td>
                                    <asp:TextBox ID="TextBox24" runat="server" placeholder="Enter UAN" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>PF No:</td>
                                <td>
                                    <asp:TextBox ID="TextBox25" runat="server" placeholder="Enter PF No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>ESIC No:</td>
                                <td>
                                    <asp:TextBox ID="TextBox26" runat="server" placeholder="Enter ESI No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>LWF No:</td>
                                <td>
                                    <asp:TextBox ID="TextBox27" runat="server" placeholder="Enter LWF No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Dispensery:</td>
                                <td>
                                    <asp:TextBox ID="TextBox28" runat="server" placeholder="Enter Dispensery" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList12" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Marrital Status:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList13" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Qualification:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList14" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Blood Group:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList15" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="txtDOB" runat="server" OnTextChanged="txtDOB_TextChanged" AutoPostBack="true" placeholder="dd/mm/yyyy" BackColor="LightYellow" Width="95px"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Multimedia/Images/calendar-icon.jpg" Height="20px" Width="20px" OnClick="ImageButton1_Click" />

                                    <asp:Calendar ID="Calendar5" runat="server" Visible="False" OnSelectionChanged="Calendar5_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="*" ControlToValidate="txtDOB" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>DOJ:</td>
                                <td>
                                    <asp:TextBox ID="txtDOJ" runat="server" placeholder="dd/mm/yyyy" OnTextChanged="txtDOJ_TextChanged" AutoPostBack="true" BackColor="LightYellow" Width="95px"></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Multimedia/Images/calendar-icon.jpg" Height="20px" Width="20px" OnClick="ImageButton2_Click" />
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="*" ControlToValidate="txtDOJ" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="txtAge" runat="server" Enabled="false" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Confirmation:</td>
                                <td>
                                    <asp:TextBox ID="txtConfirm" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow" Width="95px"></asp:TextBox><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Multimedia/Images/calendar-icon.jpg" Height="20px" Width="20px" OnClick="ImageButton3_Click" />
                                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>DOJ[OnRoll]:</td>
                                <td>
                                    <asp:TextBox ID="txtDOJ2" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow" Width="95px"></asp:TextBox><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Multimedia/Images/calendar-icon.jpg" Height="20px" Width="20px" OnClick="ImageButton4_Click" />
                                    <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Marriage Date:</td>
                                <td>
                                    <asp:TextBox ID="txtMrgDate" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow" Width="85px"></asp:TextBox><asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Multimedia/Images/calendar-icon.jpg" Height="20px" Width="20px" OnClick="ImageButton5_Click" />
                                    <asp:Calendar ID="Calendar4" runat="server" OnSelectionChanged="Calendar4_SelectionChanged" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div id="Professional" class="tabcontent">
                        <h3>Professional</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>Department:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList16" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>SubDepartment:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList17" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Designation:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList18" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Floor:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList19" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Category1:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList20" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Grade:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList21" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Cost Center:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList22" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Line NO:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList23" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Category2:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList24" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Function:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList25" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Payment Mode:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList26" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Salary Mode:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList27" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>OT Allowed:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="OT Allowed" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Food/Tea Allowed :</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Food/Tea Allowed" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Bonus Allowed:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Bonus Allowed" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Late Deduct :</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Late Deduction" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator59" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Shift:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList28" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Shift Type:</td>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Fixed" GroupName="rdosft" />
                                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Rotation" GroupName="rdosft" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Bank Name:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList29" runat="server"></asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Brach Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox60" runat="server" placeholder="Enter Branch Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>A/c No :</td>
                                <td>
                                    <asp:TextBox ID="TextBox61" runat="server" placeholder="Enter A/c No" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IFSC Code:</td>
                                <td>
                                    <asp:TextBox ID="TextBox62" runat="server" placeholder="Enter IFSC" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                        </table>
                    </div>

                    <div id="Wages" class="tabcontent">
                        <h3>Wages</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>Basic:</td>
                                <td>
                                    <asp:TextBox ID="TextBox65" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DA:</td>
                                <td>
                                    <asp:TextBox ID="TextBox66" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator68" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>HRA:</td>
                                <td>
                                    <asp:TextBox ID="TextBox67" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator69" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Conv:</td>
                                <td>
                                    <asp:TextBox ID="TextBox68" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator70" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Medical:</td>
                                <td>
                                    <asp:TextBox ID="TextBox69" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator71" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Special:</td>
                                <td>
                                    <asp:TextBox ID="TextBox70" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator72" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Uniform:</td>
                                <td>
                                    <asp:TextBox ID="TextBox71" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Washing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox72" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator74" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Education:</td>
                                <td>
                                    <asp:TextBox ID="TextBox73" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Others:</td>
                                <td>
                                    <asp:TextBox ID="TextBox74" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Total:</td>
                                <td>
                                    <asp:TextBox ID="TextBox75" runat="server" Enabled="false"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>


                        </table>
                    </div>

                    <div id="Family" class="tabcontent">
                        <h3>Family</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>Member1:</td>
                                <td>
                                    <asp:TextBox ID="TextBox87" runat="server" placeholder="Enter Member1 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox88" runat="server" placeholder="Enter Member1 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox89" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox91" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox90" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox5" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox92" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member2:</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Member2 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Member2 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox9" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox93" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox6" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox11" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member3:</td>
                                <td>
                                    <asp:TextBox ID="TextBox14" runat="server" placeholder="Enter Member3 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox15" runat="server" placeholder="Enter Member3 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox16" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox94" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox17" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox7" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox29" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member4:</td>
                                <td>
                                    <asp:TextBox ID="TextBox30" runat="server" placeholder="Enter Member4 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox31" runat="server" placeholder="Enter Member4 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox32" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox95" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox38" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox8" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox39" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member5:</td>
                                <td>
                                    <asp:TextBox ID="TextBox42" runat="server" placeholder="Enter Member5 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox43" runat="server" placeholder="Enter Member5 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox44" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox96" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox45" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox9" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox46" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member6:</td>
                                <td>
                                    <asp:TextBox ID="TextBox47" runat="server" placeholder="Enter Member6 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox48" runat="server" placeholder="Enter Member6 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox49" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox97" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox50" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox10" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox51" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member7:</td>
                                <td>
                                    <asp:TextBox ID="TextBox52" runat="server" placeholder="Enter Member7 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox53" runat="server" placeholder="Enter Member7 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox54" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox98" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox55" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox11" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox56" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>

                            <tr>
                                <td>Member8:</td>
                                <td>
                                    <asp:TextBox ID="TextBox57" runat="server" placeholder="Enter Member8 Name" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator89" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Address:</td>
                                <td>
                                    <asp:TextBox ID="TextBox58" runat="server" placeholder="Enter Member8 Address" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DOB:</td>
                                <td>
                                    <asp:TextBox ID="TextBox59" runat="server" placeholder="dd/mm/yyyy" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Age:</td>
                                <td>
                                    <asp:TextBox ID="TextBox99" runat="server" Enabled="false" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator91" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Relation:</td>
                                <td>
                                    <asp:TextBox ID="TextBox63" runat="server" placeholder="Enter Relation" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator92" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>IsNominee:</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox12" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator93" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>With Residing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox64" runat="server" BackColor="LightYellow" Width="50px"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator94" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>


                        </table>
                    </div>

                    <div id="Documents" class="tabcontent">
                        <h3>Documents</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>PAN:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator137" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Aadhar:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator138" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Voter ID:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator139" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Passport:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload4" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator140" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Driving/L:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload5" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator141" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Passbook:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload6" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator142" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Educational Certificate:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload7" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator143" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Other Docs:</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload8" runat="server" />
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator144" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>



                        </table>
                    </div>

                    <div id="Wages1" class="tabcontent">
                        <h3>Wages1</h3>

                        <table style="border: 1px solid; border-color: maroon; font-size: x-small; width: 100%;">

                            <tr>
                                <td>Basic:</td>
                                <td>
                                    <asp:TextBox ID="TextBox76" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>DA:</td>
                                <td>
                                    <asp:TextBox ID="TextBox77" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator79" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>HRA:</td>
                                <td>
                                    <asp:TextBox ID="TextBox78" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator80" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Conv:</td>
                                <td>
                                    <asp:TextBox ID="TextBox79" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator81" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Medical:</td>
                                <td>
                                    <asp:TextBox ID="TextBox80" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator82" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Special:</td>
                                <td>
                                    <asp:TextBox ID="TextBox81" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator83" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td>Uniform:</td>
                                <td>
                                    <asp:TextBox ID="TextBox82" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator84" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>

                                <td>Washing:</td>
                                <td>
                                    <asp:TextBox ID="TextBox83" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator85" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Education:</td>
                                <td>
                                    <asp:TextBox ID="TextBox84" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator86" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Others:</td>
                                <td>
                                    <asp:TextBox ID="TextBox85" runat="server" BackColor="LightYellow"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator87" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                                <td>Total:</td>
                                <td>
                                    <asp:TextBox ID="TextBox86" runat="server" Enabled="false"></asp:TextBox>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator88" runat="server" ErrorMessage="*" ControlToValidate="txtEmpName" ForeColor="Red" Font-Size="Smaller"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>


                        </table>
                    </div>
                    <%-- end --%>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <script src="Customized/js/EmpTabScript.js"></script>
</asp:Content>
