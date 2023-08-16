using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;


public partial class Booking : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    DataTable tb3 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();

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

                if (un == "Welcome admin")
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
    public void fillgrid()
    {
        tb3.Clear();
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Orders where status='Waiting'", con2);
        
        SqlDataAdapter apt3 = new SqlDataAdapter(cmd3);
        apt3.Fill(tb3);
        GridView1.DataSource = tb3;
        GridView1.DataBind();
        con2.Close();
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
        if (menu_name == "Contacts")
            Response.Redirect("Contacts.aspx?un=" + lblusername.Text);
        if (menu_name == "Contact Us")
            Response.Redirect("Contact_us.aspx?un=" + lblusername.Text);
        if (menu_name == "Add Cakes")
            Response.Redirect("Itemregister.aspx?un=" + lblusername.Text);
        if (menu_name == "Booking")
            Response.Redirect("Booking.aspx?un=" + lblusername.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowNo = Convert.ToInt32(e.CommandArgument);
        string dte = tb3.Rows[rowNo][0].ToString();

        string btnName = e.CommandName;
        if (btnName != "Select")
        {
            con2.Open();
            SqlCommand con = new SqlCommand("update Orders set Status='Confirm' where bdate='" + dte + "'", con2);
            int i = con.ExecuteNonQuery();
            con2.Close();
            if (i <= 0)
            {
                MessageBox.Show("Please Retry......");
            }
            fillgrid();
            //getinfo();
        }
        else
        {
                con2.Open();
                SqlCommand con = new SqlCommand("update Orders set Status='Reject' where bdate='" + dte + "'", con2);
                int i = con.ExecuteNonQuery();
                con2.Close();
                if (i <= 0)
                {
                    MessageBox.Show("Please Retry......");
                }
                fillgrid();
        }
    }
}