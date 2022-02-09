using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patienthomepage_updatepatient : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_name.Text = Session["pname"].ToString();
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("update appointment set status = @stat, healthissue=@hs where appointmentid=@aid",con);
        com.Parameters.AddWithValue("@stat", dd_status.Text);
        com.Parameters.AddWithValue("@hs", txt_hissue.Text);
        com.Parameters.AddWithValue("@aid", Session["aid"].ToString());
        com.ExecuteNonQuery();
        
        con.Close();
        Response.Write("<script>alert('Health issue updated');</script>");
        Response.Redirect("doctorhomepage.aspx");
    }
}