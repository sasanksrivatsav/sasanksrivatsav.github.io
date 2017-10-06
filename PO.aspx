<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PO.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:Table ID="table1" runat="server" Width="242px" style="margin-left: 0px">
       <asp:TableRow runat="server" ID="row1">
           <asp:TableCell runat="server" ID="col1"> <asp:Label ID="From" runat="server" Text="Label" >From Date</asp:Label></asp:TableCell>
        <asp:TableCell runat="server" ID="col2"><asp:TextBox ID="TextBox1" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox></asp:TableCell>
     

       </asp:TableRow>
            <asp:TableRow runat="server" ID="row2">
                <asp:TableCell runat="server" ID="col3">
                    <asp:Label ID="Label1" runat="server" Text="Label">To Date</asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server" ID="col4">
                 <asp:TextBox ID="TextBox2" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            </asp:Table>
<asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" /> &nbsp&nbsp&nbsp&nbsp
<asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" Width="51px" />
            </center>

        <asp:GridView ID="GridView1" runat="server" Width="202px">
            
            
 				<Columns>
                   <asp:TemplateField HeaderText="Remarks">
                        <asp:CheckBox ID="chk" runat="server" onclick = "Check_Click(this)" AutoPostBack = "true"  OnCheckedChanged = "CheckBox_CheckChanged"/>
            <ItemTemplate>
                <asp:TextBox ID="remarks" runat="server" Text=""></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
				</Columns>

        </asp:GridView>

        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
        
    </form>
</body>
</html>
