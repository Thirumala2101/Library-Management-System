<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/Faculty.master" AutoEventWireup="true" CodeFile="FacultyUpdate.aspx.cs" Inherits="faculty_FacultyUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style type="text/css">
 .MyCalendar  {
    border:1px solid #646464;
    background-color: lemonchiffon;
    color: red;
}
     .style14
     {
         width: 203px;
         text-align: right;
     }
     .style15
     {
         height: 16px;
         width: 203px;
     }
     .style16
     {
         text-align: right;
     }
 </style>
    <table style="width: 100%; background-image: none; margin-left: 0px; height: 195px;" 
        bgcolor="#98AFC7">
        <tr>
            <td class="style14">
                <asp:Label ID="Label1" runat="server" Text="Faculty-ID" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td style="height: 16px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td style="height: 16px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 16px" colspan="2">
                <table style="width: 97%; margin-left: 0px;">
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label12" runat="server" Text="Faculty-ID" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Facidtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label14" runat="server" Text="Password" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label13" runat="server" Text="FacultyName" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="facnametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="facfnametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="facdobtxt" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="facdobtxt_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right"  
                    TargetControlID="facdobtxt" CssClass="MyCalendar">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 240px;" class="style16">
                <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label7" runat="server" Text="ContactNumber" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="faccontactnotxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="facaddtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px" class="style16">
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="facemailtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 240px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="height: 23px">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Update" 
                    Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Cancel" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Enabled="False" Text="             ."></asp:Label>
            </td>
        </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="       ."></asp:Label>
               
            </td>
        </tr>
    </table>
</asp:Content>

