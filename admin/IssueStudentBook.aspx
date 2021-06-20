<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="IssueStudentBook.aspx.cs" Inherits="admin_IssueStudentBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 50%; height: 213px; margin-left: 146px; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
    
    <tr>
        <td style="width: 638px; height: 28px">
            <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True"></asp:Label>
        </td>
        <td style="width: 615px; height: 28px">
            <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
              AutoPostBack="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 30px">
            <asp:Label ID="Label10" runat="server" Text="BookName"></asp:Label>
        </td>
        <td style="width: 615px; height: 30px">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 30px">
            <asp:Label ID="Label2" runat="server" Text="Book-ID" Font-Bold="True"></asp:Label>
        </td>
        <td style="width: 615px; height: 30px">
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 25px">
            <asp:Label ID="Label3" runat="server" Text="Issue Date" Font-Bold="True" ></asp:Label>
        </td>
        <td style="width: 615px; height: 25px">
            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" CssClass="MyCalendar"  TargetControlID="TextBox3">
            </ajaxToolkit:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 26px">
            <asp:Label ID="Label4" runat="server" Text="Return Date" Font-Bold="True" ></asp:Label>
        </td>
        <td style="width: 615px; height: 26px">
            <asp:TextBox ID="TextBox4" runat="server"  ></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" 
                Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" CssClass="MyCalendar" TargetControlID="TextBox4">
            </ajaxToolkit:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 26px">
            &nbsp;</td>
        <td style="width: 615px; height: 26px">
            <asp:Button ID="Button1" runat="server" style="text-align: center" 
                    Text="Issue Book" onclick="Button1_Click1" Font-Bold="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td style="width: 638px; height: 26px">
            &nbsp;</td>
        <td style="width: 615px; height: 26px">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
    </tr>
</table>
</asp:Content>

