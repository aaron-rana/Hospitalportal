using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patienthomepage_editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();

        SqlCommand com = new SqlCommand("update doctorprofile set qualification = @qual, experience = @exp, address = @add, timing = @timing where regno = @reg ", con);
        com.Parameters.AddWithValue("@qual", txt_qual.Text);
        com.Parameters.AddWithValue("@exp", txt_exp.Text);
        com.Parameters.AddWithValue("@reg", User.Identity.Name);
        com.Parameters.AddWithValue("@add", txt_add.Text);
        com.Parameters.AddWithValue("@timing", dd_timing.Text);
        com.ExecuteNonQuery();
        con.Close();


    }
}