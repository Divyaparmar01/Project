<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var image1 = new Image();
        image1.src = "Images/01.jpg"

        var image2 = new Image();
        image2.src = "Images/02.webp"

        var image3 = new Image();
        image3.src = "Images/03.jpg"
    </script>
</head>
<body>
          <form runat="server">
          <table  width="100%" style="height:1500px">
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
                          <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes"></asp:MenuItem>
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
            <tr style="height:350px">
                <td >
                       <img src="Images\02.webp" id="img_slider"alt="cake" width="1350" height="500" />
                       
                            <script type="text/javascript">
                                var step1 = 1
                                function slideImages1() {
                                    if (!document.images)
                                        return
                                    document.images.img_slider.src = eval("image" + step1 + ".src")
                                    if (step1 < 3)
                                        step1++
                                    else
                                        step1 = 1
                                    setTimeout("slideImages1()",3000)
                                }
                                slideImages1()
                            </script>    
                </td>
            </tr>
            <tr style="height:300px">
                <td>
                    <table  width="100%" style="height:300px">
                            <tr style="height:300px">
                                <td width="40%" align="center" style="background-color:#BAF1E4" valign="top">
                                    <img id="imgLogo" runat="server" src="Images\berry.webp" width="200" height="250" alt="Photo" />
                                    <asp:Panel ID="Panel1" runat="server">
                                    <table border="0" width="100%" style="height:300px">
                                            <tr style="height:75px">
                                                <td align="right">
                                                    <asp:Label ID="uname" runat="server" Text="Username:" Font-Size="X-Large" Font-Italic="True" ForeColor="#FA3C5A" Font-Bold="True"></asp:Label>            
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Txtname" runat="server" Height="20"></asp:TextBox>    
                                                </td>
                                            </tr>
                                            <tr style="height:75px">
                                                <td align="right">
                                                    <asp:Label ID="pwrd" runat="server" Text="Password:" Font-Size="X-Large" Font-Italic="True" ForeColor="#FA3C5A" Font-Bold="True"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Txtpassword" runat="server" Height="20" Textmode="password"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr style="height:75px">
                                                <td align="right">
                                                    <asp:Button ID="btnlogin" runat="server" Text="Login" Font-Size="X-Large" 
                                                        Font-Bold="True" BackColor="#FA3C5A" onclick="btnlogin_Click" />
                                                </td>
                                                <td align="left">
                                                    <asp:Button ID="Button2" runat="server" Text="Signup"  Font-Size="X-Large" 
                                                        Font-Bold="True" BackColor="#FA3C5A" onclick="Button2_Click" />
                                                </td>
                                            </tr>
                                            <tr style="height:75px">
                                                <td colspan="2" align="center">
                                                    <a href="forgotpassword2.aspx">Forgot Password</a>
                                                </td>
                                            </tr>
                                    </table>
                                    </asp:Panel>
                                </td>
                                <td width="60%" style="background-color:#BAF1E4">
                                    <h2 style="font-family:cursive; text-align:center">Intoduction</h2>
                                    <p style="font-size:25px; font-family:calibri">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sweet Delight's 
                                    online cake delivery offers you a huge range of cakes baked with ulmost perfection and 
                                    the finest quality of ingredients. Cakes available in our bakery are always fresh, soft, moist, mushy and
                                    fluffy in texture.We have flavorsome cakes to illuminate your every occasion. Be it a birthday,anniversary 
                                    or any event,our cakes will never disappoint you. These hard-to-resist delicacies are available in a plethora 
                                    of flavors like Black Forest, Red Velvet, Chocolate, Pineapple, Strawberry, Butterscotch and many more. So, 
                                    if there is a huge celebration waiting up next in your calender, order a cake online from us and brighten up
                                    your celebration with our irresistible yummylicious treats. So order now! </p>
                                </td>
                            </tr>
                    </table>
                </td>
            </tr>
            <tr style="height:400px">
                <td style="background-color:#48B9A8">
                    <table  width="75%" style="height:500px; background-color:#FFFFFF" align="center">
                            <tr style="height:100px"><td colspan="4" style="text-align:center; font-family:cursive"><h1>Cakes By Flavor</h1></td></tr>
                            <tr style="height:200px">
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\blackforest.jpg" alt="blackforest" width="200" height="200" /></a>
                                 </td>
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\redvelvet.jpg" alt="redvelvet" width="200" height="200" /></a>
                                </td>
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\pineapple1.webp" alt="pineapple1" width="200" height="200" /></a>
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td style="text-align:center; font-family:cursive">Black Forest Cakes</td>
                                <td style="text-align:center; font-family:cursive">Red Velvet Cakes</td>
                                <td style="text-align:center; font-family:cursive">Pineapple Cakes</td>
                                </tr>
                            <tr style="height:200px">
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\chocolate.webp" alt="chocolate" width="200" height="200" /></a>
                                </td>
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\berry.webp" alt="berry" width="200" height="200" /></a>
                                </td>
                                <td align="center" width="25%">
                                    <a href="Allcakes.aspx"><img src="Images\scotch.webp" alt="scotch" width="200" height="200" /></a><
                                </td>
                            </tr>
                            <tr style="height:50px">
                            <td style="text-align:center; font-family:cursive">Chocolate Cakes</td>
                            <td style="text-align:center; font-family:cursive">Strawberry Cakes</td>
                            <td style="text-align:center; font-family:cursive">Buterscotch Cakes</td>
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
