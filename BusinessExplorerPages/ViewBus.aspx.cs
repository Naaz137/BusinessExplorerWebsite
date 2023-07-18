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
    public partial class ViewBus : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                BindBusData();
                countDisp();
            }
            catch (Exception ex)
            {

            }
        }

        public void BindBusData()
        {
            try
            {

                Int64 Uid = Convert.ToInt64(Request.QueryString["Uid"]);
                //con.Open();
                //using (con)
                //{
                //    SqlCommand cmd = new SqlCommand("SP_BindBusData", con)
                //    {
                //        CommandType = CommandType.StoredProcedure
                //    };
                //    cmd.Parameters.AddWithValue("@Uid", Uid);
                //    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                //    {
                //        DataSet ds = new DataSet();
                //        sda.Fill(ds);

                string str;
                SqlCommand com;

                con.Open();
                str = "select Name, Username, Email, DOB, Bus_name, Bus_type, Bus_desc, Bus_email, Bus_phone, Bus_houseno, Bus_street, Bus_locality,";
                str += "Bus_landmark, Bus_city, Bus_state, Bus_pin from tblUsers where Uid ='" + Uid + "'";
                com = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);

                string address = ds.Tables[0].Rows[0]["Bus_houseno"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_street"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_locality"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_landmark"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_city"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_state"].ToString();
                        address += ", ";
                        address += ds.Tables[0].Rows[0]["Bus_pin"].ToString();
                        address += ".";

                        lblEname.Visible = true;
                        lblEuname.Visible = true;
                        lblEmail.Visible = true;

                        lblEname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                        lblEuname.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                        lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();

                        lblbusName.Text = ds.Tables[0].Rows[0]["Bus_name"].ToString();
                        busType.Text = ds.Tables[0].Rows[0]["Bus_type"].ToString();
                        busDesc.Text = ds.Tables[0].Rows[0]["Bus_desc"].ToString();
                        busEmail.Text = ds.Tables[0].Rows[0]["Bus_email"].ToString();
                        busPhn.Text = ds.Tables[0].Rows[0]["Bus_phone"].ToString();
                        busAdd.Text = address;

                //}                   
                //}

                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void likebutton_Click(object sender, EventArgs e)
        {
            try
            {

                Int64 Uid = Convert.ToInt64(Request.QueryString["Uid"]);
                con.Open();
                String str = "";
                str = "update tblUsers set Bus_like = Bus_like + 1 where Uid = '" + Uid + "'";

                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();

                con.Close();

                countDisp();
            }
            catch (Exception ex)
            {

            }
        }

        public void countDisp()
        {
            try
            {
                Int64 Uid = Convert.ToInt64(Request.QueryString["Uid"]);
                con.Open();

                String str = "";
                str = "select Bus_like from tblUsers where Uid = '" + Uid + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblCount.Visible = true;
                lblCount.Text = ds.Tables[0].Rows[0]["Bus_like"].ToString();

                con.Close();
            }
            catch (Exception ex)
            {

            }
        }

    }
}