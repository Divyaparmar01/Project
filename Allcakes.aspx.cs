using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

public partial class Allcakes : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    string un= "";
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
            fillRepeater1();
            fillRepeater2();
            fillRepeater3();
            fillRepeater4();
            fillRepeater5();
            fillRepeater6();
        }
    }

    public void fillRepeater1()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Black Forest Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater1.DataSource = tb2;
            Repeater1.DataBind();
        }
    }
    public void fillRepeater2()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Red Velvet Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater2.DataSource = tb2;
            Repeater2.DataBind();
        }
    }
    public void fillRepeater3()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Pineapple Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater3.DataSource = tb2;
            Repeater3.DataBind();
        }
    }
    public void fillRepeater4()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Chocolate Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater4.DataSource = tb2;
            Repeater4.DataBind();
        }
    }
    public void fillRepeater5()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Strawberry Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater5.DataSource = tb2;
            Repeater5.DataBind();
        }
    }
    public void fillRepeater6()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Category='Butterscotch Cake'", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            Repeater6.DataSource = tb2;
            Repeater6.DataBind();
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
        if (menu_name == "Booking")
            Response.Redirect("Booking.aspx?un=" + lblusername.Text);
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id+"&un="+lblusername.Text);
        }

    }
    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id + "&un=" + lblusername.Text);
        }
    }
    protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id + "&un=" + lblusername.Text);
        }
    }
    protected void Repeater4_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id + "&un=" + lblusername.Text);
        }
    }
    protected void Repeater5_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id + "&un=" + lblusername.Text);
        }
    }
    protected void Repeater6_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (lblusername.Text == "")
        {
            MessageBox.Show("Please Login First");
            Response.Redirect("Default.aspx");
        }
        if (e.CommandName == "ordering")
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect("Product2.aspx?id=" + id + "&un=" + lblusername.Text);
        }
    }
}