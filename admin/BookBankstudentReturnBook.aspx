<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BookBankstudentReturnBook.aspx.cs" Inherits="admin_BookBankstudentReturnBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">

        //    function Calculate(rdate, actrdate, latefee) {
        //        var actrdate2 = document.getElementById(actrdate).value;
        //        var date1 = new Date(actrdate2);

        //        var rdate2 = document.getElementById(rdate).value;
        //        var date2 = new Date(actrdate2);

        //        

        //        var timeDiff = Math.abs(date2.getTime() - date1.getTime());
        //        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));

        //        document.getElementById(latefee).value = diffDays;

        //    }

        function Calculate2(ctrl) {
            alert("hi");
            var row = ctrl.parentNode.parentNode; //to get row containing image
            var rowIndex = row.rowIndex; //row index of that row.

            alert("hi2");
            var grid1 = document.getElementById("<%= GridView2.ClientID %>");

            alert(rowIndex);
            for (j = 0; j < grid1.rows.length - 1; j++) {

                if (rowIndex == j) {

                    var rdate2 = grd.rows[rowIndex].cells[3].childNodes[0].value;

                    var date2 = new Date(rdate2);


                    var actrdate2 = grd.rows[rowIndex].cells[5].childNodes[0].value;
                    var date1 = new Date(actrdate2);





                    var latefee = grd.rows[rowIndex].cells[4].childNodes[0].value;

                    var timeDiff = Math.abs(date2.getTime() - date1.getTime());
                    var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));

                    document.getElementById(latefee).value = diffDays;

                }

            }

        }



  

</script>

    <table style="width: 88%; height: 31px; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
       
        <tr>
            <td style="height: 70px">
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: right">
                            <asp:Label ID="Label6" runat="server" Text="StudentID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                Text="Submit" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" /></td>
                    </tr>
                    <tr>
                    
                        <td colspan="2" align="center">
                        <table align="center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" onrowcancelingedit="GridView2_RowCancelingEdit1" 
                    onrowdatabound="GridView2_RowDataBound1" onrowediting="GridView2_RowEditing1" 
                    onrowupdating="GridView2_RowUpdating1"  CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr">
                    <Columns>
                    <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRow" runat="server" AutoPostBack="true"  OnCheckedChanged="chkTest_CheckedChanged" />
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
                                <asp:Label ID="lblIssueDate" runat="server" Text='<%# Bind("IssueDate","{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ActualReturnDate">
                           <%-- <EditItemTemplate>
                                <asp:TextBox ID="lblActualReturnDate" runat="server" 
                                    Text='<%# Bind("ActualReturnDate") %>'></asp:TextBox>
                            </EditItemTemplate>--%>
                            <ItemTemplate>
                                <asp:Label ID="lblActualReturnDate" runat="server" Text='<%# Bind("ActualReturnDate","{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ReturnDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtReturnDate" runat="server" Enabled="False"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Enabled="False"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </table>
                        </td>
                    </tr>
                </table>
               </td>
        </tr>
        </table>
</asp:Content>

