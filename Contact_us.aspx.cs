using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

public partial class Contact_us : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Lbldte.Text = DateTime.Now.ToString();

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
        if (menu_name == "Register")
            Response.Redirect("Register.aspx?un=" + lblusername.Text);
        if (menu_name == "Booking")
            Response.Redirect("Booking.aspx?un=" + lblusername.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string date_time = Lbldte.Text;
        string Name = Txtname.Text;
        string E_address = Txtemail.Text;
        string subject = Txtsub.Text;
        string Message = Txtmessage.Text;

        con2.Open();
        SqlCommand cmd1 = new SqlCommand("insert into Contact values('" + date_time + "','" + Name + "','" + E_address + "','" + subject + "','" + Message + "')", con2);
        int i = cmd1.ExecuteNonQuery();
        con2.Close();
        if(i == 1)
        {
            MessageBox.Show("Data Save Successfully");
            clearAll();
        }
        else
        {
            MessageBox.Show("Data Not Save");
        }
    }
    public void clearAll()
    {
        Lbldte.Text = "";
        Txtname.Text = "";
        Txtemail.Text = "";
        Txtsub.Text = "";
        Txtmessage.Text = "";
    }
}
