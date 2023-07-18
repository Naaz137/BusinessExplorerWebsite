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
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace BusinessExplorer
{
    public partial class UpdateBus : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {
                nameIsvalid();
                typeIsvalid();
                descIsvalid();
                emailIsvalid();
                phnIsvalid();
                houseIsvalid();
                streetIsvalid();
                localityIsvalid();
                cityIsvalid();
                stateIsvalid();
                pinIsvalid();
            }
            else
                fillDetails();
        }

        protected void btnCncl_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BusProfile.aspx");
        }

        protected void btnUpdt_Click(object sender, EventArgs e)
        {
            try
            {
                string confirmValue = Request.Form["confirm_value"];

                if (confirmValue == "Yes")
                {

                    if (nameIsvalid() && typeIsvalid() && descIsvalid() && emailIsvalid() && phnIsvalid() && houseIsvalid() &&
                    streetIsvalid() && localityIsvalid() && cityIsvalid() && stateIsvalid() && pinIsvalid())
                    {

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);
                        con.Open();
                        String str = "";
                        str = "update tblUsers set Bus_name ='" + txtBusname.Text + "', Role_id ='2', Bus_type ='" + ddlBusType.SelectedItem.Text + "', " +
                            "Bus_desc ='" + txtDesc.Text + "', Bus_email ='" + txtBusmail.Text + "', Bus_phone ='" + txtPhn.Text + "', " +
                            "Bus_houseno ='" + txtHouse.Text + "', Bus_street ='" + txtStreet.Text + "', Bus_locality ='" + txtLocality.Text + "', " +
                            "Bus_landmark ='" + txtLandmark.Text + "', Bus_city ='" + txtCity.Text + "', Bus_state ='" + txtState.Text + "', " +
                            "Bus_pin ='" + txtPin.Text + "' where Username = '" + Session["UserName"] + "' ";

                        SqlCommand cmd = new SqlCommand(str, con);

                        cmd.ExecuteNonQuery();
                        Response.Write("<script> alert('Updated Successfully');  </script>");
                        //clr();
                        con.Close();

                        Response.Redirect("~/BusProfile.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert('Invalid Data!');  </script>");

                    }
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
                    Response.Redirect("~/BusProfile.aspx");
                }  

            }
            catch (Exception ex)
            {

            }

        }

        private void fillDetails()
        {
            try
            {
                string str;
                SqlCommand com;

                con.Open();
                str = "select Bus_name, Bus_type, Bus_desc, Bus_email, Bus_phone, Bus_houseno, Bus_street, Bus_locality,";
                str += "Bus_landmark, Bus_city, Bus_state, Bus_pin from tblUsers where Username ='" + Session["UserName"] + "'";
                com = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);

                txtBusname.Text = ds.Tables[0].Rows[0]["Bus_name"].ToString();
                ddlBusType.SelectedItem.Text = ds.Tables[0].Rows[0]["Bus_type"].ToString();
                txtDesc.Text = ds.Tables[0].Rows[0]["Bus_desc"].ToString();
                txtBusmail.Text = ds.Tables[0].Rows[0]["Bus_email"].ToString();
                txtPhn.Text = ds.Tables[0].Rows[0]["Bus_phone"].ToString();
                txtHouse.Text = ds.Tables[0].Rows[0]["Bus_houseno"].ToString();
                txtStreet.Text = ds.Tables[0].Rows[0]["Bus_street"].ToString();
                txtLocality.Text = ds.Tables[0].Rows[0]["Bus_locality"].ToString();
                txtLandmark.Text = ds.Tables[0].Rows[0]["Bus_landmark"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["Bus_city"].ToString();
                txtState.Text = ds.Tables[0].Rows[0]["Bus_state"].ToString();
                txtPin.Text = ds.Tables[0].Rows[0]["Bus_pin"].ToString();

                con.Close();
            }
            catch (Exception ex)
            {

            }

        }


        private bool nameIsvalid()
        {

            if (txtBusname.Text == "")
            {
                pnlname.Visible = true;
                lblname.Text = "Field should not be empty";
                txtBusname.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlname.Visible == true)
                {
                    pnlname.Visible = false;
                }
                return true;
            }
        }

        private bool typeIsvalid()
        {

            if (ddlBusType.SelectedItem.Text== "--Select--")
            {
                pnltype.Visible = true;
                lbltype.Text = "Select any one of the items";
                ddlBusType.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnltype.Visible == true)
                {
                    pnltype.Visible = false;
                }
                return true;
            }
        }

        private bool descIsvalid()
        {
            string descPat = @"^.{1,500}$";
            bool isdescValid = Regex.IsMatch(txtDesc.Text, descPat);

            if (!isdescValid || txtDesc.Text == "")
            {
                pnldesc.Visible = true;
                lbldesc.Text = "Description should be less than 500 characters only";
                txtDesc.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnldesc.Visible == true)
                {
                    pnldesc.Visible = false;
                }
                return true;
            }
        }

        private bool emailIsvalid()
        {
            string emailPat = @"^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$";
            bool isEmailValid = Regex.IsMatch(txtBusmail.Text, emailPat);

            if (!isEmailValid || txtBusmail.Text == "")
            {
                pnlmail.Visible = true;
                lblmail.Text = "Enter a valid email address";
                txtBusmail.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlmail.Visible == true)
                {
                    pnlmail.Visible = false;
                }
                return true;
            }
        }

        private bool phnIsvalid()
        {
            string phnPat = @"^[6-9]\d{9}$";
            bool isphnValid = Regex.IsMatch(txtPhn.Text, phnPat);

            if (!isphnValid || txtPhn.Text == "")
            {
                pnlphn.Visible = true;
                lblphn.Text = "Enter a 10 digits valid phone number";
                txtPhn.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlphn.Visible == true)
                {
                    pnlphn.Visible = false;
                }
                return true;
            }
        }

        private bool houseIsvalid()
        {

            if (txtHouse.Text == "")
            {
                pnlhous.Visible = true;
                lblhouse.Text = "Field should not be empty";
                txtHouse.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlhous.Visible == true)
                {
                    pnlhous.Visible = false;
                }
                return true;
            }
        }

        private bool streetIsvalid()
        {

            if (txtStreet.Text == "")
            {
                pnlstrt.Visible = true;
                lblstrt.Text = "Field should not be empty";
                txtStreet.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlstrt.Visible == true)
                {
                    pnlstrt.Visible = false;
                }
                return true;
            }
        }

        private bool localityIsvalid()
        {

            if (txtLocality.Text == "")
            {
                pnlLocalty.Visible = true;
                lblLocalty.Text = "Field should not be empty";
                txtLocality.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlLocalty.Visible == true)
                {
                    pnlLocalty.Visible = false;
                }
                return true;
            }
        }

        private bool cityIsvalid()
        {
            string cityPat = @"^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$";
            bool isCityValid = Regex.IsMatch(txtCity.Text, cityPat);

            if (!isCityValid || txtCity.Text == "")
            {
                pnlcity.Visible = true;
                lblcity.Text = "Enter a valid city name";
                txtCity.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlcity.Visible == true)
                {
                    pnlcity.Visible = false;
                }
                return true;
            }
        }

        private bool stateIsvalid()
        {
            string statePat = @"^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$";
            bool isStateValid = Regex.IsMatch(txtState.Text, statePat);

            if (!isStateValid || txtState.Text == "")
            {
                pnlstate.Visible = true;
                lblstate.Text = "Enter a valid state name";
                txtState.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlstate.Visible == true)
                {
                    pnlstate.Visible = false;
                }
                return true;
            }
        }

        private bool pinIsvalid()
        {
            string pinPat = @"^[1-9]{1}[0-9]{5}$";
            //string pinPat = @"^\d{6}&";
            bool ispinValid = Regex.IsMatch(txtPin.Text, pinPat);

            if (!ispinValid || txtPin.Text == "")
            {
                pnlpin.Visible = true;
                lblpin.Text = "Enter a valid 6 digit pin code";
                txtPin.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (pnlpin.Visible == true)
                {
                    pnlpin.Visible = false;
                }
                return true;
            }
        }


    }
}