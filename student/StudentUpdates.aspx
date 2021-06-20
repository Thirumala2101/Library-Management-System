<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="StudentUpdates.aspx.cs" Inherits="student_StudentUpdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
 .MyCalendar  {
    border:1px solid #646464;
    background-color: lemonchiffon;
    color: red;
}
    .style14
    {
        text-align: right;
    }
</style>
    <table style="width: 100%; bgcolor:#98AFC7; box-border:10px 10px 10px 10px #00000">
        <tr>
            <td colspan="2">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 208px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 23px; width: 208px; text-align: right;">
                            <asp:Label ID="Label10" runat="server" Text="Student-ID" Font-Bold="True" 
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="height: 23px">
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" 
                                Font-Bold="True" ForeColor="Black" style="height: 26px" />
                            <asp:Button ID="Button4" runat="server" Text="Cancel" Font-Bold="True" 
                                ForeColor="Black" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdidtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label13" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label2" runat="server" Text="Student Name" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="stdnametxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>CME</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>CIVIL</asp:ListItem>
                    <asp:ListItem>MECH</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label4" runat="server" Text="Sem" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>I sem</asp:ListItem>
                    <asp:ListItem>II sem</asp:ListItem>
                    <asp:ListItem>III sem</asp:ListItem>
                    <asp:ListItem>IV sem</asp:ListItem>
                    <asp:ListItem>V sem</asp:ListItem>
                    <asp:ListItem>VI sem</asp:ListItem>
                    
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 216px;" class="style14">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtfather" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right"  
                    TargetControlID="txtdob" CssClass="MyCalendar">
                </ajaxToolkit:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
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
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 216px;" class="style14">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 216px" class="style14">
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Update" Width="64px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" Width="64px" 
                    Font-Bold="True" ForeColor="Black" />
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 216px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

