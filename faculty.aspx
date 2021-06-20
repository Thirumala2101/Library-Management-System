<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="faculty.aspx.cs" Inherits="faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 54%; height: 262px; margin-left: 340px; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td align="center" colspan="2"  style="color: #0000FF">
            
                <strong>Faculty Login</strong></td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" 
                    Width="189px" placeholder="UserName"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="33px" 
                    Width="189px" placeholder="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 143px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 278px">
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                    style="text-align: center" ForeColor="#006666" Height="35px" 
                    Width="199px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

