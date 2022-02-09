using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Dummy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
        FileUpload1.SaveAs(MapPath("~/images/" + TextBox1.Text + ".jpg"));
        SqlCommand com_update = new SqlCommand("update doctorprofile set photo=@img where regno=@reg", con);
        com_update.Parameters.AddWithValue("@reg", TextBox1.Text);
        com_update.Parameters.AddWithValue("@img", "~/images/" + TextBox1.Text + ".jpg");
        com_update.ExecuteNonQuery();

        con.Close();
    }
}