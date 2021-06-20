<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BookBankStdReg.aspx.cs" Inherits="admin_BookBankStdReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 69%; box-shadow: 10px 10px 10px 10px  #888888; height: 141px; margin-left: 127px;">
        
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Text="StudentID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentID" runat="server" AutoPostBack="True" 
                    ontextchanged="txtStudentID_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lbl" runat="server" Text="StudentName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Branch"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBranch" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="txtDOB0" runat="server" Text="Year"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYear" runat="server" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label8" runat="server" Text="Fee"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFee" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    onclick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

