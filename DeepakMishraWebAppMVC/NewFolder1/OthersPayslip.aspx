<%@ Page Title="" Language="C#" MasterPageFile="~/OtherUsers.Master" AutoEventWireup="true" CodeBehind="OthersPayslip.aspx.cs" Inherits="CloudPro_Solution.OthersPayslip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <table>
            <tr>
                <td>Select Month</td>
                <td>
                    <asp:DropDownList ID="ddlMonth" runat="server">
                        <asp:ListItem Selected="True" Value="0">-Please Select-</asp:ListItem>
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">February</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Select Year</td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem Selected="True" Value="0">-Please Select-</asp:ListItem>
                        <asp:ListItem Value="1">2020</asp:ListItem>
                        <asp:ListItem Value="2">2021</asp:ListItem>
                        <asp:ListItem Value="3">2022</asp:ListItem>
                        <asp:ListItem Value="4">2023</asp:ListItem>
                        <asp:ListItem Value="5">2024</asp:ListItem>
                        <asp:ListItem Value="6">2025</asp:ListItem>
                        <asp:ListItem Value="7">2026</asp:ListItem>
                        <asp:ListItem Value="8">2027</asp:ListItem>
                        <asp:ListItem Value="9">2028</asp:ListItem>
                        <asp:ListItem Value="10">2029</asp:ListItem>
                        <asp:ListItem Value="11">2030</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnViewPayslip" runat="server" Text="View Payslip" OnClick="btnViewPayslip_Click" CssClass="btn btn-primary btn-sm" />
                </td>
                <td>
                    <asp:Button ID="btnDownloadPayslip" runat="server" Text="Download Payslip" OnClick="btnDownloadPayslip_Click" CssClass="btn btn-success btn-sm" />
                </td>
            </tr>
        </table>
        <br />
        <div>
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Font-Size="small"></asp:Label>
        </div>

        <div style="font-size: smaller;">

            <asp:Panel ID="payslippanel" runat="server">
               
                <table style="width: 65%; text-align: center;">
                    <tr style="width: 100%; border: 1px solid;">
                        <td>
                            <table style="width: 100%; text-align: center;">
                                <tr style="border: 1px solid;">
                                    <td>
                                        <asp:Label ID="lblCmpName" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        <br />

                                    </td>
                                </tr>
                                <tr style="border: 1px solid;">
                                    <td>
                                        <asp:Label ID="lblCmpAdd" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="border: 1px solid;">
                                    <td><b>Payslip For The Month Of :</b><asp:Label ID="lblMonthName" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label></td>
                                </tr>
                            </table>
                            <asp:Repeater ID="Repeater1" runat="server">


                                <itemtemplate>


                                    <table style="width: 100%; border: 1px solid;">

                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>Code :</b></td>
                                            <td>
                                                <asp:Label ID="lblCode" runat="server" Text='<%#Eval("pay_code")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>Designation :</b></td>
                                            <td>
                                                <asp:Label ID="lblDesignation" runat="server" Text='<%#Eval("desc1")%>'></asp:Label>
                                            </td>

                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>Name :</b></td>
                                            <td>
                                                <asp:Label ID="lblName" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>Department :</b></td>
                                            <td>
                                                <asp:Label ID="lblDept" runat="server" Text='<%#Eval("desc2")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>F/ H Name :</b></td>
                                            <td>
                                                <asp:Label ID="lblFname" runat="server" Text='<%#Eval("f_name")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>Bank Name :</b></td>
                                            <td>
                                                <asp:Label ID="lblBankname" runat="server" Text='<%#Eval("bank_name")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>Account No :</b></td>
                                            <td>
                                                <asp:Label ID="lblAcno" runat="server" Text='<%#Eval("bank_no")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>Pay Mode :</b></td>
                                            <td>
                                                <asp:Label ID="lblPaymode" runat="server" Text='<%#Eval("pay_mode")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>PF/UAN No :</b></td>
                                            <td>
                                                <asp:Label ID="lblPFUAN" runat="server" Text='<%#Eval("uan")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>ESIC NO :</b></td>
                                            <td>
                                                <asp:Label ID="lblEsino" runat="server" Text='<%#Eval("esi_no")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>PAN No :</b></td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text='<%#Eval("pan")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>Aadhar No :</b></td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text='<%#Eval("adh_no")%>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;"><b>D.O.B. :</b></td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text='<%#Eval("dob")%>'></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;"><b>D.O.J. :</b></td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text='<%#Eval("doj1")%>'></asp:Label>
                                            </td>
                                        </tr>

                                    </table>
                                    <table style="border: 1px solid; width: 100%;">
                                        <tr style="border: 1px solid;">
                                            <th style="border: 1px solid;">Attendance</th>
                                            <th style="border: 1px solid;">Leave Details</th>
                                        </tr>
                                        <tr>
                                            <td style="width: 70%;">

                                                <table style="width: 100%; border: 1px solid;">

                                                    <tr style="border: 1px solid;">
                                                        <th>Work Days</th>
                                                        <th style="border: 1px solid;">Leaves</th>
                                                        <th style="border: 1px solid;">WeekOff</th>
                                                        <th style="border: 1px solid;">Holidays</th>
                                                        <th style="border: 1px solid;">Pay Days</th>
                                                        <th style="border: 1px solid;">LWP</th>

                                                    </tr>
                                                    <tr style="border: 1px solid;">

                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("wday")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("totleave")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("wf")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label17" runat="server" Text='<%#Eval("hd")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("pday")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td style="border: 1px solid;">
                                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("ab")%>' Font-Bold="true"></asp:Label>
                                                        </td>

                                                    </tr>
                                                </table>
                                            </td>
                                            <td style="width: 30%; border: 1px solid;">

                                                <table style="width: 100%; border: 1px solid;">

                                                    <tr style="border: 1px solid;">
                                                        <th style="border: 1px solid;">EL</th>
                                                        <th style="border: 1px solid;">CL</th>
                                                        <th style="border: 1px solid;">SL</th>
                                                        <th style="border: 1px solid;">ML</th>
                                                        <th style="border: 1px solid;">PL</th>
                                                        <th style="border: 1px solid;">Total</th>


                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("bel")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("bcl")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("bsl")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("bml")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("bpl")%>' Font-Bold="true"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("balleave")%>' Font-Bold="true"></asp:Label>
                                                        </td>

                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <table style="border: 1px solid; width: 100%;">
                                        <th style="border: 1px solid;">Earings / Arears</th>
                                        <th style="border: 1px solid;">Rate</th>
                                        <th style="border: 1px solid;">Amount</th>
                                        <th style="border: 1px solid;">Deductions</th>
                                        <th style="border: 1px solid;">Amount</th>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label12" runat="server" Text='<%#Eval("all1")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label18" runat="server" Text='<%#Eval("rat1")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label19" runat="server" Text='<%#Eval("earn1")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label20" runat="server" Text='<%#Eval("dall1")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label21" runat="server" Text='<%#Eval("ded1")%>' Font-Bold="true"></asp:Label>
                                            </td>

                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label22" runat="server" Text='<%#Eval("all2")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label23" runat="server" Text='<%#Eval("rat2")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label24" runat="server" Text='<%#Eval("earn2")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label25" runat="server" Text='<%#Eval("dall2")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label26" runat="server" Text='<%#Eval("ded2")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label27" runat="server" Text='<%#Eval("all3")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label28" runat="server" Text='<%#Eval("rat3")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label29" runat="server" Text='<%#Eval("earn3")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label30" runat="server" Text='<%#Eval("dall3")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label31" runat="server" Text='<%#Eval("ded3")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label32" runat="server" Text='<%#Eval("all4")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label33" runat="server" Text='<%#Eval("rat4")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label34" runat="server" Text='<%#Eval("earn4")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label35" runat="server" Text='<%#Eval("dall4")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label36" runat="server" Text='<%#Eval("ded4")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label37" runat="server" Text='<%#Eval("all5")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label38" runat="server" Text='<%#Eval("rat5")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label39" runat="server" Text='<%#Eval("earn5")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label40" runat="server" Text='<%#Eval("dall5")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label41" runat="server" Text='<%#Eval("ded5")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label42" runat="server" Text='<%#Eval("all6")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label43" runat="server" Text='<%#Eval("rat6")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label44" runat="server" Text='<%#Eval("earn6")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label45" runat="server" Text='<%#Eval("dall6")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label46" runat="server" Text='<%#Eval("ded6")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label47" runat="server" Text='<%#Eval("all7")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label48" runat="server" Text='<%#Eval("rat7")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label49" runat="server" Text='<%#Eval("earn7")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label50" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label51" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label52" runat="server" Text='<%#Eval("all8")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label53" runat="server" Text='<%#Eval("rat8")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label54" runat="server" Text='<%#Eval("earn8")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label55" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label56" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label57" runat="server" Text='<%#Eval("all9")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label58" runat="server" Text='<%#Eval("rat9")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label59" runat="server" Text='<%#Eval("earn9")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label60" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label61" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr style="border: 1px solid;">
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label62" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label63" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label64" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label65" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label66" runat="server" Text="N/A" Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr style="border: 1px solid; background-color: teal;">
                                            <td style="border: 1px solid;"><b>Gross Earning</b></td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label67" runat="server" Text='<%#Eval("empsal")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label68" runat="server" Text='<%#Eval("totearn")%>' Font-Bold="true"></asp:Label>
                                            </td>

                                            <td style="border: 1px solid;"><b>Gross Deduction</b></td>
                                            <td style="border: 1px solid;">
                                                <asp:Label ID="Label69" runat="server" Text='<%#Eval("tot_ded")%>' Font-Bold="true"></asp:Label>
                                            </td>


                                        </tr>
                                    </table>
                                    <table style="border: 1px solid; width: 100%; background-color: teal;">
                                        <tr>
                                            <td style="width: 100px; border: 1px solid;"><b>Net Payble : </b></td>
                                            <td style="width: 100px; border: 1px solid;">
                                                <asp:Label ID="Label70" runat="server" Text='<%#Eval("net_sal")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label71" runat="server" Text='<%#Eval("numbersInEnglish")%>' Font-Bold="true"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />


                                </itemtemplate>
                            </asp:Repeater>
                            <table style="width: 100%; border: 1px solid;">
                                <tr style="border: 1px solid;">
                                    <td style="float: right;">For
                                        <asp:Label ID="lblForCmpName" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="border: 1px solid;">
                                    <td style="float: left;">Authorised Signatory</td>
                                </tr>
                                <tr style="border: 1px solid;">
                                    <td style="float: left;">This is System generated payslip hence signature does not required.</td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>

        <br />
    </div>


</asp:Content>
