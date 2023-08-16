<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product2.aspx.cs" Inherits="Product2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
        <table width="100%" border="1" style="height:975px">
                <tr style="height:50PX">
                <td style="background-color:#BAF1E4">
                <table  width="100%" style="height:50px">
                <tr style="height:50px">
                     <td width="10%">
                            <img src="Images\cake1.jpg" alt="cake1" width="110" height="110" border="1" />    
                      </td>
                      <td width="90%" style="text-align:center">
                          <asp:Label ID="Label7" runat="server" Text="Label" Font-Size="50px" Font-Bold="True" Font-Italic="True" ForeColor="#000000">Sweet Delights</asp:Label>
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
                          <asp:MenuItem Text="Home" Value="Home" Selected="true"></asp:MenuItem>
                          <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                          <asp:MenuItem Text="All Cakes" Value="All Cakes"></asp:MenuItem>
                          <asp:MenuItem Text="Admin" Value="Admin"></asp:MenuItem>
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
                <tr style="height:900px">
                    <td  valign="top"  style="background-image: url('http://localhost:1336/project1/Images/back4.jpg')" width="60%">
                    <table style="height:900px" width="100%">
                    <tr style="height:900px">
                    <td valign="top" width="50%" >
                        <table border="1" width="90%" style="height:500px" align="left">
                                <tr style="height:100px">
                                    <td colspan="3" align="center">
                                        <asp:Label ID="Label14" runat="server" Text="Product Details" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                    <td align="right" width="35%" class="style1">
                                        <asp:Label ID="Label1" runat="server" Text="Cake ID:" Font-Size="20px"></asp:Label>
                                         
                                    </td>
                                    <td width="35%" class="style1">
                                        <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td width="35%" align="center" style="font-size:x-large" class="style1">Image</td>
                                </tr>
                                <tr style="height:40px">
                                    <td width="35%" align="right">
                                        <asp:Label ID="Label2" runat="server" Text="Cake Name:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td width="35%">
                                        <asp:Label ID="Lblname" runat="server" Text="label"></asp:Label> 
                                    </td>
                                    <td rowspan="4" width="30%">
                                        <asp:Image ID="Image1" runat="server"  style="height:200px" Width="100%" />
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label3" runat="server" Text="Category:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td width="30%">
                                        <asp:Label ID="Lblcategory" runat="server" Text="Label"></asp:Label>
                                      </td>
                                </tr>
                                <tr style="height:40px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label4" runat="server" Text="Price:" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="30%">
                                        <asp:Label ID="Lblprice" runat="server" Text="Label"></asp:Label>  /-   
                                    </td>                                   
                                </tr>
                                <tr style="height:40px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label5" runat="server" Text="Shape:" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="30%">
                                        <asp:Label ID="Lblshape" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                    <td align="right" class="style2">
                                        <asp:Label ID="Label6" runat="server" Text="Weight:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td colspan="2" class="style2">
                                        <asp:Label ID="Lblweight" runat="server" Text="Label"></asp:Label>   
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                    <td align="right">
                                        <asp:Label ID="Label8" runat="server" Text="Quantity:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td align="left" colspan="2">
                                       <asp:TextBox ID="Txtquantity" Text="1" runat="server" style="margin-left: 0px" 
                                            AutoPostBack="True" ontextchanged="Txtquantity_TextChanged"></asp:TextBox> 
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                    <td align="right">
                                        <asp:Label ID="lblTotal1" runat="server" Text="Total" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td colspan="2">
                                        <asp:Label ID="Lbltotal" runat="server" Text="Label"></asp:Label>                   
                                    </td>
                                </tr>
                                <tr style="height:40px">
                                <td colspan="2" align="center">
                                    <asp:Button ID="Button1" runat="server" Text="Place Order" BackColor="#FA3C5A" 
                                        Font-Size="X-Large" onclick="Button1_Click" />
                               </td>
                               <td>
                                   <asp:Button ID="Button2" runat="server" Text="Back" BackColor="#FA3C5A" 
                                       Font-Size="X-Large" OnClientClick="JavaScript:window.history.back(1); return false;" />
                               </td>
                               </tr>
                               </table>
                         </td>
                         <td width="40%" valign="top">
                            <table border="1" width="80%" style="height:525px" align="right">
                                  <tr style="height:60px">
                                    <td colspan="2" align="center">
                                        <asp:Label ID="Label9" runat="server" Text="Details" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lblid2" runat="server" Text="Customer ID:" Font-Bold="True" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="50%">
                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lblname2" runat="server" Text="Customer name:" Font-Bold="True" Font-Size="20px"></asp:Label><br/>
                                    </td>
                                    <td width="50%">
                                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lblmail" runat="server" Text="Email" Font-Size="20px" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="50%">
                                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>  
                                    </td>
                                  </tr>
                                  <tr style="height:20px" >
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lblmobile" runat="server" Text="Mobile" Font-Size="20px" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lbladd1" runat="server" Text="Address Line 1" Font-Bold="True" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                    <td width="50%" align="right">
                                        <asp:Label ID="Lbladd2" runat="server" Text="Address Line 2" Font-Size="20px" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                  </tr>
                                  <tr style="height:20px">
                                     <td align="right" width="50%">
                                        <asp:Label ID="Lblcity" runat="server" Text="City" Font-Bold="True" Font-Size="20px"></asp:Label>
                                     </td>
                                     <td width="50%">
                                         <asp:TextBox ID="Txtcity1" runat="server"></asp:TextBox>
                                     </td>
                                    </tr>  
                                  <tr style="height:20px">
                                      <td width="50%" align="right">
                                           <asp:Label ID="Lblstate" runat="server" Text="State" Font-Bold="True" Font-Size="20px"></asp:Label>
                                      </td>  
                                      <td width="50%">
                                          <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr style="height:30px">
                                    <td colspan="2"></td>
                                  </tr>      
                            </table>
                         </td>
                         </tr>
                         </table>
                         </td>
                    </tr>
              </table>    
    </form>
</body>
</html>
