<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewBookBankStudents.aspx.cs" Inherits="admin_ViewBookBankStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         PageIndex="5" 
        Width="274px"   CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" />
            <asp:BoundField DataField="Year" HeaderText="Year" />
            <asp:BoundField DataField="Fee" HeaderText="Fee" />
        </Columns>
    </asp:GridView>
</asp:Content>

