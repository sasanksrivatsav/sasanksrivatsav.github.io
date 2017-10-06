<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <img src="ramco.jpg" alt="logo" style="width:728px;height:90px"></img><br>
    <form id="form2" runat="server">
     
        <center>
            <link rel="stylesheet" type="text/css" href="background.css" /> 
        <fieldset>
            <legend>
                <p1 style="color:darkslateblue">Login</p1>
            </legend>

            <table style="height: 179px">

               <tr>

                    <td><p1 style="color:blue">Username</p1></td>
                    <td>
                        
                        <asp:TextBox ID="username" runat="server" name="username" placeholder="Username"></asp:TextBox>
                        
                       </td>
                     <td>  
                            
                         
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="username" ErrorMessage="Enter your User Name"   ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>
                </tr>
                <tr>
                    
                    <td><p1 style="color:blue">Password</p1></td>
                    
                    <td>
                        
                   <asp:TextBox ID="password" runat="server" name="password" placeholder="Password" TextMode="Password"></asp:TextBox>
                  
                         
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                      
                    </td>

                     <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="password" ErrorMessage="Please Enter your password"   ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        
                     </td>
                </tr>

                <tr>

                    <td>
                        <asp:HyperLink ID="signup" runat="server" NavigateUrl="~/register.aspx" Font-Bold="True" Font-Italic="True" Font-Overline="False" ForeColor="#FF6600">Signup</asp:HyperLink>
                        <%--<div1><a href="register.aspx"><p1 class="ex2">SignUp</p1></a></div1>--%>

                    </td>
                    <td>
                        <div>
                    
                                    <asp:HyperLink ID="forgot" runat="server" NavigateUrl="https://www.google.com/gmail/" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#FF6600">ForgotPassword?</asp:HyperLink>
                            <%--<a href="Contact your Adminstrator"><p1 class="ex1">ForgotPassword?</p1></a>--%>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                          <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click" /> 
                                                         
                        </td>
                    
                    <td><asp:Button ID="cancel" runat="server" Text="Cancel" OnClick="cancel_Click"></asp:Button></td>
                </tr> 

            </table>

        </fieldset>


        </center>
    </form>
</body>
</html>
