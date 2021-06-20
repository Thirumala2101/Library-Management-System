<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/Faculty.master" AutoEventWireup="true" CodeFile="FacultyGetDetails.aspx.cs" Inherits="faculty_FacultyGetDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="#98AFC7">
    <tr>
        <td align="right">
            <asp:Label ID="Label1" runat="server" Text="Faculty_ID" Font-Bold="True"></asp:Label>
        </td>
        <td style="height: 25px; width: 55%">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="right" >
            &nbsp;&nbsp;&nbsp;
        </td>
        <td style="width: 55%;">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Font-Bold="True" Height="24px" Width="66px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 306px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td style="width: 55%;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="color: #0000FF"><strong>&nbsp;</strong></span><p 
                style="margin-left: 2px">
                <table style="width: 100%; margin-left: 0px; height: 166px;">
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label12" runat="server" Text="Faculty_ID" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Facidtxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label14" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtpwd" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label13" runat="server" Text="FacultyName" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="facnametxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="facfnametxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="facdobtxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 23px; width: 248px; text-align: right;">
                                        <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="height: 23px">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Enabled="False">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label7" runat="server" Text="MobileNumber" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="faccontactnotxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="facaddtxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px; text-align: right;">
                                        <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="facemailtxt" runat="server" Enabled="False"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 248px">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
    &nbsp;</p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="       ."></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

