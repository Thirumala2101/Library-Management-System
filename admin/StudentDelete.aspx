<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentDelete.aspx.cs" Inherits="admin_StudentDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left: 318px; bgcolor:#98AFC7;  box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td >
                <asp:Label ID="Label10" runat="server" Text="Student-ID" Font-Bold="True"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >
                 &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />

            </td>
        </tr>
        <tr>
            <td >
                 &nbsp;</td>
            <td>
                 <asp:Label ID="Label11" runat="server" Text="."></asp:Label>

            </td>
        </tr>
    </table>
</asp:Content>

