
<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="admin_StudentRegistration" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
 .MyCalendar  {
    border:1px solid #646464;
    background-color: lemonchiffon;
    color: red;
}
    .style15
    {
        text-align: right;
    }
    .style16
    {
        width: 100%;
    }
    .style17
    {
        text-align: left;
    }
    .style18
    {
        height: 23px;
        width: 281px;
    }
    .style19
    {
        height: 23px;
        text-align: left;
    }
    .style20
    {
        width: 280px;
    }
    .style25
    {
        width: 281px;
    }
</style>
    <table   style="width:100%; bgcolor:#98AFC7;box-shadow:10px 10px 10px 10px #888888; margin-left: 113px; height: 755px;">
        <tr>
            <td class="style15">
            <marquee behavior="alternate">    Welcome To Student Registration</marquee> </td>
        </tr>
        <tr>
            <td class="style15" align="center">
                <table class="style16">
                    <tr>
                        <td class="style20">
                            <asp:Label ID="Label16" runat="server" Text="Student Registration By Using"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Excel</asp:ListItem>
                                <asp:ListItem>One By One</asp:ListItem>
                                <asp:ListItem>Download</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style17">
                            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Submit" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
                                <asp:Label ID="Label18" runat="server" Text="SelectYear" Visible="false"></asp:Label>
                            </td>
                        <td class="style17">
                            <asp:DropDownList ID="DropDownList5" runat="server" 
                                onselectedindexchanged="DropDownList5_SelectedIndexChanged"  Visible="false">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>CME</asp:ListItem>
                                <asp:ListItem>EEE</asp:ListItem>
                                <asp:ListItem>MECH</asp:ListItem>
                                <asp:ListItem>ECE</asp:ListItem>
                                <asp:ListItem>CIVIL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style20">
                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                Text="Register"  Visible="false" />
                        </td>
                        <td class="style17">
                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" Text="Update"  Visible="false"/>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="style15" align="center">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style16">
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style17" colspan="2">
                                <asp:Button ID="Button4" runat="server" Font-Bold="True" 
                                    onclick="Button4_Click" style="margin-left: 0px" Text="DownloadExcelSheet" 
                                    Width="158px"  Visible="false" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label17" runat="server" Text="Select File"  Visible="false"></asp:Label>
                            </td>
                            <td class="style17" colspan="2">
                                <asp:FileUpload ID="FileUpload1" runat="server"  Visible="false"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Button ID="ImportEceltodatabaseButton" runat="server" Font-Bold="True" 
                                    onclick="Button3_Click" Text="Upload1" Width="124px"  Visible="false"/>
                            </td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Button ID="Button5" runat="server" Font-Bold="True" 
                                    onclick="Button5_Click" Text="Upload" Width="101px"  Visible="false" />
                            </td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style17" colspan="2">
                                <asp:Label ID="lblResultmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" align="center">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="style16">
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="stdidtxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <asp:Label ID="Label15" runat="server" Text="Password" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style19">
                                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label2" runat="server" Text="StudentName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="stdnametxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
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
                            <td class="style25">
                                <asp:Label ID="Label4" runat="server" Text="Year" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
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
                            <td class="style25">
                                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtFather" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label6" runat="server" Text="DateOfBirth" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                                <ajaxToolkit:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    CssClass="MyCalendar" Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" 
                    TargetControlID="txtdob">
                                </ajaxToolkit:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label7" runat="server" Text="Contact Number" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtcontact" runat="server" Height="23px" 
                   ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="must be 10 numbers" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtadress" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="Black"></asp:Label>
                            </td>
                            <td class="style17">
                                <asp:TextBox ID="txtemail" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Button ID="Button1" runat="server" Text="Save" Width="64px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="Black" Height="31px" />
                            </td>
                            <td class="style17">
                                <asp:Button ID="Button2" runat="server" Text="Cancel" Width="64px" 
                    Font-Bold="True" ForeColor="Black" CausesValidation="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style15" align="center">
&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" align="left">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

