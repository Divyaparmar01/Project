using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Aboutus : System.Web.UI.Page
{
    string un = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        un = Request.QueryString["un"];

        if (un == "" || un == null)
        {
            //imgLogo.Visible = false;
            LogoutLink.Visible = false;

            Menu2.Items.Remove(Menu2.Items[3]);
            Menu2.Items.Remove(Menu2.Items[3]);

        }

        if (un != "" && un != null)
        {
            lblusername.Text = un;
            //Panel1.Visible = false;
            //imgLogo.Visible = true;
            LogoutLink.Visible = true;

            if (un == "Welcome admin")
            {
                Menu2.Items.Remove(Menu2.Items[4]);
                Menu2.Items.Remove(Menu2.Items[4]);
            }
            else
            {
                Menu2.Items.Remove(Menu2.Items[3]);
                Menu2.Items.Remove(Menu2.Items[4]);
            }
        }
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        string menu_name = e.Item.Text.ToString();
        if (menu_name == "Home")
            Response.Redirect("Default.aspx?un=" + lblusername.Text);
        if (menu_name == "About Us")
            Response.Redirect("Aboutus.aspx?un=" + lblusername.Text);
        if (menu_name == "All Cakes")
            Response.Redirect("Allcakes.aspx?un=" + lblusername.Text);
        if (menu_name == "My Orders")
            Response.Redirect("MyOrders.aspx?un=" + lblusername.Text);
        if (menu_name == "Contact Us")
            Response.Redirect("Contact_us.aspx?un=" + lblusername.Text);
        if (menu_name == "Add Cakes")
            Response.Redirect("Itemregister.aspx?un=" + lblusername.Text);
        if (menu_name == "Contacts")
            Response.Redirect("Contacts.aspx?un=" + lblusername.Text);
        if (menu_name == "Register")
            Response.Redirect("Register.aspx?un=" + lblusername.Text);

    }
}