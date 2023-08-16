<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <table  width="100%" style="height:775px">
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
                          <asp:MenuItem Text="Home" Value="Home"  NavigateUrl="Default.aspx"></asp:MenuItem>
                          <asp:MenuItem Text="Register" Value="Register" Selected="true"></asp:MenuItem>
                      </Items>
                      <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                      <StaticMenuItemStyle HorizontalPadding="30px" VerticalPadding="2px" 
                          Font-Bold="True" Font-Size="Medium" />
                      <StaticSelectedStyle BackColor="#FFCC66" />
                  </asp:Menu> 
                </td>
            </tr>
            <tr style="height:850px">
                <td style="background-color:#BAF1E4; background-image: url('http://localhost:1336/project1/Images/back4.jpg');" >
                    <table border="0" width="70%" style="height:900px" align="center">
                            <tr style="height:100px">
                                <td colspan="2" style="text-align:center">
                                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" BackColor="#FA3C5A">CUSTOMER REGISTRATION</asp:Label>
                                </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="Lable1" runat="server" Text="Customer ID:" Font-Bold="True" Font-Size="20px"></asp:Label><br />
                                    <asp:Label ID="lblid1" runat="server" Text=""></asp:Label>
                                </td>
                                <td width="50%">
                                    <asp:Label ID="lblname" runat="server" Text="Customer name:" Font-Bold="True" Font-Size="20px"></asp:Label><br/>
                                    <asp:TextBox ID="Txtcname" runat="server" Height="30" Width="400" Placeholder="Username"></asp:TextBox> 
                                </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="Label5" runat="server" Text="Gender:" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" Font-Size="Medium" />
                                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Groupname="Gender" Font-Size="Medium" />
                                </td>
                                <td width="50%">
                                    <asp:Label ID="Label6" runat="server" Text="Email" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:TextBox ID="Txtemail" runat="server" Height="30" Width="400" Placeholder="User email"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="Label7" runat="server" Text="Mobile" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:TextBox ID="Txtmobile" runat="server" Width="400" Height="30" Placeholder="User Mobile"></asp:TextBox>
                                </td>
                                <td width="50%">
                                     <asp:Label ID="Label9" runat="server" Text="Date of Birth" Font-Bold="True" Font-Size="20px"></asp:Label><br />
                                    <asp:TextBox ID="Txtdob" runat="server" Height="30" Width="400" placeholder="user date of birth"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="Label8" runat="server" Text="Address Line 1" Font-Bold="True" Font-Size="20px"></asp:Label><br />
                                    <asp:TextBox ID="Txtadd1" runat="server" Height="30" Width="400" Placeholder="user address line 1"></asp:TextBox>
                                </td>
                                <td width="50%">
                                     <asp:Label ID="Label10" runat="server" Text="Address Line 2" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:TextBox ID="Txtadd2" runat="server" Height="30" Width="400" Placeholder="user address line 2"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height:100px">
                                   <td width="50%">
                                    <asp:Label ID="Label11" runat="server" Text="City" Font-Bold="True" Font-Size="20px"></asp:Label><br />
                                    <asp:TextBox ID="Txtcity" runat="server" Height="30" Width="400" Placeholder="User city"></asp:TextBox>
                                   </td>
                                   <td width="50%">
                                    <asp:Label ID="Label12" runat="server" Text="State" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:TextBox ID="Txtstate" Text="Maharashtra" Enabled="false" runat="server" Height="30" Width="400" Placeholder="user state"></asp:TextBox>
                                   </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="Label14" runat="server" Text="Username:" Font-Bold="True" Font-Size="20px"></asp:Label><br/>
                                    <asp:TextBox ID="Txtuname" runat="server" Height="30" Width="400" Placeholder="Username"></asp:TextBox> 
                                </td>
                            </tr>
                            <tr style="height:100px">
                                   <td width="50%">
                                       <asp:Label ID="pwd" runat="server" Text="Password:" Font-Bold="True" Font-Size="20px"></asp:Label><br />
                                       <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password" Height="30" Width="400" Placeholder="Password"></asp:TextBox>    
                                   </td>
                                   <td width="50%">
                                       <asp:Label ID="Label4" runat="server" Text="Confirm Password:" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                       <asp:TextBox ID="Txtcpassword" runat="server" Height="30" Width="400" Placeholder="confirm password"></asp:TextBox>
                                   </td>
                            </tr>
                            <tr style="height:100px">
                                <td width="50%">
                                    <asp:Label ID="lblque" runat="server" Text="Security Question:" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Which flavour of cake do you like?</asp:ListItem>
                                        <asp:ListItem>What is your birth date?</asp:ListItem>
                                        <asp:ListItem>What is your nick name?</asp:ListItem>
                                        <asp:ListItem>What is your favourite hobby?</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td width="50%">
                                    <asp:Label ID="lblans" runat="server" Text="Security Answer:" Font-Size="20px" Font-Bold="True"></asp:Label><br />
                                    <asp:TextBox ID="txtans" runat="server" Height="30" Width="400" Placeholder="security Answer"></asp:TextBox>
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td align="right">
                                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#FA3C5A" 
                                        Font-Size="X-Large" onclick="Button1_Click" /> 
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Clear" BackColor="#FA3C5A" 
                                        Font-Size="X-Large" onclick="Button2_Click" />
                                </td>
                            </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:375px">
                <td style="background-color:#BAF1E4">
                    <table width="100%" style="height:375px">
                            <tr style="height:375px">
                                <td width="30%"  align="center">
                                    <a href="Default.aspx">Home</a><br/>
                                    <a href="AboutUs.aspx">About us</a><br/>
                                    <a href="AllCakes.aspx">All cakes</a><br />
                                    <a href="Register.aspx">Registration</a><br />
                                    <a href="Contact_us.aspx">Contact us</a><br />
                                </td>
                                <td width="30%" ></td>
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
