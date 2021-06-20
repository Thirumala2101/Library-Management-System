<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="GetStudentsdetails.aspx.cs" Inherits="admin_ReportOfStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <table style="width:67%; bgcolor:#98AFC7;box-shadow:10px 10px 10px 10px  #888888; height: 330px; margin-left: 188px;" >
        <tr>
            <td  text-align: right;" style="text-align: right; width: 232px;">
                            &nbsp;<asp:Label ID="Label10" runat="server" Text="Student-ID" Font-Bold="True" 
                                ForeColor="Black"></asp:Label>
            </td>
            <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  text-align: right;" style="text-align: right; width: 232px;">
                &nbsp;</td>
            <td>
                            <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" 
                                Font-Bold="True" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button4" 
                                runat="server" Text="Clear" 
                                Font-Bold="True" onclick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td  text-align: right;" style="text-align: right; width: 232px;">
                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdidtxt" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  text-align: right;" style="text-align: right; width: 232px;">
                <asp:Label ID="Label12" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label2" runat="server" Text="Student Name" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdnametxt" runat="server" Enabled="False" 
                    EnableTheming="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>cse</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>EC</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label4" runat="server" Text="Year" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II-I</asp:ListItem>
                    <asp:ListItem>II-2</asp:ListItem>
                    <asp:ListItem>III-I</asp:ListItem>
                    <asp:ListItem>III-2</asp:ListItem>
                    <asp:ListItem>IV-I</asp:ListItem>
                    <asp:ListItem>IV-2</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  width: 242px; text-align: right;" style="text-align: right; width: 232px;">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtfather" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Enabled="False">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="txtaddress" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 232px;">
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        </table>
        </div>
</asp:Content>

