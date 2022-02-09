using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class patient_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        dd_year.Items.Add("SELECT");
        for(i = 1970; i<2016; i++)
            dd_year.Items.Add(i.ToString());
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        

        


        
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\SGSproject\sgsdatabase.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();

        SqlCommand com = new SqlCommand("insert patientprofile values(@fname,@lname,@mobileno,@gender,@dob,@mail,@pass,@image,@add)", con);
        com.Parameters.AddWithValue("@fname", txt_fname.Text);
        com.Parameters.AddWithValue("@lname", txt_lname.Text);
        com.Parameters.AddWithValue("@mobileno", txt_mobileno.Text);
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
        com.Parameters.AddWithValue("@image","");
        com.Parameters.AddWithValue("@add", txt_add.Text);
        com.ExecuteNonQuery();


        SqlCommand com_id = new SqlCommand("select @@Identity", con);
        int id = Convert.ToInt32(com_id.ExecuteScalar());

        FileUpload1.SaveAs(MapPath("~/images/" + id.ToString() + ".jpg"));
        SqlCommand com_update = new SqlCommand("update patientprofile set image=@img where patientid=@pid", con);
        com_update.Parameters.AddWithValue("@pid", id.ToString());
        com_update.Parameters.AddWithValue("@img", "~/images/" + id.ToString() + ".jpg");
        com_update.ExecuteNonQuery();
        con.Close();


        Response.Write("<script>alert('Saved');</script>");
    }
}