<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <table style="border-style: solid; width: 51%; height: 263px; margin-left: 333px; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 278px" style="color: #0000FF">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Student Login</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" 
                    Width="189px" placeholder="UserName"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 278px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="33px" 
                    Width="189px" placeholder="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 278px">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                    Font-Bold="True" style="margin-left: 0px" Width="194px" 
                    ForeColor="#006666" Height="41px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

