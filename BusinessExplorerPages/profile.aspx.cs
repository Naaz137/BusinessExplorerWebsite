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
    public partial class profile : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Page.IsPostBack)
            {
                
            }
            else
            {
                Display();
            }
        }

        private void Display()
        {
            try
            {

                string str;
                SqlCommand com;

                lblWlcm.Text = "WELCOME  " + Session["UserName"] + " !";

                con.Open();
                str = "select Name, Username, Email, DOB from tblUsers where Username ='" + Session["UserName"] + "'";
                com = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);

                lblCname.Visible = true;
                lblCuname.Visible = true;
                lblCmail.Visible = true;
                lblCdob.Visible = true;

                lblCname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                lblCuname.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                lblCmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                lblCdob.Text = ds.Tables[0].Rows[0]["DOB"].ToString();

                con.Close();


            }
            catch (Exception ex)
            {

            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["UserName"] = "";
            Response.Redirect("LogIn.aspx");
        }

        protected void btnEditprof_Click(object sender, EventArgs e)
        {
            if (pnlmain.Visible == true)
            {

                pnlmain.Visible = false;
                pnlEdit.Visible = true;
            }
        }

        protected void btnCncl_Click(object sender, EventArgs e)
        {
            if (pnlEdit.Visible == true)
            {

                pnlEdit.Visible = false;
                pnlmain.Visible = true;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                if (unameExist() && unameIsvalid() && nameIsvalid() && dobIsvalid() && emailIsvalid())
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);
                    con.Open();
                    String str = "";
                    str = "update tblUsers set Username ='" + txtUname.Text + "', Name ='" + txtName.Text + "', " +
                        "Email ='" + txtmail.Text + "', DOB ='" + txtdob.Text + "' where Username = '" + Session["UserName"] + "' ";

                    SqlCommand cmd = new SqlCommand(str, con);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Updated successfully!');  </script>");
                    //clr();
                    con.Close();

                    Session["UserName"] = txtUname.Text;

                    lblWlcm.Text = "WELCOME  " + txtUname.Text + " !";
                    lblCname.Text = txtName.Text;
                    lblCuname.Text = txtUname.Text;
                    lblCmail.Text = txtmail.Text;
                    lblCdob.Text = txtdob.Text;

                    if (pnlEdit.Visible == true)
                    {

                        pnlEdit.Visible = false;
                        pnlmain.Visible = true;
                    }

                }

                
            }
            catch(Exception ex)
            {

            }          
        }

        private bool unameExist()
        {
            String str = "";
            str = "select Username from tblUsers where Username = '" + txtUname.Text + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count > 0)
            {
                if(pnlEdit.Visible == true)
                {
                    Panel1.Visible = true;
                    lblExist.Text = "Username already exists.";
                    txtUname.Focus();
                    con.Close();
                    return false;
                }
            }
            else
            {
                if (Panel1.Visible == true)
                    Panel1.Visible = false;
                con.Close();
            }
            return true;
        }

        private bool unameIsvalid()
        {
            string unamepat = @"\w{4,20}";
            bool isUnameValid = Regex.IsMatch(txtUname.Text, unamepat);
            if (!isUnameValid || txtUname.Text == "")
            {
                Panel1.Visible = true;
                lblExist.Visible = true;
                lblExist.Text = "Enter a valid username";
                txtUname.Focus();
                //MessageBox.Show("Please enter a valid email");
                return false;
            }
            else
            {
                if (Panel1.Visible == true)
                {
                    Panel1.Visible = false;
                    lblExist.Visible = false;
                }
                return true;
            }
        }

        private bool nameIsvalid()
        {
            //string namepat = @"^[a-zA-Z]([-']?[a-zA-Z]+)*( [a-zA-Z]([-']?[a-zA-Z]+)*)+$";
            string namepat = @"^[a-zA-Z\s]+$";
            bool isNameValid = Regex.IsMatch(txtName.Text, namepat);
            if (!isNameValid || txtName.Text == "")
            {
                Panel4.Visible = true;
                lblname.Visible = true;
                lblname.Text = "Name must be in alphabets and spaces only";
                txtName.Focus();
                return false;
            }
            else
            {
                if (Panel4.Visible == true)
                {
                    Panel4.Visible = false;
                    lblname.Visible = false;
                    //return true;
                }
                return true;
            }
        }

        private bool dobIsvalid()
        {
            string dobpat = @"(0[1-9]|[12][0-9]|3[01])[/](0[1-9]|1[012])[/]\d{4}";
            bool isDobValid = Regex.IsMatch(txtdob.Text, dobpat);
            if (!isDobValid || txtdob.Text == "")
            {
                Panel5.Visible = true;
                lbldob.Visible = true;
                lbldob.Text = "Date must be in dd/mm/yyyy format";
                txtdob.Focus();
                return false;
            }
            else
            {
                if (Panel5.Visible == true)
                {
                    Panel5.Visible = false;
                    lbldob.Visible = false;
                    //return true;
                }
                return true;
            }
        }

        private bool emailIsvalid()
        {
            string emailPat = @"^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$";
            bool isEmailValid = Regex.IsMatch(txtmail.Text, emailPat);
            if (!isEmailValid || txtmail.Text == "")
            {
                Panel6.Visible = true;
                lblmail.Visible = true;
                lblmail.Text = "Enter a valid email address";
                txtmail.Focus();
                return false;
            }
            else
            {
                if (Panel6.Visible == true)
                {
                    Panel6.Visible = false;
                    lblmail.Visible = false;
                    //return true;
                }
                return true;
            }
        }

    }
}