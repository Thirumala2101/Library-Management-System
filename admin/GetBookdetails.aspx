<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="GetBookdetails.aspx.cs" Inherits="admin_ReportFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
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
            <td style="width: 234px; text-align: right;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Submit" 
                    Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label11" runat="server" Text="BookID" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbookid" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label12" runat="server" Text="Name" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbookname" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label13" runat="server" Text="Edition" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtedition" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 234px; text-align: right;">
                <asp:Label ID="Label14" runat="server" Text="Author" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtauthor" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label16" runat="server" Text="NoofPages" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnoofpages" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label17" runat="server" Text="Year" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtyear" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label18" runat="server" Text="Source" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsource" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label19" runat="server" Text="Cost" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcost" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 234px; text-align: right;">
                <asp:Label ID="Label20" runat="server" Text="InsertDate" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtInserteddate" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        </table>
</asp:Content>

