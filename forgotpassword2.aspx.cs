using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

public partial class forgotpassword2 : System.Web.UI.Page
{
    SqlConnection con2 = new SqlConnection("Data Source=DESKTOP-G6QLTRI\\SQLEXPRESS01;Initial Catalog=Cakeshop;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Menu2.Items.Remove(Menu2.Items[3]);
        Menu2.Items.Remove(Menu2.Items[3]);
    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("select Password from Register where Username='"+Txtname.Text+"' and security_question='"+DropDownList1.SelectedItem.Text+"' and security_answer='"+txtans.Text+"'", con2);
        SqlDataAdapter apt = new SqlDataAdapter(cmd1);
        DataTable tb1 = new DataTable();
        apt.Fill(tb1);
        con2.Close();
        if (tb1.Rows.Count != 0)
        {
            MessageBox.Show("Your Password is:" + tb1.Rows[0][0].ToString());
            Response.Redirect("Default.aspx");
        }
        else
        {
            MessageBox.Show("Wrong Username Or Security Answer");
        }
    }
}