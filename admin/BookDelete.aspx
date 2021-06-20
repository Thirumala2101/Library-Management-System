<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BookDelete.aspx.cs" Inherits="admin_FacultyDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label16" runat="server" Text="Book-ID" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Delete" 
                    Font-Bold="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" Text="Cancel" Font-Bold="True" />
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label17" runat="server" Text="."></asp:Label>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

