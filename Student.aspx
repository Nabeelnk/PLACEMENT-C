<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>  
<title>PLACEMENT CELL</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_300.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 7]>
<link rel="stylesheet" href="css/ie6.css" type="text/css" media="screen">
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, footer, header nav ul li a, .nav-bg, .list li img');</script>
<![endif]-->
<!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
    <style type="text/css">
        .style1
        {
            margin: 0;
            text-align: justify;
        }
        .style2
        {
            width: 691px;
        }
        .style3
        {
            width: 660px;
        }
        .style4
        {
            width: 668px;
        }
    </style>
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="wrap">
  <header>
    <div class="container">
      <h1><a href="#">Placement Cell</a></h1>
     
      <form action="#" id="search-form">
        <fieldset>
        </fieldset>
      </form>
    </div>
  </header>
  <div class="container">
    
    <section id="content">
    
  
   
      
      <form id="form1" runat="server">
    <div>
    
        </div>
    <table style="width:100%; height: 77px;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="FIRST NAME"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Textname" runat="server" ontextchanged="Textname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Textname" ErrorMessage="ENTER THE FIRST NAME" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                LAST NAME</td>
            <td class="style4">
                <asp:TextBox ID="Textname0" runat="server" ontextchanged="Textname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Textname0" ErrorMessage="ENTER THE LAST NAME" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="REGISTER NUMBER"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Textreg" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Textreg" ErrorMessage="ENTER THE  REGISTER NUMBER" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="GENDER"></asp:Label>
            </td>
            <td class="style4">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Textaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="Textaddress" ErrorMessage="ENTER THE ADDRESS" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="EMAIL"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Textemail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Textemail" ErrorMessage="ENTER THE EMAIL" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="MOBILE NUMBER"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="Textmob" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="Textmob" ErrorMessage="ENTER THE MOBILE NUMBER" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="DEPARTMENT"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="dept" runat="server">
                    <asp:ListItem Selected="True">MCA</asp:ListItem>
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>MECH</asp:ListItem>
                    <asp:ListItem>CIVIL</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="SEM"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="sem" runat="server">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                PERCENTAGE</td>
            <td class="style4">
                <asp:TextBox ID="Textpercentage" runat="server" 
                    ontextchanged="Textname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="Textpercentage" ErrorMessage="ENTER THE PERCENTAGE" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                ARIES</td>
            <td class="style4">
                <asp:DropDownList ID="sup" runat="server">
                    <asp:ListItem Selected="True">NO</asp:ListItem>
                    <asp:ListItem>YES</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                USERID</td>
            <td class="style4">
                <asp:TextBox ID="Textuserid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="Textuserid" ErrorMessage="ENTER USER ID" ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PASSWORD</td>
            <td class="style4">
                <asp:TextBox ID="Textpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="Textpwd" ErrorMessage="ENTER THE PASSWORD" 
                    ForeColor="#6600FF"></asp:RequiredFieldValidator>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                IMAGE</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style4">
    <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
        Text="SUBMIT" style="height: 26px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                </td>
            <td class="style3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Loginpage.aspx">SIGN IN</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [StudentRegistration]" 
        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </form>
    
    </section>
  </div>
</div>
<footer>
  <div class="footerlink">
    <p class="lf">Copyright &copy; 2018 <a href="#">Placement Cell</a> - All Rights Reserved</p>
    <p class="rf">Design by Nabeel N K</p>
    <div style="clear:both;"></div>
  </div>
</footer>
<script type="text/javascript">    Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>
</html>


