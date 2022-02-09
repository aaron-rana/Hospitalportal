using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patienthomepage_appointmentconfirm : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("insert appointment values(@regno,@pid,@timeslot,@date,NULL,NULL,NULL)", con);
        cmd.Parameters.AddWithValue("@regno", Convert.ToInt32( Session["reg"]));
        cmd.Parameters.AddWithValue("@pid", User.Identity.Name);
        cmd.Parameters.AddWithValue("@timeslot", Session["timeslot"].ToString());
        cmd.Parameters.AddWithValue("@date", Session["date"].ToString());
               
        cmd.ExecuteNonQuery();

        con.Close();

       
        
            lbl_pid.Text = User.Identity.Name;
            lbl_pname.Text = Session["pname"].ToString();
            lbl_dname.Text = Session["dname"].ToString();
            lbl_time.Text = Session["timeslot"].ToString();
            lbl_date.Text = Session["date"].ToString();
            //lbl_hospital.Text = Session["hospital"].ToString();
            con.Open();
            SqlCommand com = new SqlCommand("select appointmentid from appointment where regno=@reg and patientid=@pid ", con);
            com.Parameters.AddWithValue("@reg", Convert.ToInt32(Session["reg"]));
            com.Parameters.AddWithValue("@pid", User.Identity.Name);
            int s = Convert.ToInt32( com.ExecuteScalar());
        lbl_appid.Text = s.ToString();
        con.Close();
    }
}