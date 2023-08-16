using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    DataTable tb1 = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Menu2.Items.Remove(Menu2.Items[3]);
        //Menu2.Items.Remove(Menu2.Items[3]);
            
        fillID();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int customer_id = Convert.ToInt32(lblid1.Text);
        string Gender="";
        if (RadioButton1.Checked == true)
        {
            Gender = "Male";
        }
        else if (RadioButton2.Checked == true)
        {
            Gender = "Female";
        }
        string user_mobile = Txtmobile.Text;
        string user_address_line1 =Txtadd1.Text; 
        string user_city = Txtadd2.Text;
        string Username = Txtuname.Text;
        string password = Txtpassword.Text;
        string security_question = DropDownList1.SelectedItem.ToString();
        string customer_name = Txtcname.Text;
        string user_email = Txtemail.Text;
        string date_of_birth = Txtdob.Text;
        string user_address_line2 = Txtcity.Text;
        string user_state = Txtstate.Text;
        string confirm_password = Txtcpassword.Text;
        string security_answer = txtans.Text;

        con2.Open();
        SqlCommand cmd1 = new SqlCommand("insert into register values('" + customer_id + "','" + Gender + "','" + user_mobile + "','" + user_address_line1 + "','" + user_city + "','" + Username + "','" + password + "','" + security_question+ "','" + customer_name + "','" + user_email+ "','" + date_of_birth + "','" + user_address_line2 + "','" + user_state + "','"+confirm_password+"','"+security_answer+"')", con2);
        int i = cmd1.ExecuteNonQuery();
        con2.Close();
        if(i == 1)
        {
            MessageBox.Show("Data Save Successfully");
            fillID();
            clearAll();
        }
        else
        {
            MessageBox.Show("Data Not Save");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        clearAll();
    }
    public void clearAll()
    {
        Txtcname.Text = "";
        Txtpassword.Text = "";
        DropDownList1.SelectedIndex = 0;
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;
        Txtmobile.Text = "";
        Txtadd1.Text = "";
        txtans.Text = "";
        Txtcpassword.Text = "";
        Txtadd2.Text = "";
        Txtemail.Text = "";
        Txtdob.Text = "";
        Txtcity.Text = "";
        Txtuname.Text = "";
    }
    public void fillID()
    {
        con2.Open();
        SqlCommand cmd3 = new SqlCommand("select customer_id from Register order by customer_id desc", con2);
        DataTable tb2 = new DataTable();
        SqlDataAdapter apt2 = new SqlDataAdapter(cmd3);
        apt2.Fill(tb2);
        int no = Convert.ToInt32(tb2.Rows[0][0].ToString());
        no = no + 1;
        lblid1.Text = Convert.ToString(no);
        con2.Close();
    }
}