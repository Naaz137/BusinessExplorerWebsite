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
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BusnExpConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}