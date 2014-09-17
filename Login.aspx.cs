using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool userExists = AuthenticateUser(userNameLoginTxtBox.Text, loginPasswordTxtBox.Text);
        if (userExists)
        {
            FormsAuthentication.RedirectFromLoginPage(userNameLoginTxtBox.Text, false);
        }

        else
        {
            lblMessage.Text = "User Name and Password are incorrect";
        }
    }

    private bool AuthenticateUser(string userName, string password)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter username = new SqlParameter("@UserName", userName);
            SqlParameter paramPassword = new SqlParameter("@password", password);

            cmd.Parameters.Add(username);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();

            return ReturnCode == 1;
        }
    }
}