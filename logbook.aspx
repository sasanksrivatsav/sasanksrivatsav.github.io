<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logbook.aspx.cs" Inherits="logbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <script>
        // I will use jQuery here..
        $(document).ready(function () {
            // create the request here, 
            $.ajax({
                url: 'link-of-page-to-download',
                success: function (data) {
                    /* upon success, 
                     * chances are that entire HTML will be passed down, 
                     * do not worry about any return statements, the document will be sent
                     * down into the data variable here.. 
                     */
                    $('.pop-up').html(data);
                    // Show the pop up, 
                    $('.pop-up').show();
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <center>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Transit Mixer - Log Book"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
<asp:Button ID="create" runat="server" Text="Create Log" OnClick="create_Click" />
</center>
    <div class="pop-up" style="display: none;">
   <!-- Leave it empty -->
</div>
 
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-bottom: 37px" Width="1108px">
            <Columns>
                <asp:TemplateField HeaderText="Plant">
                    
                <ItemTemplate>
    <asp:TextBox ID="Plant" runat="server" Text='<%#Eval("Plant")%>'></asp:TextBox>
</ItemTemplate>
    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Starting Kms">
                      <ItemTemplate>
    <asp:TextBox ID="Startkms" runat="server" Text='<%#Eval("Startkms")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Site">
                      <ItemTemplate>
    <asp:TextBox ID="Site" runat="server" Text='<%#Eval("Site")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Client Name">
                      <ItemTemplate>
    <asp:TextBox ID="Client" runat="server" Text='<%#Eval("Client")%>'></asp:TextBox>
</ItemTemplate>
               
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Start Time">
                      <ItemTemplate>
    <asp:TextBox ID="Starttime" runat="server" Text='<%#Eval("Strttime")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Arrival Time">
                      <ItemTemplate>
    <asp:TextBox ID="Arvtime" runat="server" Text='<%#Eval("Arvtime")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Closing Kms">
                      <ItemTemplate>
    <asp:TextBox ID="Closekms" runat="server" Text='<%#Eval("Closekms")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Invoice No">
                      <ItemTemplate>
    <asp:TextBox ID="Invoice" runat="server" Text='<%#Eval("Invoice")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Kms">
                      <ItemTemplate>
    <asp:TextBox ID="Totalkms" runat="server" Text='<%#Eval("Totalkms")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qty</br>Cubic M">
                      <ItemTemplate>
    <asp:TextBox ID="Qty" runat="server" Text='<%#Eval("Qty")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remarks">
                      <ItemTemplate>
    <asp:TextBox ID="Remarks" runat="server" Text='<%#Eval("Remarks")%>'></asp:TextBox>
</ItemTemplate>
                </asp:TemplateField>


            </Columns>
        </asp:GridView>
                     
    </form>
</body>
</html>
