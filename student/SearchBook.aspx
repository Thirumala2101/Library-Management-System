<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="student_SearchBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="#98AFC7">
    <tr>
        <td style="width: 177px; text-align: right;">
            <asp:Label ID="Label1" runat="server" Text="BookName" Font-Bold="True"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 177px">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" style="text-align: center" 
                Text="Search Book" onclick="Button1_Click" Font-Bold="True" />
            </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="384px">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="BookID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Edition" HeaderText="Edition" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 177px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>



