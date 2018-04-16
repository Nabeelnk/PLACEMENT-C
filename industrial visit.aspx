<%@ Page Language="C#" AutoEventWireup="true" CodeFile="industrial visit.aspx.cs" Inherits="industrial_visit" %>

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
    </style>
</head>
<body id="page1">
<!-- START PAGE SOURCE -->
<div class="wrap">
  <header>
    <div class="container">
      <h1><a href="#">Placement Cell</a></h1>
      <nav>
        <ul>
          <li ><a href="index.html" class="m1">Home</a></li>
          <li><a href="Events.aspx" class="m2">Events</a></li>
          <li><a href="View.aspx" class="m3">View</a></li>
          <li><a href="tpoviewdrive.aspx" class="m4">Drive</a></li>
          <li class="current"><a href="industrial visit.aspx" class="m4">IV</a></li>
          <li ><a href="TpoProfile.aspx" class="m5">Profile</a></li>
           <li class="last"><a href="logout.aspx" class="m5">Logout</a></li>
        </ul>
      </nav>
      <form action="#" id="search-form">
        <fieldset>
        </fieldset>
      </form>
    </div>
  </header>
  <div class="container">
    <aside>
      <h3>Categories</h3>
      <ul class="categories">
       <li><span><a href="index.html">Home</a></span></li>
        <li><span><a href="Events.aspx">Events</a></span></li>
        <li><span><a href="View.aspx">View</a></span></li>
        <li><span><a href="tpoviewdrive.aspx">Drive</a></span></li>
        <li><span><a href="industrial visit.aspx">IV</a></span></li>
        
        <li class="last"><span><a href="TpoProfile.aspx">Profile</a></span></li>
      </ul>
    </aside>
    <section id="content">
       <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    NUMBER OF PARTICIPATION</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    DATE</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    TIME</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    LOCATION</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    DEPARTMENT</td>
                <td class="style2">
                <asp:DropDownList ID="dept" runat="server" 
                        onselectedindexchanged="dept_SelectedIndexChanged">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem Selected="True">MCA</asp:ListItem>
                    <asp:ListItem>CSE</asp:ListItem>
                    <asp:ListItem>MECH</asp:ListItem>
                    <asp:ListItem>CIVIL</asp:ListItem>
                    <asp:ListItem>EEE</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:conn %>" 
                        SelectCommand="SELECT IVid, NumberOfParticipation, Date, Time, Location, department FROM tbl_IV" 
                        DeleteCommand="DELETE FROM tbl_IV WHERE (IVid = @IVid)" 
                        
                        UpdateCommand="UPDATE tbl_IV SET NumberOfParticipation = @NumberOfParticipation, Date = @Date, Time = @Time, Location = @Location WHERE (IVid = @IVid)">
                        <DeleteParameters>
                            <asp:Parameter Name="IVid" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NumberOfParticipation" />
                            <asp:Parameter Name="Date" />
                            <asp:Parameter Name="Time" />
                            <asp:Parameter Name="Location" />
                            <asp:Parameter Name="IVid" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="IVid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="IVid" HeaderText="IVid" InsertVisible="False" 
                ReadOnly="True" SortExpression="IVid" Visible="False" />
            <asp:BoundField DataField="NumberOfParticipation" 
                HeaderText="NumberOfParticipation" SortExpression="NumberOfParticipation" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" />
            <asp:BoundField AccessibleHeaderText="department" DataField="department" 
                SortExpression="department" HeaderText="department" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
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

