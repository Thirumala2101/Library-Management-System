<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentUpdates.aspx.cs" Inherits="admin_StudentUpdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 65%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888; height: 366px; margin-left: 216px;">
        <tr>
            <td colspan="2">
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: right; width: 214px" >
                            <asp:Label ID="Label14" runat="server" Text="StudentId"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td style="height: 23px; width: 214px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td style="height: 23px">
                            <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" 
                                Font-Bold="True" ForeColor="Black" style="height: 26px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdidtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label13" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label2" runat="server" Text="Student Name" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdnametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>CME</asp:ListItem>
                                    <asp:ListItem>ECE</asp:ListItem>
                                    <asp:ListItem>EEE</asp:ListItem>
                                    <asp:ListItem>MECH</asp:ListItem>
                                    <asp:ListItem>CIVIL</asp:ListItem>
                                    
                                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label4" runat="server" Text="Year" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                                    <asp:ListItem>-select-</asp:ListItem>
                                    <asp:ListItem>I SEM</asp:ListItem>
                                    <asp:ListItem>II SEM</asp:ListItem>
                                    <asp:ListItem>III SEM</asp:ListItem>
                                    <asp:ListItem>IV SEM</asp:ListItem>
                                    <asp:ListItem>V SEM</asp:ListItem>
                                    <asp:ListItem>VI SEM</asp:ListItem>
                                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 216px; text-align: right;">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtfather" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
               
                <ajaxToolkit:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" CssClass="MyCalendar" Format="dd/MM/yyyy" PopupPosition="Right" TargetControlID="txtdob">
                </ajaxToolkit:CalendarExtender>
               
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label12" runat="server" Text="Gender" Font-Bold="True" 
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
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 216px; text-align: right;">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px; text-align: right;">
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="."></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Update" Width="64px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="64px" 
                    Font-Bold="True" onclick="Button2_Click" />
            </td>
        </tr>
        </table>
</asp:Content>

