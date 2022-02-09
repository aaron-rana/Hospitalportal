using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        c.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from doctorprofile where regno = @id and password = @pass", c);
        cmd.Parameters.AddWithValue("@id", Login1.UserName);
        cmd.Parameters.AddWithValue("@pass", Login1.Password);
        

        int count = Convert.ToInt32(cmd.ExecuteScalar());
        c.Close();

        if (count > 0)
        {
            e.Authenticated = true;

        }
    
    }
    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection c = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        c.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from patientprofile where patientID = @id and password = @pass", c);
        cmd.Parameters.AddWithValue("@id", Login2.UserName);
        cmd.Parameters.AddWithValue("@pass", Login2.Password);
        

        int count = Convert.ToInt32(cmd.ExecuteScalar());
        c.Close();

        if (count > 0)
        {
            e.Authenticated = true;

        }
    }
    protected void  Login1_LoggedIn(object sender, EventArgs e)
{
    Response.Redirect("~/patienthomepage/doctorhomepage.aspx");
}
    protected void Login2_LoggedIn(object sender, EventArgs e)
    {
        Response.Redirect("~/patienthomepage/phomepage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("patient_signup.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("dummy.aspx");
    }
}
