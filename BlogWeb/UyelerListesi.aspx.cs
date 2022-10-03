using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class UyelerListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLUYELERTableAdapter dt = new DataSet1TableAdapters.TBLUYELERTableAdapter();
            Repeater1.DataSource = dt.UyelerListele();
            Repeater1.DataBind();
        }
    }
}