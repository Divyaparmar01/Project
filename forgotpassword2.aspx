<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword2.aspx.cs" Inherits="forgotpassword2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
      
          <table  width="100%" style="height:475px">
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
                        StaticSubMenuIndent="10px">
                      <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                      <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                      <DynamicMenuStyle BackColor="#FFFBD6" />
                      <DynamicSelectedStyle BackColor="#FFCC66" />
                      <Items>
                          <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Default.aspx" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/Aboutus.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes" NavigateUrl="~/Allcakes.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="Admin" Value="Admin" NavigateUrl=""></asp:MenuItem>
                          <asp:MenuItem Text="My Orders" Value="My Order" NavigateUrl=""></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register" NavigateUrl="~/Register.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="Contact Us" Value="Contact US" NavigateUrl="~/Contact_us.aspx"></asp:MenuItem>
                      </Items>
                      <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                      <StaticMenuItemStyle HorizontalPadding="30px" VerticalPadding="2px" 
                          Font-Bold="True" Font-Size="Medium" />
                      <StaticSelectedStyle BackColor="#FFCC66" />
                  </asp:Menu> 
                </td>
            </tr>
            <tr style="height:300px">
                <td style="background-color:#BAF1E4">
                    <table style="height:300px"  width="100%" >
                        <tr style="height:50px">
                            <td colspan="2" align="center">
                                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Black" BackColor="#FA3C5A">Forget Password</asp:Label> 
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td width="50%" align="right">
                                <asp:Label ID="lblname" runat="server" Text="Username:" Font-Bold="True" Font-Size="20px"></asp:Label> 
                            </td>
                            <td width="50%">
                                <asp:TextBox ID="Txtname" runat="server" Height="30" Width="400" Placeholder="username"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td width="50%" align="right">
                                <asp:Label ID="lblque" runat="server" Text="Security Question:" Font-Bold="True" Font-Size="20px"></asp:Label>
                            </td>
                            <td width="50%">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Which flavour of cake do you like?</asp:ListItem>
                                        <asp:ListItem>What is your birth date?</asp:ListItem>
                                        <asp:ListItem>What is your nick name?</asp:ListItem>
                                        <asp:ListItem>What is your favourite hobby?</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td width="50%" align="right">
                                <asp:Label ID="lblans" runat="server" Text="Security Answer:" Font-Bold="True" Font-Size="20px"></asp:Label>
                            </td>
                            <td width="50%">
                                <asp:TextBox ID="txtans" runat="server" Height="30" Width="400" Placeholder="security answer"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="height:50px">
                            <td colspan="2" align="center">
                                <asp:Button ID="Btnsubmit" runat="server" Text="SUBMIT" BackColor="#FA3C5A" Font-size="X-Large" onclick="Btnsubmit_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:375px">
                <td>
                    <table width="100%" style="height:375px">
                            <tr style="height:375px">
                                <td width="30%"  align="center" style="background-color:#BAF1E4">
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
