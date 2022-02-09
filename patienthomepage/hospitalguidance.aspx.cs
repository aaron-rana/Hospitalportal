using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patienthomepage_hospitalguidance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from doctorprofile where hospital = @hname",con);
        cmd.Parameters.AddWithValue("@hname",txt_hname.Text);
        int count = Convert.ToInt32(cmd.ExecuteScalar());

        if (count > 0)
        {
            Session["hname"] = txt_hname.Text;
            Response.Redirect("hospital_profile.aspx");
        }

        else
        {
            Response.Write("<script>alert('no such profile');</script>");
        }
        
        
        con.Close();
    }
}