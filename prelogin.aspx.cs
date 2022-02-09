using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class prelogin : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_login_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand doctorcmd = new SqlCommand("select count(*) from doctorprofile where regno = @id", c);
        doctorcmd.Parameters.AddWithValue("@id", txt_login.Text);
        int flagdoc = Convert.ToInt32(doctorcmd.ExecuteScalar());
        if (flagdoc > 0)
        {
            Session["doctorid"] = txt_login.Text;
            Response.Redirect("doctor_login.aspx");
        }

        
        else
        {
            SqlCommand patientcmd = new SqlCommand("select count(*) from patientprofile where patientid = @id", c);
            patientcmd.Parameters.AddWithValue("@id", txt_login.Text);
            int flagpat = Convert.ToInt32(patientcmd.ExecuteScalar());
            if (flagpat > 0)
            {
                Session["patientid"] = txt_login.Text;
                Response.Redirect("patient_login.aspx");
            }

            else
            {
                Response.Redirect("doctor_signup.aspx");
            }
        }


        c.Close();
    }

}