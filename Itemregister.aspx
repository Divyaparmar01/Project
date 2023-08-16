<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Itemregister.aspx.cs" Inherits="Itemregister" %>

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
            <tr style="height:900px">
                    <td align="center" valign="top" style="background-image: url('http://localhost:1336/project1/Images/back4.jpg')">
                        <table border="1" width="60%" style="height:850px">
                                <tr style="height:100px">
                                    <td colspan="3"></td>
                                </tr>
                                <tr style="height:60px">
                                    <td align="right" width="35%">
                                        <asp:Label ID="Label1" runat="server" Text="Cake ID:" Font-Size="20px"></asp:Label>
                                         
                                    </td>
                                    <td width="35%">
                                        <asp:Label ID="lblID" runat="server" Text=""></asp:Label>
                                    </td>
                                    <td width="35%" align="center" style="font-size:x-large">Image</td>
                                </tr>
                                <tr style="height:60px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label2" runat="server" Text="Cake Name:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td width="30%">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>     
                                    </td>
                                    <td rowspan="4" width="30%">
                                        <asp:Image ID="Image1" runat="server"  style="height:300px" Width="100%" />
                                    </td>
                                </tr>
                                <tr style="height:60px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label3" runat="server" Text="Category:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td width="30%">
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Black Forest Cake</asp:ListItem>
                                            <asp:ListItem>Red Velvet Cake</asp:ListItem>
                                            <asp:ListItem>Pineapple Cake</asp:ListItem>
                                            <asp:ListItem>Chocolate Cake</asp:ListItem>
                                            <asp:ListItem>Strawberry Cake</asp:ListItem>
                                            <asp:ListItem>Butterscotch Cake</asp:ListItem>
                                            <asp:ListItem>Photo Cake</asp:ListItem>
                                            <asp:ListItem>Multi Tiers Cake</asp:ListItem>
                                            <asp:ListItem>Fusion Cake</asp:ListItem>
                                            <asp:ListItem>Eggless Cake</asp:ListItem>
                                            <asp:ListItem>Occasion</asp:ListItem>
                                        </asp:DropDownList> 
                                      </td>
                                </tr>
                                <tr style="height:60px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label4" runat="server" Text="Price:" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="30%">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>/-   
                                    </td>                                   
                                </tr>
                                <tr style="height:60px">
                                    <td width="30%" align="right">
                                        <asp:Label ID="Label5" runat="server" Text="Shape:" Font-Size="20px"></asp:Label>
                                    </td>
                                    <td width="30%">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Round" 
                                            GroupName="shape" Checked="true"/>
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Heart" GroupName="shape"/>
                                        <asp:RadioButton ID="RadioButton3" runat="server" Text="Square" GroupName="shape"/>
                                    </td>
                                </tr>
                                <tr style="height:60px">
                                    <td align="right">
                                        <asp:Label ID="Label6" runat="server" Text="Weight:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton4" runat="server" Text="500gm" GroupName="weight" Checked="true"/>
                                        <asp:RadioButton ID="RadioButton5" runat="server" Text="1kg" GroupName="weight"/>
                                        <asp:RadioButton ID="RadioButton6" runat="server" Text="2kg" GroupName="weight"/>   
                                    </td>
                                    <td>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />  
                                    </td>
                                </tr>
                                <tr style="height:60px">
                                    <td align="right">
                                        <asp:Label ID="Label8" runat="server" Text="Quantity:" Font-Size="20px"></asp:Label> 
                                    </td>
                                    <td align="center">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                                    </td>
                                    <td align="center">
                                        <asp:Button ID="Button1" runat="server" Text="Upload:" onclick="Button1_Click"/>
                                    </td>
                                </tr>
                                <tr style="height:60px">
                                    <td colspan="3" align="center">
                                        <asp:Button ID="Button2" runat="server" Text="Save" Font-Size="X-Large" 
                                            onclick="Button2_Click" />
                                        <asp:Button ID="Button3" runat="server" Text="Clear" onclick="Button3_Click" Font-Size="X-Large" />
                                    </td>
                                </tr>
                                <tr style="height:30px">
                                    <td colspan="3" align="center">
                                        <asp:Label ID="lblResult" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr style="height:300px">
                                    <td colspan="3" align="center">
                                    
                                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                                            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                            CellSpacing="2" onrowdeleting="GridView1_RowDeleting" 
                                            onrowcommand="GridView1_RowCommand">
                                            <Columns>
                                                <asp:ButtonField ButtonType="Button" Text="Edit" />
                                                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                                            </Columns>
                                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                                        </asp:GridView>
                                    
                                    </td>
                                </tr>
                        </table>
                    </td>
                </tr>
        </table>
    </form>
</body>
</html>
