﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        .a {
            text-decoration: none;
        }

        a:link {
            color: red;
        }

        a:active {
            color: green;
        }

        .h1{
            color:blue;font-size:medium;
        }
    </style>
</head>
<body style="height: 308px">
    <img src="ramco.jpg" alt="logo" style="width:728px;height:90px"></img><br>
  
    <marquee behaviour="scroll" direction="left" scrollamount=20>
        <img src="1.jpg" style="width:500px;height:110px"></img>
        &nbsp
        &nbsp
        &nbsp

        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <img src="2.jpg" style="width: 200px; height: 110px; "></img>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp
        &nbsp
        &nbsp
        <img src="3.jpg" style="width: 500px; height: 110px"></img>
    </marquee>
    <asp:HyperLink ID="login" runat="server" Textalign="right" Textdecoration="None" NavigateUrl="~/login.aspx" Font-Italic="True" Font-Underline="False" Height="21px" Width="55px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="Yellow">Login</asp:HyperLink>
      &nbsp &nbsp &nbsp &nbsp<asp:HyperLink ID="Register" runat="server" Textalign="right" Textdecoration="None" NavigateUrl="~/register.aspx" Font-Italic="True" Font-Underline="False" Height="21px" Width="65px" BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="Yellow">Register</asp:HyperLink>
<br /><br />
    <img src="founder.jpg" alt="founder" style="height: 134px; width: 958px; margin-left: 0px"></img><br>
    <br />
    <h1 style="color:indigo;font-size:50px">Company Overview</h1>
    <h1  style="color:darkcyan;font-size:40px">Flagship Company & Brand of the Ramco Group</h1>
    <br />
    <p1 style="font-family:Calibri">The Ramco Cements Limited is the flagship company of the Ramco Group, a well-known business group of South India. 
        It is headquartered at Chennai. The main product of the company is Portland cement, manufactured in 
        eight state-of-the art production facilities that includes
         Integrated Cement plants and Grinding units with a current total production capacity of 16.45 MTPA 
        (out of which Satellite Grinding units capacity alone is 4 MTPA). The company is the fifth largest 
          cement producer in the country.
         Ramco Grade is the most popular cement brand in South India. The company also produces Ready Mix Concrete and
         Dry Mortar products, and operates one of the largest wind farms in the country.</p1>

</body>
</html>
