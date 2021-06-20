<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ReturnRefferncebook.aspx.cs" Inherits="admin_ReturnRefferncebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 88%; height: 202px; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
    <tr>
        <td style="width: 322px; text-align: right;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Student-ID" Font-Bold="True" 
                    style="text-align: center"></asp:Label>
        </td>
        <td style="width: 303px">
            <asp:TextBox ID="txtStudentID" runat="server" 
                ontextchanged="txtStudentID_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 322px; text-align: right;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
            </td>
        <td style="width: 303px">
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    Font-Bold="True" style="width: 67px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 322px; text-align: right;">
            &nbsp;</td>
        <td style="width: 303px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <asp:Label ID="lblmsg2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
                &nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView2" runat="server" AlternatingRowStyle-CssClass="alt" 
                    AutoGenerateColumns="False" CssClass="Grid" 
                    onrowcancelingedit="GridView2_RowCancelingEdit1" 
                    onrowdatabound="GridView2_RowDataBound1" onrowediting="GridView2_RowEditing1" 
                    onrowupdating="GridView2_RowUpdating1" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged" 
                    PagerStyle-CssClass="pgr" Width="699px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRow" runat="server" AutoPostBack="true" OnCheckedChanged="chkTest_CheckedChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="StudentId">
                        <%-- <EditItemTemplate>
                                <asp:TextBox ID="lblStudentId" runat="server" Text='<%# Bind("StudentId") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <asp:Label ID="lblStudentId" runat="server" Text='<%# Bind("StudentId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BookID">
                        <%--<EditItemTemplate>
                                <asp:TextBox ID="lblBookId" runat="server" Text='<%# Bind("BookID") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <asp:Label ID="lblBookId" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IssueDate">
                        <%-- <EditItemTemplate>
                                <asp:TextBox ID="lblIssueDate" runat="server" Text='<%# Bind("IssueDate") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <asp:Label ID="lblIssueDate" runat="server" 
                                    Text='<%# Bind("IssueDate","{0:dd/MM/yyyy}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ReturnDate">
                            <EditItemTemplate>
                                <asp:Label ID="txtReturnDate" runat="server" Enabled="False"></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="txtReturnDate1" runat="server" Enabled="False" ClientIDMode="Static" onchange="javascript: Calculate2(this);" ></asp:Label>
                            </ItemTemplate>
                             <%--<ItemTemplate>
                            <asp:Label ID="txtReturnDate2" runat="server" Enabled="False"></asp:Label>
                        </ItemTemplate>--%>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 322px">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Update" 
                    Visible="False" />
        </td>
        <td style="width: 303px">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

