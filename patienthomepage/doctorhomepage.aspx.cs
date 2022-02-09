using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class doctorhomepage_doctorhomepage : System.Web.UI.Page
{
    
    SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {

        c.Open();
        SqlCommand com = new SqlCommand("select * from  doctorprofile where regno = @reg", c);
        com.Parameters.AddWithValue("@reg", User.Identity.Name);
      

        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            lbl_name.Text = "Dr. " +dr.GetString(1)+" "+dr.GetString(2) ;
            img_doc.ImageUrl = dr.GetString(10); 
        }
        dr.Close();


        SqlDataAdapter data = new SqlDataAdapter("SELECT appointment.appointmentid, patientprofile.patientid, patientprofile.fname,DATEPART(dd, appointment.date) AS 'date' FROM patientprofile CROSS JOIN appointment WHERE (patientprofile.patientid = appointment.patientid) and appointment.timeslot='morning'", c);

        DataSet ds = new DataSet();
        data.Fill(ds, "doctor");
        gv_morning.DataSource = ds.Tables["doctor"];
        gv_morning.DataBind();

        SqlDataAdapter data1 = new SqlDataAdapter("SELECT appointment.appointmentid, patientprofile.patientid, patientprofile.fname, DATEPART(dd, appointment.date) AS 'date' FROM patientprofile INNER JOIN appointment ON patientprofile.patientid = appointment.patientid WHERE (appointment.timeslot = 'afternoon')", c);

        DataSet ds1 = new DataSet();
        data1.Fill(ds1, "doctor1");
        gv_afternoon.DataSource = ds1.Tables["doctor1"];
        gv_afternoon.DataBind();

        SqlDataAdapter data2 = new SqlDataAdapter("SELECT appointment.appointmentid, patientprofile.patientid, patientprofile.fname, DATEPART(dd, appointment.date) AS 'date' FROM patientprofile INNER JOIN appointment ON patientprofile.patientid = appointment.patientid WHERE (appointment.timeslot = 'evening')", c);

        DataSet ds2 = new DataSet();
        data2.Fill(ds2, "doctor2");
        gv_evening.DataSource = ds2.Tables["doctor2"];
        gv_evening.DataBind();
                     
        c.Close();
    }
    protected void gv_afternoon_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        foreach (GridViewRow row in gv_afternoon.Rows)
        {
            Label l = (Label)gv_afternoon.SelectedRow.FindControl("lbl_pid");
            Label l1 = (Label)gv_afternoon.SelectedRow.FindControl("lbl_fname");
            Label l2 = (Label)gv_afternoon.SelectedRow.FindControl("lbl_aid");
            Session["aid"] = l2.Text;
            Session["pname"] = l1.Text;
            Session["patient"] = l.Text;
            Response.Redirect("updatepatient.aspx");
        }

        c.Close();
    }
    protected void gv_morning_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        foreach (GridViewRow row in gv_morning.Rows)
        {
            Label l = (Label)gv_morning.SelectedRow.FindControl("lbl_pid");
            Label l1 = (Label)gv_morning.SelectedRow.FindControl("lbl_fname");
            Label l2 = (Label)gv_morning.SelectedRow.FindControl("lbl_aid");
            Session["aid"] = l2.Text;
            Session["pname"] = l1.Text;
            Session["patient"] = l.Text;           
            Response.Redirect("updatepatient.aspx");
        }

        c.Close();


       
    }
    protected void gv_evening_SelectedIndexChanged(object sender, EventArgs e)
    {
        c.Open();
        foreach (GridViewRow row in gv_evening.Rows)
        {
            Label l = (Label)gv_evening.SelectedRow.FindControl("lbl_pid");
            Label l1 = (Label)gv_evening.SelectedRow.FindControl("lbl_fname");
            Label l2 = (Label)gv_evening.SelectedRow.FindControl("lbl_aid");
            Session["aid"] = l2.Text;
            Session["pname"] = l1.Text;
            Session["patient"] = l.Text;
            Response.Redirect("updatepatient.aspx");
        }

        c.Close();
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        Response.Redirect("editprofile.aspx");
    }
}