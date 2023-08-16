<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cakebytype.aspx.cs" Inherits="Cakebytype" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
      
          <table  width="100%" style="height:75px">
            <tr style="height:50PX">
                <td style="background-color:#BAF1E4">
                <table  width="100%" style="height:50px">
                <tr style="height:50px">
                     <td width="10%">
                            <img src="Images\logo2.jpg" alt="logo2" width="110" height="110" border="1" />    
                      </td>
                      <td width="90%" style="text-align:center">
                          <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="50px" Font-Bold="True" Font-Italic="True" ForeColor="#000000">Sweet Delights</asp:Label>
                      </td>
                </tr>
                </table>
                </td>
            </tr>
            <tr style="height:25px">
                <td style="background-color:#FA3C5A">
                  <asp:Menu ID="Menu2" runat="server" DynamicHorizontalOffset="2" Font-Bold="True" 
                        Font-Size="0.8em" Height="30px" Orientation="Horizontal" Width="100%" 
                        BackColor="#FA3C5A" Font-Names="Verdana" ForeColor="#FFFFFF" 
                        StaticSubMenuIndent="10px">
                      <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                      <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                      <DynamicMenuStyle BackColor="#FA3C5A" />
                      <DynamicSelectedStyle BackColor="#FFCC66" />
                      <Items>
                          <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Default.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/Aboutus.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes" NavigateUrl="~/Allcakes.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="Cake By Type" Value="Cake By Type" NavigateUrl="~/Cakebytype.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register" NavigateUrl="~/Register.aspx"></asp:MenuItem>
                      </Items>
                      <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                      <StaticMenuItemStyle HorizontalPadding="70px" VerticalPadding="2px" 
                          Font-Bold="True" Font-Size="X-Large" />
                      <StaticSelectedStyle BackColor="#FFCC66" />
                  </asp:Menu> 
                </td>
            </tr>
        </table>
       </form>
</body>
</html>
