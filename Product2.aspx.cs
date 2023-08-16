using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class Product2 : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    string cid = "";
    string un = "";
    //string cn = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        cid = Request.QueryString["id"];
        fillDetails();

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
            userdetails();
        }
    }
    public void fillDetails()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select * from Table_1 where Cake_ID=" + cid, con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        con2.Close();

        if (tb2.Rows.Count > 0)
        {
            lblID.Text=tb2.Rows[0][0].ToString();
            Lblname.Text = tb2.Rows[0][1].ToString();
            Lblcategory.Text = tb2.Rows[0][2].ToString();
            Lblprice.Text = tb2.Rows[0][3].ToString();
            Lblshape.Text = tb2.Rows[0][4].ToString();
            Lblweight.Text = tb2.Rows[0][5].ToString();
            Lbltotal.Text = tb2.Rows[0][3].ToString();
            Image1.ImageUrl = tb2.Rows[0][7].ToString();
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
    protected void Txtquantity_TextChanged(object sender, EventArgs e)
    {
        Lbltotal.Text = Convert.ToString(Convert.ToInt32(Lblprice.Text)*Convert.ToInt32(Txtquantity.Text));
    }
    public void userdetails()
    {
        string []arr = un.Split(' ');
        string name = arr[1];

        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select customer_id,customer_name,user_mobile,user_email ,user_address_line1,user_address_line2,user_city,user_state from register where Username='" + name + "'", con2);
        DataTable tb3 = new DataTable();
        SqlDataAdapter apt3 = new SqlDataAdapter(cmd3);
        apt3.Fill(tb3);
        con2.Close();

        if (tb3.Rows.Count > 0)
        {
            Label10.Text = tb3.Rows[0][0].ToString();
            Label11.Text = tb3.Rows[0][1].ToString();
            Label12.Text = tb3.Rows[0][3].ToString();
            TextBox2.Text = tb3.Rows[0][2].ToString(); 
            TextBox1.Text = tb3.Rows[0][4].ToString();
            TextBox3.Text = tb3.Rows[0][5].ToString();
            Txtcity1.Text = tb3.Rows[0][6].ToString(); 
            Label15.Text = tb3.Rows[0][7].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string bdate = DateTime.Now.ToString();
        int customer_id = Convert.ToInt32(Label10.Text);
        string customer_name = Label11.Text;
        string user_email = Label12.Text;
        string user_mobile = TextBox2.Text;
        string address_line1 = TextBox1.Text;
        string address_line2 = TextBox3.Text;
        string city = Txtcity1.Text;
        string state = Label15.Text;
        int Cake_ID = Convert.ToInt32(lblID.Text);
        string Cake_name = Lblname.Text;
        string category = Lblcategory.Text;
        float price = Convert.ToInt32(Lblprice.Text);
        string shape = Label15.Text;
        string weight = Lblweight.Text;
        int Quantity = Convert.ToInt32(Txtquantity.Text);
        string total = Lbltotal.Text;
        string img = Image1.ImageUrl.ToString();
        string status = "Waiting";

        con2.Open();
        SqlCommand cmd1 = new SqlCommand("insert into Orders values('" + bdate + "','" + customer_id + "','" + customer_name + "','" + user_email + "','" + user_mobile + "','" + address_line1 + "','" + address_line2 + "','" + city + "','" + state + "','" + Cake_ID + "','" + Cake_name + "','" + category + "'," + price + ",'" + shape + "','" + weight + "'," + Quantity + ",'" + total + "','" + img + "','" + status + "')", con2);
        int i = cmd1.ExecuteNonQuery();
        con2.Close();
        if (i == 1)
        {
            MessageBox.Show("Data Save Successfully");

        }
        else
        {
            MessageBox.Show("Data Not Save");
        }
    }
    
}