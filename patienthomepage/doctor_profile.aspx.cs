using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class patienthomepage_doctor_guidance : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {


        DateTime now = DateTime.Now;
        dd_month.Items.Add(now.Month.ToString());
        dd_year.Items.Add(now.Year.ToString());

        int i;
        for (i = 1; i <= 31; i++)
        {
            dd_day.Items.Add(i.ToString());
        }
        
        
        con.Open();
        SqlCommand com = new SqlCommand("select * from  doctorprofile where regno = @reg", con);
        com.Parameters.AddWithValue("@reg",Session["reg"]);

        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            lbl_regno.Text = dr.GetInt32(0).ToString();
           Session["dname"] = lbl_name.Text = "Dr." +dr.GetString(1)+ " " +dr.GetString(2);
            lbl_gender.Text = dr.GetString(3);
            lbl_spec.Text = dr.GetString(5);
           lbl_qualification.Text = dr.GetString(6);
            Session["timeslot"] = dr.GetString(9);
            lbl_add.Text = dr.GetString(8);
            Session["hospital"] = lbl_hospital.Text = dr.GetString(11);
            lbl_about.Text = dr.GetString(12);
            img_p.ImageUrl = dr.GetString(10);
            lbl_exp.Text = dr.GetString(7)+" yrs ";
        }
        dr.Close();

        SqlCommand com1 = new SqlCommand("select datediff(yy,dob,getdate()) as age from doctorprofile where regno = @reg",con);
        com1.Parameters.AddWithValue("@reg", Session["reg"]);

        string s = com1.ExecuteScalar().ToString();
        lbl_age.Text = s;


        con.Close();
    }
    protected void btn_appointment_Click(object sender, EventArgs e)
    {
        Session["date"] = dd_month.Text + "/" + dd_day.Text + "/" + dd_year.Text;
        Response.Redirect("appointment.aspx");
    }
}