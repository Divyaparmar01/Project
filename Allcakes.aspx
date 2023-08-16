<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allcakes.aspx.cs" Inherits="Allcakes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
      
          <table  width="100%" style="height:1270px">
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
                <td>
                <asp:Menu ID="Menu2" runat="server" DynamicHorizontalOffset="2" Font-Bold="True" 
                        Font-Size="Small" Height="30px" Orientation="Horizontal" Width="100%" 
                        BackColor="#FFFBD6" Font-Names="Verdana" ForeColor="#990000" 
                        StaticSubMenuIndent="10px" onmenuitemclick="Menu2_MenuItemClick">
                      <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                      <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                      <DynamicMenuStyle BackColor="#FFFBD6" />
                      <DynamicSelectedStyle BackColor="#FFCC66" />
                      <Items>
                          <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                          <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="Admin" Value="Admin">
                              <asp:MenuItem Text="Add Cakes" Value="Add Cakes"></asp:MenuItem>
                              <asp:MenuItem Text="Contacts" Value="Contacts"></asp:MenuItem>
                              <asp:MenuItem Text="Booking" Value="Booking"></asp:MenuItem>
                          </asp:MenuItem>
                          <asp:MenuItem Text="My Orders" Value="My Order"></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register"></asp:MenuItem>
                          <asp:MenuItem Text="Contact Us" Value="Contact US"></asp:MenuItem>
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
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label2" runat="server" Text="Black Forest Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater1" runat="server" 
                        onitemcommand="Repeater1_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label3" runat="server" Text="Red Velvet Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater2" runat="server" 
                        onitemcommand="Repeater2_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label4" runat="server" Text="Pineapple Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater3" runat="server" 
                        onitemcommand="Repeater3_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label5" runat="server" Text="Chocolate Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater4" runat="server" 
                        onitemcommand="Repeater4_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label6" runat="server" Text="Strawberry Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater5" runat="server" 
                        onitemcommand="Repeater5_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:30px">
                <td align="center" valign="middle">
                    <asp:Label ID="Label7" runat="server" Text="Butterscotch Cake" Font-Italic="True" Font-Size="XX-Large"></asp:Label>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#BAF1E4">
                    <asp:Repeater ID="Repeater6" runat="server" 
                        onitemcommand="Repeater6_ItemCommand">
                        <ItemTemplate>
                            <div style="float:left">
                                <table style="height:250px; width:220px; border-spacing:0; margin:20px; background-color:#FFCC66">
                                        <tr>
                                            <td style="text-align:center; background-color:#990000"colspan="2" >
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Cake_name")%>' ForeColor="White"></asp:Label>  
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("img") %>' Width="200" Height="200" />
                                            </td>
                                        </tr>
                                        <tr bgcolor="#990000" >
                                            <td style="width:50%; text-align:right; white-space:inherit; color: #FFFFFF;">Price:</td>
                                            <td style="width:50%">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>' ForeColor="White"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center" bgcolor="#990000">
                                                <asp:LinkButton ID="lblBook" runat="server" Text="Order" Commandname="ordering" CommandArgument='<%# Eval("Cake_ID")%>' ForeColor="white"></asp:LinkButton>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr style="height:375px">
                <td>
                    <table  width="100%" style="height:375px">
                            <tr style="height:375px">
                                <td width="30%" style="background-color:#BAF1E4" align="center">
                                    <a href="Default.aspx">Home</a><br/>
                                    <a href="AboutUs.aspx">About us</a><br/>
                                    <a href="AllCakes.aspx">All cakes</a><br />
                                    <a href="Register.aspx">Registration</a><br />
                                    <a href="Contact_us.aspx">Contact us</a><br />
                                </td>
                                <td width="30%" style="background-color:#BAF1E4"></td>
                                <td width="40%" style="background-color:#BAF1E4">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3716.6471305868295!2d74.55826321425056!3d21.324955182977927!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdf17bfc6d999ef%3A0xd0c2f6ab9061ae70!2sAIT%20Programming%20Classes!5e0!3m2!1sen!2sin!4v1656732937081!5m2!1sen!2sin" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </td>
                            </tr>
                    </table>
                </td>
            </tr>
            </table>
        </form>
</body>
</html>
