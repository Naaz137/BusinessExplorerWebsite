using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;


namespace BusinessExplorer
{
    public partial class browse : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                RepeterData();
            }
            catch (Exception ex)
            {

            }
        }


        public void RepeterData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Role_id=2 order by Bus_like desc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            RepterDetails.DataSource = dt;
            RepterDetails.DataBind();
            if (dt.Rows.Count <= 0)
            {
                Label1.Text = "Sorry! Currently no data.";
            }
            else
            {
                Label1.Text = "Showing All Businesses";
            }

            con.Close();
        }

        protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (txtFilterGrid1Record.Text != string.Empty)
                {

                    con.Open();                    

                    string qr = "select Bus_name as busName, Bus_type as busType, Bus_desc as busDesc from tblUsers where Bus_name like" +
                        " '" + txtFilterGrid1Record.Text + "' or Bus_type like '" + txtFilterGrid1Record.Text + "' or Bus_desc like" +
                        " '" + txtFilterGrid1Record.Text + "' or Bus_street like '" + txtFilterGrid1Record.Text + "' or Bus_locality like" +
                        " '" + txtFilterGrid1Record.Text + "' or Bus_landmark like '" + txtFilterGrid1Record.Text + "' or Bus_city like" +
                        " '" + txtFilterGrid1Record.Text + "' or Bus_state like '" + txtFilterGrid1Record.Text + "' ";

                    SqlDataAdapter da = new SqlDataAdapter(qr, con);
                    string text = ((TextBox)sender).Text;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        RepterDetails.DataSource = ds.Tables[0];
                        RepterDetails.DataBind();
                    }
                    else
                    {

                    }

                    con.Close();
                }
                else
                {
                    RepeterData();
                }
            }
            catch (Exception ex)
            {

            }

        }

    }
}