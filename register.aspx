<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<style type="text/css">
     .body

.fieldset-auto-width {
         display: inline-block;
    }
    </style>
    <script src="validation.js"></script>
</head>
<body>
    
     <img src="ramco.jpg" alt="logo" style="width:728px;height:90px"></img><br>
    <center>
    
      <link rel="stylesheet" type="text/css" href="background.css" /> 

        
        <form id="form1" runat="server">
 
 <fieldset class="fieldset-auto-width"">
            

           

                <legend>
                    <p1 style="color:Blue"> Registration </p1> 
                </legend>

                <table cellpadding="10">
                    
                   <tr>
                        <td><asp:label ID="lbfn" runat="server">First Name</asp:label></td>
                        <td><asp:TextBox ID="firstname" runat="server" Font-Names="firstname" placeholder="First Name"></asp:TextBox></td>
               
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="firstname" ErrorMessage="Please Enter your First Name"   ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>

                           </tr>
                    <tr>
                        <td><asp:label ID="lbln" runat="server">Last Name</asp:label></td>
                        <td><asp:TextBox ID="lastname" runat="server" Font-Names="lastname" placeholder="Last Name"></asp:TextBox></td>
                      
                         <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="lastname" ErrorMessage="Please Enter your Last Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td> 
                   </tr>
                    <tr>
                        <td><asp:label ID="lbun" runat="server">Username</asp:label></td>
                        <td><asp:TextBox ID="email" runat="server" Font-Names="username" placeholder="Email"></asp:TextBox></td>
                     <td>  
                           <asp:RequiredFieldValidator ID="req4" runat="server" ControlToValidate="email" Text="Please Enter your Email-Id " ForeColor="#CC0000" />
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="eg. you@domain.com" ControlToValidate="email"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                        </td>
                         </tr>
                    <tr>
                        <td><asp:label ID="lbpass" runat="server">Password</asp:label></td>
                        <td>
                            <asp:TextBox ID="password" runat="server" TextMode="Password" Font-Names="password" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;"></asp:TextBox>
                          
                        </td>
                    <td>  
                        

                     
                    <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator4"
                        ErrorMessage="Password must be 8-10 characters long with at least one numeric,</br>one upper case character and one special character."
                        ForeColor="Red" ValidationExpression="(?=^.{8,10}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$"
                        ControlToValidate="password" runat="server" />


                        </td>
                          </tr>
                    <tr>
                        <td><asp:label ID="lbdob" runat="server">Date Of Birth</asp:label></td></td>
                        <td><asp:TextBox ID="dob" runat="server" placeholder="DD-MM-YYYY"></asp:TextBox></td>
                         

                       
                           
                        
                    </tr>
                    <tr>
                        <td><asp:label ID="Label2" runat="server">Phone Number</asp:label></td>
                         <td><asp:TextBox ID="phone" runat="server" placeholder="PhoneNumber" TextMode="Number" MaxLength="10" Text=" +91"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td>
                            <asp:Button ID="submit" runat="server" Text="Register" OnClick="submit_Click" BorderColor="Blue" /> 
                                                         
        <asp:Label ID="Label1" runat="server"></asp:Label>
                                                         
                        </td>
                        <td>
                             <asp:Button ID="reset" runat="server" Text="Reset" CausesValidation="false" OnClick="reset_Click" BorderColor="Black" PostBackUrl="~/register.aspx"></asp:Button>
                           &nbsp
                             <asp:Button ID="cancel" runat="server" Text="Cancel" CausesValidation="false" OnClick="cancel_Click" BorderColor="#CC3300" PostBackUrl="~/login.aspx" />
                        </td>
                    </tr>
            
            </table>

            </fieldset>
        </form>

    </center>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
</body>

</html>
