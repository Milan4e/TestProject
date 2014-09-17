using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerButton_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            string configString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection sqlConnection = new SqlConnection(configString))
            {
                SqlCommand cmd = new SqlCommand("spRegisterUser", sqlConnection);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter username = new SqlParameter("@UserName", userNameTxtBox.Text);
                SqlParameter password = new SqlParameter("@Password", passwordTxtBox.Text);
                SqlParameter email = new SqlParameter("@Email", emailTxtBox.Text);

                cmd.Parameters.Add(username);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);

                sqlConnection.Open();
                int returnCode = (int)cmd.ExecuteScalar();
                if (returnCode == -1)
                {
                    lblRegistrationMessage.Text = "User Name already in use, please choose another User Name";
                }
                else
                {
                    Response.Redirect("~/Welcome.aspx");
                }
            }
        }

        //Response.Write("You have successfully registered to the weather forest app");
    }
}