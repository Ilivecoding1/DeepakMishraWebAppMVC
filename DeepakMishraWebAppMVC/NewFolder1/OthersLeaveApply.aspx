<%@ Page Title="" Language="C#" MasterPageFile="~/OtherUsers.Master" AutoEventWireup="true" CodeBehind="OthersLeaveApply.aspx.cs" Inherits="CloudPro_Solution.OthersLeaveApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
       /* table, tr, th, td {
            border: 1px solid;
        }*/
    </style>
    <div class="container">
        <center>
            <div style="border: 1px solid; border-color: maroon;">
                <div class="col-md-12">
                    <h3>Leave Chart</h3>
                    <asp:Repeater ID="Repeater1" runat="server" Visible="true">
                        <ItemTemplate>
                            <table style="padding: 5px;border: 1px solid;">
                                <caption><b><u>Your Leave Details</u></b></caption>
                                <tr style="background-color: lightgreen;border: 1px solid">
                                    <th>Leave Type</th>
                                    <%--<th>Opening</th>--%>
                                    <%--<th>Earned Leave</th>--%>
                                    <th>Availed Leave</th>
                                    <th>Balance Leave</th>
                                    <th>Remarks</th>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="EL" runat="server" Text="EL" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                    <%--<td><asp:Label ID="Label6" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <%--<td><asp:Label ID="Label7" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("availel") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("balel") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="CL" runat="server" Text="CL" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                    <%--<td><asp:Label ID="Label1" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <%--<td><asp:Label ID="Label2" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("availcl") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("balcl") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="SL" runat="server" Text="SL" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                    <%--<td><asp:Label ID="Label5" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <%--<td><asp:Label ID="Label10" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text='<%#Eval("availsl") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text='<%#Eval("balsl") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="ML" runat="server" Text="ML" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                    <%--<td><asp:Label ID="Label13" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <%--<td><asp:Label ID="Label14" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text='<%#Eval("availml") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text='<%#Eval("balml") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label23" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="CO" runat="server" Text="CO" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                    <%--<td><asp:Label ID="Label17" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <%--<td><asp:Label ID="Label18" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label></td>--%>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text='<%#Eval("availcof") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text='<%#Eval("balcof") %>' ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="" ForeColor="Maroon" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>

                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                    <hr />
                    <table>
                        <caption><b><u>Online Leave Application Form</u></b></caption>
                        <tr style="background-color: lightgreen;">
                            <th>Leave</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Total</th>
                            <th>Leave Type</th>
                            <th>Full/Half</th>
                            <th>Remarks</th>
                            <th>Apply Now</th>
                        </tr>
                        <tr>
                            <td><b><u>CL</u></b></td>
                            <td>
                                <asp:TextBox ID="txtFrom1" runat="server" TextMode="Date" BackColor="LightYellow"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFrom1"></asp:RequiredFieldValidator>--%>  
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo1" runat="server" TextMode="Date" BackColor="LightYellow" OnTextChanged="txtTo1_TextChanged" AutoPostBack="true"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtTo1"></asp:RequiredFieldValidator>--%>       
                            </td>
                            <td>
                                <asp:Label ID="lblTot1" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLvType1" runat="server">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">CL</asp:ListItem>

                                </asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlLvType1"></asp:RequiredFieldValidator>--%>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFH1" runat="server" OnSelectedIndexChanged="ddlFH1_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">Full</asp:ListItem>
                                    <asp:ListItem Value="2">Half</asp:ListItem>
                                </asp:DropDownList>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlFH1"></asp:RequiredFieldValidator>--%>
                            </td>

                            <td>
                                <asp:TextBox ID="txtRemark1" runat="server" placeholder="Enter remarks if any." MaxLength="100" TextMode="MultiLine" Height="40" BackColor="LightYellow"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Button ID="btnCLAdd" runat="server" Text="Apply Leave" CssClass="btn btn-primary btn-sm" OnClick="btnCLAdd_Click"></asp:Button>

                            </td>
                        </tr>
                        <tr>
                            <td><b><u>EL</u></b></td>
                            <td>
                                <asp:TextBox ID="txtFrom2" runat="server" TextMode="Date" BackColor="LightYellow"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo2" runat="server" TextMode="Date" BackColor="LightYellow" OnTextChanged="txtTo2_TextChanged" AutoPostBack="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblTot2" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>

                            <td>
                                <asp:DropDownList ID="ddlLVType2" runat="server">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">EL</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFH2" runat="server" OnSelectedIndexChanged="ddlFH2_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">Full</asp:ListItem>
                                    <asp:ListItem Value="2">Half</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:TextBox ID="txtRemark2" runat="server" placeholder="Enter remarks if any." MaxLength="100" TextMode="MultiLine" Height="40" BackColor="LightYellow"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Button ID="btnELAdd" runat="server" Text="Apply Leave" CssClass="btn btn-primary btn-sm" OnClick="btnELAdd_Click"></asp:Button>

                            </td>
                        </tr>
                        <tr>
                            <td><b><u>SL</u></b></td>
                            <td>
                                <asp:TextBox ID="txtFrom3" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo3" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow" OnTextChanged="txtTo3_TextChanged" AutoPostBack="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblTot3" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>

                            <td>
                                <asp:DropDownList ID="ddlLvType3" runat="server">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">SL</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFH3" runat="server" OnSelectedIndexChanged="ddlFH3_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">Full</asp:ListItem>
                                    <asp:ListItem Value="2">Half</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:TextBox ID="txtRemark3" runat="server" placeholder="Enter remarks if any." MaxLength="100" TextMode="MultiLine" Height="40" BackColor="LightYellow"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Button ID="btnSLAdd" runat="server" Text="Apply Leave" CssClass="btn btn-primary btn-sm" OnClick="btnSLAdd_Click"></asp:Button>

                            </td>
                        </tr>
                        <tr>
                            <td><b><u>ML</u></b></td>
                            <td>
                                <asp:TextBox ID="txtFrom4" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo4" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow" OnTextChanged="txtTo4_TextChanged" AutoPostBack="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblTot4" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLvType4" runat="server">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">ML</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFH4" runat="server" OnSelectedIndexChanged="ddlFH4_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">Full</asp:ListItem>
                                    <asp:ListItem Value="2">Half</asp:ListItem>
                                </asp:DropDownList>

                            </td>

                            <td>
                                <asp:TextBox ID="txtRemark4" runat="server" placeholder="Enter remarks if any." MaxLength="100" TextMode="MultiLine" Height="40" BackColor="LightYellow"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Button ID="btnMLAdd" runat="server" Text="Apply Leave" CssClass="btn btn-primary btn-sm" OnClick="btnMLAdd_Click"></asp:Button>

                            </td>
                        </tr>
                        <tr>
                            <td><b><u>CO</u></b></td>
                            <td>
                                <asp:TextBox ID="txtFrom5" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo5" runat="server" TextMode="Date" placeholder="yyyy/mm/dd" BackColor="LightYellow" OnTextChanged="txtTo5_TextChanged" AutoPostBack="true"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblTot5" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLvType5" runat="server">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">CO</asp:ListItem>
                                </asp:DropDownList>


                            </td>
                            <td>
                                <asp:DropDownList ID="ddlFH5" runat="server" OnSelectedIndexChanged="ddlFH5_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Selected="True" Value="0">-- Please Select --</asp:ListItem>
                                    <asp:ListItem Value="1">Full</asp:ListItem>
                                    <asp:ListItem Value="2">Half</asp:ListItem>
                                </asp:DropDownList>

                            </td>

                            <td>
                                <asp:TextBox ID="txtRemark5" runat="server" placeholder="Enter remarks if any." MaxLength="100" TextMode="MultiLine" Height="40" BackColor="LightYellow"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Button ID="btnCOAdd" runat="server" Text="Apply Leave" CssClass="btn btn-primary btn-sm" OnClick="btnCOAdd_Click"></asp:Button>


                            </td>
                        </tr>
                    </table>
                    <div style="padding-top: 10px;">
                        <asp:Label ID="lblnullError" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:Label ID="lblempname" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lbllvstatus" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblsuccess" runat="server" Text="" ForeColor="Green" Font-Bold="true" Font-Size="Large"></asp:Label>
                        <br />
                        <strong><u>Your Leave Applied Summary</u></strong>
                        <asp:GridView ID="grdLvForm" runat="server" AutoGenerateColumns="False" OnRowCommand="grdLvForm_RowCommand" Font-Size="Smaller" AllowPaging="True" PageSize="5" OnPageIndexChanging="grdLvForm_PageIndexChanging" CellPadding="2">
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
                                <asp:BoundField HeaderText="Status" DataField="status" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-danger btn-xs" CommandArgument='<%#Eval("sno")%>' CommandName="Remove"></asp:Button>
                                    </ItemTemplate>
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
                    <br />
                    <div>
                        <asp:Button ID="btnLeaveApply" runat="server" Text="Refresh Leave" Visible="false" CssClass="btn btn-success btn-md" OnClick="btnLeaveApply_Click" />
                    </div>
                </div>
                <br />
            </div>
        </center>
    </div>

</asp:Content>
