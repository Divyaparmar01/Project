using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class MyOrders : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string un = "";
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

                if (un == "admin")
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
            fillgrid();
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
    }
    public void fillgrid()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select bdate,Cake_ID,Cake_name,category,price,shape,weight,Quantity,total,img,status from Orders order by bdate desc", con2);
        DataTable tb3 = new DataTable();
        SqlDataAdapter apt3 = new SqlDataAdapter(cmd3);
        apt3.Fill(tb3);
        GridView1.DataSource = tb3;
        GridView1.DataBind();
        con2.Close();
    }
}