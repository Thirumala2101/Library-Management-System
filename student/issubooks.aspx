<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="issubooks.aspx.cs" Inherits="student_issubooks" %>

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
<script type="text/javascript">
    function PrintGridData() {
        var prtGrid = document.getElementById('<%=gvSelected.ClientID %>');
        prtGrid.border = 0;
        var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
        prtwin.document.write(prtGrid.outerHTML);
        prtwin.document.close();
        prtwin.focus();
        prtwin.print();
        prtwin.close();
    }
    function Button2_onclick() {

    }

    function btnPrint_onclick() {

    }

    function btnPrint_onclick() {

    }

    function btnPrint_onclick() {

    }

    function btnPrint_onclick() {

    }

</script>

    <table style="width:100%; bgcolor:#98AFC7; box-shadow: 10px 10px 10px 10px  #888888; margin-left: 162px;">
    <tr>
        <td colspan="2">
       </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 268px;">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Student-Id" 
                BorderColor="Black" ForeColor="Black" Font-Bold="True"></asp:Label>
            </strong>
        </td>
        <td>
            <asp:TextBox ID="txtStudentId" runat="server" Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtStudentId" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="text-align: right; width: 268px;">
                &nbsp;</td>
        <td>
            <asp:Button ID="Submitbtn" runat="server" onclick="Submitbtn_Click" 
                Text="Submit" Font-Bold="True" ForeColor="Black" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-CssClass="alt" 
                AutoGenerateColumns="False" CssClass="Grid" 
                onrowcancelingedit="GridView1_RowCancelingEdit" 
                onrowdatabound="GridView1_RowDataBound" onrowediting="GridView1_RowEditing" 
                onrowupdating="GridView1_RowUpdating" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                PagerStyle-CssClass="pgr" style="margin-left: 0px" Width="497px">
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkRow" runat="server" AutoPostBack="true" 
                                OnCheckedChanged="chkTest_CheckedChanged" Visible="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="StudentId">
                        <ItemTemplate>
                            <asp:Label ID="lblStudentId" runat="server" style="Width:50px" 
                                Text='<%# Bind("StudentId") %> '></asp:Label>
                        </ItemTemplate>
                        <%--<EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StudentId") %>' style="Width:50px"></asp:TextBox>
                        </EditItemTemplate>--%>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BookId">
                        <ItemTemplate>
                            <asp:Label ID="lblBookId" runat="server" style="Width:50px" 
                                Text='<%# Bind("BookId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BookName">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IssueDate">
                        <ItemTemplate>
                            <asp:Label ID="lblIssueDate" runat="server" style="Width:50px" 
                                Text='<%# Bind("IssueDate","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ReturnDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtReturnDate" runat="server" ClientIDMode="Static" 
                                Enabled="False" onchange="javascript: Calculate2(this);" style="Width:50px"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                                CssClass="MyCalendar" Enabled="True" Format="dd/MM/yyyy" PopupPosition="Right" 
                                TargetControlID="txtReturnDate">
                            </ajaxToolkit:CalendarExtender>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="txtReturnDate2" runat="server" Enabled="False"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LateFee">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLateFee" runat="server" Enabled="False" style="Width:50px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="txtLateFee2" runat="server" Enabled="False"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ActualReturnDate">
                        <ItemTemplate>
                            <asp:Label ID="lblActualReturnDate" runat="server" style="Width:50px" 
                                Text='<%# Bind("ActualReturnDate","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
            </asp:GridView>
            </td>
    </tr>
    <tr>
        <td style="width: 268px">
                &nbsp;</td>
        <td>
                <asp:Button ID="Button1" runat="server" Text="Update" Width="79px" 
                    onclick="Button1_Click" style="height: 26px" Visible="False" />
        </td>
       
    </tr>

    <tr>
        <td style="width: 268px">
       <input type="button" id="btnPrint" value="Print" onclick="PrintGridData()" 
        onclick="return Button2_onclick()" onclick="return btnPrint_onclick()" 
                onclick="return btnPrint_onclick()" onclick="return btnPrint_onclick()" 
                style="width: 67px" onclick="return btnPrint_onclick()" /></td>
        <td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
       
    </tr>

    <tr>
        <td colspan="2">


 <asp:GridView ID="gvSelected" runat="server" HeaderStyle-BackColor="#3AC0F2" 
                HeaderStyle-ForeColor="White" style="margin-left: 0px" 
    AutoGenerateColumns="false"  CssClass="Grid"                    

                      AlternatingRowStyle-CssClass="alt"

                      PagerStyle-CssClass="pgr" Visible="False">

<Columns>
   <asp:BoundField DataField = "StudentId" HeaderText = "StudentId" />
   <asp:BoundField DataField = "BookId" HeaderText = "BookId" />
 
    <asp:BoundField DataField = "IssueDate" HeaderText = "IssueDate" /> 

   <asp:BoundField DataField = "ActualReturnDate" HeaderText = "ActualReturnDate" />
     <asp:BoundField DataField = "ReturnDate" HeaderText = "ReturnDate" />
   <asp:BoundField DataField = "LateFee" HeaderText = "LateFee" />
  

 </Columns>

</asp:GridView>

        </td>
       
    </tr>

</table>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;
    <%--<asp:Button ID="btnprint" runat="server" Text="Print" 
        OnClientClick="javascript:PrintGridData()" Visible="false" 
        />--%>
       &nbsp;<br />

<table>


</table>
</asp:Content>

