<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 52%; height: 277px; margin-left: 350px; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td align="center" colspan="2" class="style5" 
                style="color: #0000FF; font-size: large">
                <strong>Librarian Login</strong></td>
        </tr>
        <tr>
            <td style="width: 117px">
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="UserName" Height="33px" 
                    Width="189px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" placeholder="Password" Height="33px" 
                    Width="189px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 278px">
                &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="#006666" Height="35px" 
                    Width="187px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

