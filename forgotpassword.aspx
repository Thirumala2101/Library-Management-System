<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1" align="center">
    <tr>
        <td class="style6" colspan="2">
            <h1 class="style7" style="font-style: italic; color: #FF00FF">
                Forget Password</h1>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="EmailId" Font-Bold="True" 
                ForeColor="#FF0066"></asp:Label>
        </td>
        <td style="width: 188px">
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 18px">
            </td>
        <td style="width: 188px; height: 18px">
            <asp:Button ID="Send" runat="server" onclick="Send_Click" Text="Send" 
                Font-Bold="True" ForeColor="Blue" Width="113px" Height="34px" />
            <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

