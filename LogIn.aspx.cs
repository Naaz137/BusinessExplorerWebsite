using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace BusinessExplorer
{
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);
        string strConnString = ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString;
        SqlCommand com;
        SqlDataAdapter sqlda;
        string str;
        DataTable dt;
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string UserName = txtuname.Text.Trim();
            string Password = txtpass.Text.Trim();
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "Select * from tblUsers where Username = '" + UserName + "' and Password = '" + Password + "' ";
            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();
            sqlda.Fill(dt);
            RowCount = dt.Rows.Count;
            
            if (RowCount <= 0)
            {
                Response.Write("<script> alert('Invalid User Name or Password! Please try again!');  </script>");
            }

            else
            {
                String Role = dt.Rows[0]["Role_id"].ToString();
                Session["UserName"] = UserName;
                if (Role == "1")
                {
                    Response.Redirect("profile.aspx");
                }
                else if (Role == "2")
                {
                    Response.Redirect("BusProfile.aspx");
                }
                //else if (Role == "3")
                //{
                //    Response.Redirect("profile.aspx");
                //}
            }
                           
        }

    }
}