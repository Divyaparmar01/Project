using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

public partial class Itemregister : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    DataTable tb1 = new DataTable();
    static int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
        fillID();

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string fileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + ".jpg";
        FileUpload1.SaveAs(Server.MapPath("~/Upload/") + fileName);
        Image1.ImageUrl = "Upload/" + fileName;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        clearAll();
    }
    public void clearAll()
    {
        TextBox2.Text = "";
        DropDownList1.SelectedIndex = 0;
        TextBox3.Text = "";
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = true;
        RadioButton5.Checked = false;
        RadioButton6.Checked = false;
        TextBox4.Text = "";
        Image1.ImageUrl = "";
        Button2.Text = "Save";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int Cake_ID = Convert.ToInt32(lblID.Text);
        string Cake_name = TextBox2.Text;
        string category = DropDownList1.SelectedItem.ToString();
        double price = Convert.ToDouble(TextBox3.Text);
        string shape="";
        if(RadioButton1.Checked==true)
        {
            shape = "Round";
        }
        else if(RadioButton2.Checked==true)
        {
            shape = "Heart";
        }
        else if(RadioButton3.Checked==true)
        {
            shape = "Square";
        }
        string weight="";
        if (RadioButton4.Checked == true)
        {
            weight = "500gm";
        }
        else if (RadioButton5.Checked == true)
        {
            weight = "1kg";
        }
        else if (RadioButton6.Checked == true)
        {
            weight = "2kg";
        }
        int Quantity=0;
        string img = Image1.ImageUrl.ToString();

        con1.Open();
        string cstr = "";
        if(Button2.Text == "Save")
        {
            cstr="insert into Table_1 values("+Cake_ID+",'"+Cake_name+"','"+category+"',"+price+",'"+shape+"','"+weight+"',"+Quantity+",'"+img+"')";
        }
        else
        {
            cstr = "update Table_1 set Cake_name='" + Cake_name + "',Category='" + category + "',Price=" + price + ",Shape='" + shape + "',Weight='" + weight + "',Quantity='" + Quantity + "',img='" + img + "' where Cake_ID=" + uid;
        }
        SqlCommand cmd = new SqlCommand(cstr,con1);
        int i = cmd.ExecuteNonQuery();
        con1.Close();
        if(i==1)
        {
            System.Windows.Forms.MessageBox.Show("Data Save Successfully");
            fillgrid();
            fillID();
            clearAll();
        }
        else
        {
            System.Windows.Forms.MessageBox.Show("Data Not Save");
        }
    }
    public void fillgrid()
    {
        tb1.Clear();
        con1.Open();
        SqlCommand cmd2 = new SqlCommand("Select * from Table_1 order by Cake_ID desc", con1);
        
        SqlDataAdapter apt1 = new SqlDataAdapter(cmd2);
        apt1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();
        con1.Close();
    }
    public void fillID()
    {
        con1.Open();
        SqlCommand cmd3 = new SqlCommand("select Cake_ID from Table_1 order by Cake_ID desc", con1);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        int no = Convert.ToInt32(tb2.Rows[0][0].ToString());
        no = no + 1;
        lblID.Text = Convert.ToString(no);
        con1.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowno = e.RowIndex;
        int did = Convert.ToInt32(tb1.Rows[rowno][0].ToString());

        con1.Open();
        SqlCommand cmd2 = new SqlCommand("delete from Table_1 where Cake_ID=" + did, con1);
        int i = cmd2.ExecuteNonQuery();
        con1.Close();

        if (i > 0)
        {
            MessageBox.Show("Item Deleted Successfully");
            fillgrid();
        }
        else
        {
            MessageBox.Show("Not Deleted");
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
        int rowno =  Convert.ToInt32(e.CommandArgument.ToString());

        lblID.Text = tb1.Rows[rowno][0].ToString();
        uid = Convert.ToInt32(lblID.Text);
        TextBox2.Text = tb1.Rows[rowno][1].ToString();
        DropDownList1.SelectedItem.Text = tb1.Rows[rowno][2].ToString();
        TextBox3.Text = tb1.Rows[rowno][3].ToString();
        string shp = tb1.Rows[rowno][4].ToString();
        if (shp == "round")
            RadioButton1.Checked = true;
        if (shp == "heart")
            RadioButton2.Checked = true;
        if (shp == "square")
            RadioButton3.Checked = true;
        string wgt = tb1.Rows[rowno][5].ToString();
        if (wgt == "500gm")
            RadioButton4.Checked = true;
        if (wgt == "1kg")
            RadioButton5.Checked = true;
        if (wgt == "2kg")
            RadioButton6.Checked = true;
        TextBox4.Text = tb1.Rows[rowno][6].ToString();
        Image1.ImageUrl = tb1.Rows[rowno][7].ToString();

        Button2.Text = "Update";
 
    }
}