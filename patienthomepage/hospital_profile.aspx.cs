using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class patienthomepage_hospital_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

       
      

    }
    protected void ll_dept_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter data = new SqlDataAdapter("select regno, 'Dr. '+fname+ ' '+ lname as 'fname',gender,timing,photo from doctorprofile where specialization=@spec and hospital = @hname", con);
        data.SelectCommand.Parameters.AddWithValue("@spec", ll_dept.SelectedItem.Text);
        data.SelectCommand.Parameters.AddWithValue("@hname", Session["hname"].ToString());

        DataSet ds = new DataSet();
        data.Fill(ds, "doctor");
        gv_doctor.DataSource = ds.Tables["doctor"];
        gv_doctor.DataBind();
        con.Close();
    }
    protected void gv_doctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        foreach (GridViewRow row in gv_doctor.Rows)
        {
            Label l = (Label)row.FindControl("lbl_regno");
            Session["reg"] = l.Text;
            Response.Redirect("doctor_profile.aspx");

        }

        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
}