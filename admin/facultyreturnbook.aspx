<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="facultyreturnbook.aspx.cs" Inherits="admin_facultyreturnbook" %>

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
        var grid1 = document.getElementById("<%= GridView1.ClientID %>");

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



    //function update(rowIndexOfGridview) {
    //    var ri = rowIndexOfGridview; 
    //    var grd = document.getElementById('<%= GridView1.ClientID %>');

    //    CellValue = grd.rows[ri].cells[1].childNodes[0].value; // get
    //    grd.rows[ri].cells[2].childNodes[0].value = CellValue; assign
    //    ...........
    //    .............
    //}


</script>

    <table style="width: 88%; height: 202px;bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888">
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Text="Faculty-ID" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 303px; text-align: left;">
                <asp:TextBox ID="txtFacultyID" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFacultyID" ErrorMessage="*"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 339px; text-align: right;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="width: 303px; text-align: left;">
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    Font-Bold="True" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td  text-align: right;">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
            </td>
            <td style="width: 303px; text-align: left;">
                <asp:Label ID="Label2" runat="server" Text="         ."></asp:Label>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowupdating="GridView1_RowUpdating" onrowediting="GridView1_RowEditing" 
                    Width="350px" 
                    onrowdatabound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkRow" runat="server" AutoPostBack="true"  OnCheckedChanged="chkTest_CheckedChanged" />
                            </ItemTemplate>
                           
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="faculty_id">
                           
                            <ItemTemplate>
                                <asp:Label ID="lblFacultyID" runat="server" Text='<%# Bind("faculty_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BookId">
                        
                        <ItemTemplate>
                            <asp:Label ID="lblBookId" runat="server" Text='<%# Bind("BookId") %>'  style="Width:50px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IssueDate">                      
                        <ItemTemplate>
                            <asp:Label ID="lblIssueDate" runat="server" Text='<%# Bind("IssueDate", "{0:d}") %>'  style="Width:50px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ReturnDate">
                        <ItemTemplate>
                            <asp:Label ID="txtReturnDate"  runat="server" ClientIDMode="Static" onchange="javascript: Calculate2(this);" ></asp:Label>
                           <%-- <ajaxToolkit:CalendarExtender ID="txtReturnDate_CalendarExtender" runat="server" 
                Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" CssClass="MyCalendar" TargetControlID="txtReturnDate">
            </ajaxToolkit:CalendarExtender>--%>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>

