<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studenthome.aspx.cs" Inherits="studenthome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 79px;
        }
        .style6
        {
            width: 125px;
        }
        .style8
        {
            width: 83px;
        }
        .style9
        {
            width: 144px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:102%;">
            <tr>
                <td class="style9">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="VIEW DRIVE" />
                </td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="ATTEND TRAINING" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button3" runat="server" Text="WORKSHOP" onclick="Button3_Click" 
                        style="height: 26px" />
                </td>
                <td class="style3">
                    <asp:Button ID="Button4" runat="server" Text="SEMINAR" 
                        onclick="Button4_Click" />
                </td>
                <td class="style3">
                    <asp:Button ID="Button5" runat="server" Text="STUDENT PROFILE" 
                        onclick="Button5_Click" />
                </td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
