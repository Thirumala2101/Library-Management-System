<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="libraryreference.aspx.cs" Inherits="admin_StudentAttendence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width: 100%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 181px">
                    &nbsp;</td>
                <td style="width: 181px">
                    &nbsp;</td>
                <td style="width: 182px">
                    &nbsp;</td>
                <td style="width: 214px">
                    &nbsp;</td>
                <td style="width: 211px">
                    &nbsp;</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="BookBankIssuebooks"></asp:Label>
                </td>
                <td style="width: 181px">
                    <asp:Label ID="Label4" runat="server" Text="StudentIssueBooks "></asp:Label>
                </td>
                <td style="width: 181px">
                    <asp:Label ID="Label6" runat="server" Text="ReferenceBooks"></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label1" runat="server" Text="FacultyIssueBook"></asp:Label>
                </td>
                <td style="width: 214px">
                    <asp:Label ID="Label2" runat="server" Text="CurentBooksInLibrary"></asp:Label>
                </td>
                <td style="width: 211px">
                    <asp:Label ID="Label3" runat="server" Text="TotalBooks"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblStdBookBankIssueBooks" runat="server" 
                        ></asp:Label>
                </td>
                <td style="width: 181px">
                    <asp:Label ID="lblStdIssueBooks" runat="server"></asp:Label>
                </td>
                <td style="width: 181px">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:Label ID="lblFacIssueBooks" runat="server"></asp:Label>
                </td>
                <td style="width: 214px">
                    <asp:Label ID="lblCurentLibBooks" runat="server"></asp:Label>
                </td>
                <td style="width: 211px">
                    <asp:Label ID="lblTotLibBooks" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 181px">
                    &nbsp;</td>
                <td style="width: 181px">
                    &nbsp;</td>
                <td style="width: 182px">
                    &nbsp;</td>
                <td style="width: 214px">
                    &nbsp;</td>
                <td style="width: 211px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="7">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:BoundField DataField="NoOf_studentIssuebooks" 
                                HeaderText="NoOf_studentIssuebooks" />
                            <asp:BoundField DataField="NoOf_FacultyIssuebooks" 
                                HeaderText="NoOf_FacultyIssuebooks" />
                            <asp:BoundField DataField="NoOf_Curentlibrarybooks" 
                                HeaderText="NoOf_Curentlibrarybooks" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            </table>

</asp:Content>

