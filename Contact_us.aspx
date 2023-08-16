﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                          <asp:MenuItem Text="All Cakes" Value="All Cakes"></asp:MenuItem>
                          <asp:MenuItem Text="Admin" Value="Admin" Selected="true">
                            <asp:MenuItem Text="Add Cakes" Value="Add Cakes"></asp:MenuItem>
                            <asp:MenuItem Text="Contacts" Value="Contacts"></asp:MenuItem>
                          </asp:MenuItem>
                          <asp:MenuItem Text="My Orders" Value="My Order"></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register"></asp:MenuItem>
                          <asp:MenuItem Text="Contact Us" Selected="true"></asp:MenuItem>
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
            <tr style="height:300px">
                <td style="background-image: url('http://localhost:1336/project1/Images/back4.jpg');">
                    <table style="height:350px" width="40%" border="0" align="center">
                        <tr style="height:50px">
                            <td align="center">
                                <asp:Label ID="Label14" runat="server" Text="Contact Us" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td align="center"><p><b>Got a question? We'd love to hear from you. Send us a message
                            and we'll respond as soon as possible.</b></p>
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td align="center">
                                <asp:Label ID="Label5" runat="server" Text="Date and time:" Font-Bold="True" Font-Size="20px"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td align="center">
                                <asp:Label ID="Lbldte" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                                <asp:Label ID="lblname" runat="server" Text="Name*" Font-Bold="True" Font-Size="20px"></asp:Label><br/> 
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                               <asp:TextBox ID="Txtname" runat="server" Height="30" Width="700" Placeholder="name"></asp:TextBox>  
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Email address*" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                                <asp:TextBox ID="Txtemail" runat="server" Height="30" Width="700" Placeholder="email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Subject*" Font-Size="20px" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="Txtsub" runat="server" Height="30" Width="700" Placeholder="Subject"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Message*" Font-Size="20px" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height:100px">
                            <td>
                                <asp:TextBox ID="Txtmessage" runat="server" Height="200" Width="700" 
                                    Placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:20px">
                            <td></td>
                        </tr>
                        <tr style="height:50px">
                            <td style="background-color: Gray" align="center">
                               <asp:Button ID="Button2" runat="server" Text="Send Message" BackColor="#FA3C5A" 
                                        Font-Size="X-Large" onclick="Button2_Click"/> 
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:375px">
                    <td style="background-color:#BAF1E4">
                    <table border="1" width="100%" style="height:375px">
                        <tr style="height:375px">
                            <td width="30%" align="center">
                                    <a href="Default.aspx">Home</a><br/>
                                    <a href="AboutUs.aspx">About us</a><br/>
                                    <a href="AllCakes.aspx">All cakes</a><br />
                                    <a href="Register.aspx">Registration</a><br />
                                    <a href="Contact_us.aspx">Contact us</a><br />
                            </td>
                            <td width="30%"></td>
                            <td width="40%">
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
