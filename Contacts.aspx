<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table  width="100%" style="height:500px">
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
                <td >
                  <asp:Menu ID="Menu2" runat="server" DynamicHorizontalOffset="2" Font-Bold="True" 
                        Font-Size="Small" Height="30px" Orientation="Horizontal" Width="100%" 
                        BackColor="#FFFBD6" Font-Names="Verdana" ForeColor="#990000" 
                        StaticSubMenuIndent="10px" onmenuitemclick="Menu2_MenuItemClick">
                      <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                      <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                      <DynamicMenuStyle BackColor="#FFFBD6" />
                      <DynamicSelectedStyle BackColor="#FFCC66" />
                      <Items>
                          <asp:MenuItem Text="Home" Value="Home" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="About Us" Value="About Us" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="Admin" Value="Admin">
                              <asp:MenuItem Text="Add Cakes" Value="Add Cakes" Selected="true"></asp:MenuItem>
                              <asp:MenuItem Text="Contacts" Value="Contacts" Selected="true"></asp:MenuItem>
                              <asp:MenuItem Text="Booking" Value="Booking"></asp:MenuItem>
                          </asp:MenuItem>
                          <asp:MenuItem Text="My Orders" Value="My Order" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="Contact Us" Value="Contact US" Selected="true"></asp:MenuItem>
                      </Items>
                      <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                      <StaticMenuItemStyle HorizontalPadding="30px" VerticalPadding="2px" 
                          Font-Bold="True" Font-Size="Medium" />
                      <StaticSelectedStyle BackColor="#FFCC66" />
                  </asp:Menu> 
                </td>
            </tr>
            <tr style="height:25px">
                <td>
                    <table width="100%">
                            <tr>
                                <td style="width:60%; padding-right:50px" align="right">
                                    <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large"></asp:Label> 
                                </td>
                                <td>
                                    <a href="Default.aspx" id="LogoutLink" runat="server">Logout</a>
                                </td>
                            </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-image: url('http://localhost:1336/project1/Images/back4.jpg');" >
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>      
                </td>
            </tr>
            </table>
    </form>
</body>
</html>

