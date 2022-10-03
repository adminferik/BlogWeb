using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class SertifikaListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            Repeater1.DataSource = dt.SertifikaListele();
            Repeater1.DataBind();
        }
    }
}