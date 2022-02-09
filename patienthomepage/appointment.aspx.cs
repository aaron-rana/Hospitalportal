using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class patienthomepage_appointment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from  patientprofile where patientid = @pid", con);
        com.Parameters.AddWithValue("@pid", User.Identity.Name);

        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            Session["pname"] = lbl_name.Text = dr.GetString(1)+" "+dr.GetString(2);
            lbl_dname.Text = Session["dname"].ToString();
            lbl_timeslot.Text = Session["timeslot"].ToString();
            lbl_date.Text = Session["date"].ToString();
        }
        dr.Close();   
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("appointmentconfirm.aspx");
    }
}