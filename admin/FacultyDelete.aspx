<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FacultyDelete.aspx.cs" Inherits="admin_FacultyDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td style="height: 23px; text-align: right;">
                <asp:Label ID="Label10" runat="server" Text="Faculty_ID" Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="FACIDTXT" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FACIDTXT" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: right;">
                &nbsp;</td>
            <td style="height: 23px">
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" onclick="Button3_Click" 
                    Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px; text-align: right;">
                &nbsp;</td>
            <td style="height: 23px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

