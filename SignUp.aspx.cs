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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                unameExist();
                unameIsvalid();
                pwdIsvalid();
                cpwdIsvalid();
                nameIsvalid();
                dobIsvalid();
                emailIsvalid();
            }
            else
                clr();
            
        }
        protected void btnCncl_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LogIn.aspx");
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            try
            {
                if (unameExist() && unameIsvalid() && pwdIsvalid() && cpwdIsvalid() && nameIsvalid() && dobIsvalid() && emailIsvalid())
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);
                    con.Open();

                    String str = "insert into tblUsers(Name, Role_id, Username, Password, Email, DOB) values('" + txtName.Text + "', '1', '" + txtUname.Text + "', '" + txtPwd.Text + "', '" + txtEmail.Text + "', '" + txtDob.Text + "') ";

                    SqlCommand cmd = new SqlCommand(str, con);                  
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfull!');  </script>");
                   
                    con.Close();

                    String uname = txtUname.Text;
                    Session["Password"] = txtName.Text;
                    Session["UserName"] = uname;
                    Session["Login"] = 1;
                    
                    string script = "<script> if(confirm('Would You like to continue registering a business account?')) {";
                    script += "window.location.replace('https://localhost:44333/BusSignUp');}";
                    script += " else {window.location.replace('https://localhost:44333/profile');} </script>";

                    Response.Write(script);
                    //Response.Redirect("~/Profile.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Registration failed');  </script>");
                }

            }
            catch (Exception ex)
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
            if(ds.Tables[0].Rows.Count > 0)
            {
                lblExist.Visible = true;
                Panel1.Visible = true;
                lblExist.Text = "Username already exists.";
                txtUname.Focus();
                con.Close();
                return false;                
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


        private bool pwdIsvalid()
        {
            string pwdpat = @"\w{3,20}";
            bool isPwdValid = Regex.IsMatch(txtPwd.Text, pwdpat);
            if (!isPwdValid || txtPwd.Text == "")
            {
                Panel2.Visible = true;
                lblpwd.Visible = true;
                lblpwd.Text = "Password length must be between 3 - 20";
                txtPwd.Focus();
                return false;
            }
            else
            {
                if (Panel2.Visible == true)
                {
                    Panel2.Visible = false;
                    lblpwd.Visible = false;
                    //return true;
                }
                return true;
            }
        }

        private bool cpwdIsvalid()
        {
            if (txtPwd.Text != txtCPass.Text)
            {
                Panel3.Visible = true;
                lblcpwd.Visible = true;
                lblcpwd.Text = "Passwords does not match";
                txtCPass.Focus();
                return false;
            }
            else
            {
                if (Panel3.Visible == true)
                {
                    Panel3.Visible = false;
                    lblcpwd.Visible = false;
                    //return true;
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
            bool isDobValid = Regex.IsMatch(txtDob.Text, dobpat);
            if (!isDobValid || txtDob.Text == "")
            {
                Panel5.Visible = true;
                lbldob.Visible = true;
                lbldob.Text = "Date must be in dd/mm/yyyy format";
                txtDob.Focus();
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
            bool isEmailValid = Regex.IsMatch(txtEmail.Text, emailPat);
            if (!isEmailValid || txtEmail.Text == "")
            {
                Panel6.Visible = true;
                lblmail.Visible = true;
                lblmail.Text = "Enter a valid email address";
                txtEmail.Focus();
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

        private void clr()
        {
            txtName.Text = string.Empty;
            txtPwd.Text = string.Empty;
            txtUname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtCPass.Text = string.Empty;
            txtDob.Text = string.Empty;
        }

    }
}


