<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/Faculty.master" AutoEventWireup="true" CodeFile="GetBookdetails.aspx.cs" Inherits="faculty_GetBookdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="#98AFC7">
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label15" runat="server" Text="Book-ID" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="textBooid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="textBooid" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 234px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
                    Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label11" runat="server" Text="Book-ID" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label12" runat="server" Text="BookName" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label13" runat="server" Text="BookEdition" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 234px; text-align: right;">
                <asp:Label ID="Label14" runat="server" Text="BookAuthor" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

