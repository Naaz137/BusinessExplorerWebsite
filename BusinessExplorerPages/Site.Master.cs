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
    public partial class SiteMaster : MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string str;
                SqlCommand com;             

                con.Open();
                str = "select Role_id from tblUsers where Username ='" + Session["UserName"] + "'";
                com = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                { 
                    object role = ds.Tables[0].Rows[0]["Role_id"];

                    if (role.ToString() == "1")
                    {
                        con.Close();
                        Response.Redirect("profile.aspx");
                    }
                    else if (role.ToString() == "2")
                    {
                        con.Close();
                        Response.Redirect("BusProfile.aspx");
                    }
                    
                }
                else
                {
                    con.Close();
                    Response.Redirect("LogIn.aspx");
                    
                }
                
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }
    }
}