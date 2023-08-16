using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    string un = "";
    string uname1 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            un = Request.QueryString["un"];

            if (un == "" || un == null)
            {
                imgLogo.Visible = false;
                LogoutLink.Visible = false;

                Menu2.Items.Remove(Menu2.Items[3]);
                Menu2.Items.Remove(Menu2.Items[3]);

            }

            if (un != "" && un != null)
            {
                string []arr = un.Split(' ');
                if (arr[0] != "Welcome")
                {
                    uname1 = un;
                    lblusername.Text = "Welcome " + un;
                }
                else
                {
                    uname1 = arr[1].ToString();
                    lblusername.Text = un;
                }
                Panel1.Visible = false;
                imgLogo.Visible = true;
                LogoutLink.Visible = true;

                if (uname1 == "admin")
                {
                    Menu2.Items.Remove(Menu2.Items[1]);
                    Menu2.Items.Remove(Menu2.Items[3]);
                    Menu2.Items.Remove(Menu2.Items[3]);
                    Menu2.Items.Remove(Menu2.Items[3]);
                }
                else
                {
                    Menu2.Items.Remove(Menu2.Items[3]);
                    Menu2.Items.Remove(Menu2.Items[4]);
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string Username = Txtname.Text;
        string password = Txtpassword.Text;
        con2.Open();
        SqlCommand com = new SqlCommand("select Password from Register where Username='" + Username+ "'", con2);
        SqlDataAdapter apt = new SqlDataAdapter(com);
        DataTable tbl = new DataTable();
        apt.Fill(tbl);
        if (tbl.Rows.Count != 0)
        {
            if (password == tbl.Rows[0][0].ToString())
            {
                Response.Redirect("Default.aspx?un="+Username);
            }
            else
            {
                MessageBox.Show("Wrong Password");
            }
        }
        else
        {
            MessageBox.Show("Wrong Username");
        }
    }
    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {
        string menu_name = e.Item.Text.ToString();
        if (menu_name == "Home")
            Response.Redirect("Default.aspx?un=" + lblusername.Text);
        if (menu_name == "About Us")
            Response.Redirect("Aboutus.aspx?un="+lblusername.Text);
        if (menu_name == "All Cakes")
            Response.Redirect("Allcakes.aspx?un=" + lblusername.Text);
        if (menu_name == "My Orders")
            Response.Redirect("MyOrders.aspx?un=" + lblusername.Text);
        if (menu_name == "Contact Us")
            Response.Redirect("Contact_us.aspx?un=" + lblusername.Text);
        if (menu_name == "Contacts")
            Response.Redirect("Contacts.aspx?un=" + lblusername.Text);
        if (menu_name == "Add Cakes")
            Response.Redirect("Itemregister.aspx?un=" + lblusername.Text);
        if (menu_name == "Register")
            Response.Redirect("Register.aspx?un=" + lblusername.Text);
        if (menu_name == "Booking")
            Response.Redirect("Booking.aspx?un=" + lblusername.Text);
    }
}