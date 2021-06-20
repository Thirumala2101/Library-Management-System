<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FacultyReg.aspx.cs" Inherits="admin_FacultyReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-left: 161px">
        <table style="width:93%; box-shadow: 10px 10px 10px 10px  #888888; height: 545px">
      <%--  <tr>
            <td text-align: right;" style="text-align: right">
                            <asp:Label ID="Label16" runat="server" 
                    Text="Faculty Registration By Using"></asp:Label>
            </td>
            <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Excel</asp:ListItem>
                                <asp:ListItem>One By One</asp:ListItem>
                            </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 286px; text-align: right;">
                &nbsp;</td>
            <td>
                            <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                Text="Submit" />
            </td>
        </tr>
        <tr>
            <td  text-align: right;" style="text-align: right">
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                    Text="Register" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Update" />
            </td>
        </tr>
        <tr>
            <td style="width: 286px; text-align: right;">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>--%>
        <tr>
            <td style="text-align: right;" colspan="2">
          
<%--                <asp:Panel ID="Panel1" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 224px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="DownloadExcelSheet" style="text-align: left" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 224px">
                <asp:Label ID="Label13" runat="server" Text="Select Files"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 224px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Button ID="Button8" runat="server" Text="Upload" onclick="Button8_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 224px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Button ID="Button9" runat="server" Text="Upload" onclick="Button9_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style15" style="width: 224px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Label ID="Label17" runat="server" Text="ResultMessage"></asp:Label>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
--%>            </td>
        </tr>
        <tr>


            <td style="text-align: right;" colspan="2">
             <asp:Panel ID="Panel2" runat="server">
                <table style="width: 98%; height: 267px;">
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label1" runat="server" Text="Faculty_ID" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="Facidtxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label15" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label2" runat="server" Text="FacultyName" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="facnametxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label5" runat="server" Text="FatherName" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="facfnametxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label6" runat="server" Text="DataOfBirth" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="facdobtxt" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="facdobtxt_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" CssClass="MyCalendar" TargetControlID="facdobtxt">
                </ajaxToolkit:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label11" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label7" runat="server" Text="ContactNumber" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="faccontactnotxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label8" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="facaddtxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                <asp:Label ID="Label9" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style15">
                <asp:TextBox ID="facemailtxt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Button ID="FacSaveBtn" runat="server" Text="submit" Width="67px" 
                    onclick="Button1_Click" Font-Bold="True" style="height: 26px" />
                <asp:Button ID="FacCancelBtn" runat="server" Text="Cancel" Width="64px" 
                    Font-Bold="True" onclick="FacCancelBtn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 353px">
                            &nbsp;</td>
                        <td class="style15">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
    &nbsp;</p>
</asp:Content>

