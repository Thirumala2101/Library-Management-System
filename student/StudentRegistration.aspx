<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="student_StudentRegistrtion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="#98AFC7">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdidtxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="stdidtxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="StudentName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdnametxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="stdnametxt" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    >
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>MECH</asp:ListItem>
                    <asp:ListItem>CIVIL</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Year" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1 SEM</asp:ListItem>
                    <asp:ListItem>2 SEM</asp:ListItem>
                    <asp:ListItem>3 SEM</asp:ListItem>
                    <asp:ListItem>4 SEM</asp:ListItem>
                    <asp:ListItem>5 SEM</asp:ListItem>
                    <asp:ListItem>6 SEM</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtFather" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtFather" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtcontact" runat="server" Height="23px"> 
                    </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" Width="64px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="Black" />
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

