<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="HelpChangePassword.aspx.cs" Inherits="admin_HelpChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
    <table style="width: 50%; margin-left: 182px;box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td style="width: 477px" bgcolor="#98AFC7">
                <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 516px" bgcolor="#98AFC7">
                <asp:TextBox ID="usernametxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="usernametxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 477px" bgcolor="#98AFC7">
                <asp:Label ID="Label2" runat="server" Text="Old Password" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 516px" bgcolor="#98AFC7">
                <asp:TextBox ID="oldpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="oldpasswordtxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 477px" bgcolor="#98AFC7">
                <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 516px" bgcolor="#98AFC7">
                <asp:TextBox ID="newpasswordtxt" runat="server" Height="22px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="newpasswordtxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 477px" bgcolor="#98AFC7">
                <asp:Label ID="Label5" runat="server" Text="Confirm Password" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 516px" bgcolor="#98AFC7">
                <asp:TextBox ID="confirmpasswordtxt" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="newpasswordtxt" ControlToValidate="confirmpasswordtxt" 
                    ErrorMessage="CompareValidator"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 477px" bgcolor="#98AFC7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Change" 
                    Font-Bold="True" />
                </td>
            <td style="width: 516px" bgcolor="#98AFC7">
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="."></asp:Label>
            </td>
        </tr>
    </table>
    </p>
</asp:Content>

