<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          var dateFormat = "YYYY/MM/DD",
         TextBox1= $("#TextBox1").datepicker({
              changeMonth: true,
              changeYear: true
         }),
           TextBox2 = $("#TextBox2").datepicker({
               changeMonth: true,
               changeYear: true

           });

      });
  
</script>
    <style type="text/css">
        .highlight {text-decoration: none;color:black;background:yellow;}
</style>
  
</head>
<body>
    <form id="form2" runat="server">
    <div>
         <center>
        <asp:Table ID="table1" runat="server" Width="242px" style="margin-left: 0px">
       <asp:TableRow runat="server" ID="row1">
           <asp:TableCell runat="server" ID="col1"> <asp:Label ID="From" runat="server" Text="Label" >From Date</asp:Label></asp:TableCell>
        <asp:TableCell runat="server" ID="col2">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
           

        </asp:TableCell>
     

       </asp:TableRow>
            <asp:TableRow runat="server" ID="row2">
                <asp:TableCell runat="server" ID="col3">
                    <asp:Label ID="to" runat="server" Text="Label">To Date</asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server" ID="col4">
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>

                <asp:TableCell runat="server" ID="TableCell1">
                 <asp:Label ID="lblerror" runat="server"></asp:Label>
                </asp:TableCell>

            </asp:TableRow>

            </asp:Table>
<asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" /> &nbsp&nbsp&nbsp&nbsp
<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" Width="51px" /> &nbsp&nbsp&nbsp&nbsp
             <asp:Button ID="Button1" runat="server"  OnClick="cancel_Click" Text="Cancel" />
            </center>
        <p>

<asp:TextBox ID="txtSearch" runat="server" />&nbsp;&nbsp;
<asp:Button ID="btnSearch" Text="Search" runat="server"
Style="top: 5px; position: relative" onclick="btnSearch_Click" BackColor="#FF6600" BorderColor="Black" Font-Bold="True" Font-Italic="True" />&nbsp;&nbsp;

</p>
        <asp:ScriptManager ID="scriptmanager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="updatepanel1" UpdateMode="Conditional">
            <ContentTemplate>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass = "Grid" BorderColor="Red" OnRowDataBound="GridView1_RowDataBound" AllowPaging="true" PageSize="10"  OnPageIndexChanging="GridView1_PageIndexChanging" >
              

             <Columns>


 <asp:TemplateField HeaderText="Po_no">
                  <ItemTemplate>
                <asp:Label ID="pomas_pono" runat="server"  Text='<%#Eval("pomas_pono")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="podocstatus">
                  <ItemTemplate>
                <asp:Label ID="pomas_podocstatus" runat="server" Text='<%#Eval("pomas_podocstatus")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>

               <asp:TemplateField HeaderText="poou">
                  <ItemTemplate>
                <asp:Label ID="pomas_poou" runat="server" Text='<%#Eval("pomas_poou")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="poamendmentno">
                  <ItemTemplate>
                <asp:Label ID="pomas_poamendmentno" runat="server" Text='<%#Eval("pomas_poamendmentno")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField >
                  <asp:TemplateField HeaderText="suppliercode">
                  <ItemTemplate>
                <asp:Label ID="pomas_suppliercode" runat="server" Text='<%#Eval("pomas_suppliercode")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="pobasicvalue">
                  <ItemTemplate>
                <asp:Label ID="pomas_pobasicvalue" runat="server" Text='<%#Eval("pomas_pobasicvalue")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                 <asp:TemplateField HeaderText="createdby">
                  <ItemTemplate>
                <asp:Label ID="pomas_createdby" runat="server" Text='<%#Eval("pomas_createdby")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="itemcode">
                  <ItemTemplate>
                <asp:Label ID="poitm_itemcode" runat="server" Text='<%#Eval("poitm_itemcode")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                 <asp:TemplateField HeaderText="order_quantity">
                  <ItemTemplate>
                <asp:Label ID="poitm_order_quantity" runat="server" Text='<%#Eval("poitm_order_quantity")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="po_cost">
                  <ItemTemplate>
                <asp:Label ID="poitm_po_cost" runat="server" Text='<%#Eval("poitm_po_cost")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="itemvalue">
                  <ItemTemplate>
                <asp:Label ID="poitm_itemvalue" runat="server" Text='<%#Eval("poitm_itemvalue")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="itemdescription">
                  <ItemTemplate>
                <asp:Label ID="poitm_itemdescription" runat="server" Text='<%#Eval("poitm_itemdescription")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="poamendmentno">
                  <ItemTemplate>
                <asp:Label ID="poitm_poamendmentno" runat="server" Text='<%#Eval("poitm_poamendmentno")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                  <asp:TemplateField HeaderText="polineno">
                  <ItemTemplate>
                <asp:Label ID="poitm_polineno" runat="server" Text='<%#Eval("poitm_polineno")%>'></asp:Label>
            </ItemTemplate>
     </asp:TemplateField>
                 <asp:TemplateField HeaderText="Remarks">
                <ItemTemplate>
    <asp:TextBox ID="remarks" runat="server" Text='<%#Eval("remarks")%>'></asp:TextBox>
</ItemTemplate>
     </asp:TemplateField>
                        <asp:TemplateField HeaderText="check">
            <ItemTemplate >
                <asp:CheckBox ID="check" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
                           
                 
                  </Columns>


           </asp:GridView>
       

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="save" runat="server" Text="Save" Width="76px" OnClick="save_Click" BorderColor="Red" ForeColor="Red" />
             </ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID="save" />
</Triggers>
            </asp:UpdatePanel>
                </center>
    </div>
    </form>
</body>
</html>
