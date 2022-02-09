using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class patienthomepage_patientguidance : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int day, year;
            for (day = 1; day < 32; day++)
            { dd_day.Items.Add(day.ToString()); }

            for (year = 1950; year < 2015; year++)
            { dd_year.Items.Add(year.ToString()); }

            txt_relation.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlDataAdapter data = new SqlDataAdapter("SELECT * FROM patientprofile WHERE(fname = @name) AND (DATEPART(yy, dob) = @yr)", con);
        data.SelectCommand.Parameters.AddWithValue("@name", txt_pname.Text);
        data.SelectCommand.Parameters.AddWithValue("@yr", dd_year.Text);


        DataSet ds = new DataSet();
        data.Fill(ds, "doctor");
        gv_patient.DataSource = ds.Tables["doctor"];
        gv_patient.DataBind();
        con.Close();

    }
    protected void dd_relation_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_relation.SelectedValue == "Other")
        {
            txt_relation.Text = null;
            txt_relation.Visible = true;
        }
        else
        {
            txt_relation.Text = dd_relation.Text;
        }
    }
    protected void gv_patient_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
     
            Label l = (Label)gv_patient.SelectedRow.FindControl("lbl_pid");
            Session["pid1"] = l.Text;
            Label1.Text = Session["pid1"].ToString();

           Response.Redirect("patient_profile.aspx");
      

        con.Close();
    }
    protected void dd_day_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dd_year_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}