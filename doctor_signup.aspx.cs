using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class doctor_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        dd_year.Items.Add("SELECT");
        for (i = 1950; i < 2016; i++)
            dd_year.Items.Add(i.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();

        SqlCommand com = new SqlCommand("insert doctorprofile values(@regno,@fname,@lname,@gender,@dob,@spec,NULL,NULL,NULL,NULL,@photo,NULL,NULL,@pass)", con);
        com.Parameters.AddWithValue("@fname", txt_fname.Text);
        com.Parameters.AddWithValue("@lname", txt_lname.Text);
        com.Parameters.AddWithValue("@regno", txt_regno.Text);
        if (rb_male.Checked)
        {
            com.Parameters.AddWithValue("@gender", rb_male.Text);
        }
        else
        {
            com.Parameters.AddWithValue("@gender", rb_female.Text);
        }

        com.Parameters.AddWithValue("@dob", dd_month.SelectedValue + "/" + dd_date.Text + "/" + dd_year.Text);
        com.Parameters.AddWithValue("@mail", txt_email.Text);
        com.Parameters.AddWithValue("@pass", txt_pass.Text);
        com.Parameters.AddWithValue("@spec", dd_spec.Text);
        com.Parameters.AddWithValue("@photo", "");

        com.ExecuteNonQuery();

      

        FileUpload1.SaveAs(MapPath("~/images/"+ txt_regno.Text + ".jpg"));
        SqlCommand com_update = new SqlCommand("update doctorprofile set photo=@img where regno=@reg", con);
        com_update.Parameters.AddWithValue("@reg", txt_regno.Text);
        com_update.Parameters.AddWithValue("@img", "~/images/" + txt_regno.Text + ".jpg");
        com_update.ExecuteNonQuery();
        
        con.Close();

        Response.Write("<script>alert('Saved');</script>");
    }
    protected void txt_pass_TextChanged(object sender, EventArgs e)
    {

    }
    protected void dd_month_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}