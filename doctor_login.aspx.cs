using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class doctorlogin : System.Web.UI.Page
{

    SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //Login2.UserName = Session["doctorid"].ToString();
        c.Open();

        SqlCommand cmd = new SqlCommand("select fname from doctorprofile where regno = @reg", c);
        cmd.Parameters.AddWithValue("@reg", Session["doctorid"].ToString());
        lbl_patname.Text = "Dr. "+cmd.ExecuteScalar().ToString();

        SqlCommand cmd1 = new SqlCommand("select photo from doctorprofile where regno = @reg", c);
        cmd1.Parameters.AddWithValue("@reg", Session["doctorid"].ToString());
        patient_image.ImageUrl = cmd1.ExecuteScalar().ToString();




        c.Close();
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }

    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        c.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from doctorprofile where regno = @id and password = @pass", c);
        cmd.Parameters.AddWithValue("@id", Login2.UserName);
        cmd.Parameters.AddWithValue("@pass", Login2.Password);


        int count = Convert.ToInt32(cmd.ExecuteScalar());
        c.Close();

        if (count > 0)
        {
            e.Authenticated = true;

        }
    }


    protected void Login2_LoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("~/patienthomepage/doctorhomepage.aspx");
    }
}