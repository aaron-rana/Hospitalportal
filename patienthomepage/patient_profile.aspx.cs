using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patienthomepage_patient_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand("select * from  patientprofile where patientid = @pid", con);
        com.Parameters.AddWithValue("@pid", Session["pid1"].ToString());

        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            lbl_pid.Text = Session["pid1"].ToString();//dr.GetInt32(0).ToString();
            lbl_name.Text = "Dr." + dr.GetString(1) + " " + dr.GetString(2);
            lbl_mobile.Text = dr.GetString(3);
            lbl_gender.Text = dr.GetString(4);
            lbl_mail.Text = dr.GetString(6);
            //  lbl_add.Text = dr.GetString(9);
        }
        dr.Close();
        SqlCommand com1 = new SqlCommand("select datediff(yy,dob,getdate()) as age from patientprofile where patientid = @pid", con);
        com1.Parameters.AddWithValue("@pid", Session["pid1"].ToString());

        string s = com1.ExecuteScalar().ToString();
        lbl_age.Text = s;

        //SqlCommand com2 = new SqlCommand("select * from  appointment where patientid = @pid", con);
        //com2.Parameters.AddWithValue("@pid", Session["pid"]);

        //SqlDataReader dr1 = com2.ExecuteReader();
        //if (dr1.Read())
        //{
        //    lbl_hospital.Text = dr1.GetString(5);
        //    lbl_hissue.Text = dr1.GetString(6);
        //    lbl_status.Text = dr1.GetString(7);

        //}


        con.Close();
    }
    protected void btn_payment_Click(object sender, EventArgs e)
    {
       
    }
}