using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class SertifikaGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int s = Convert.ToInt16(Request.QueryString["ID"]);
            Txtid.Text = s.ToString();
            Txtid.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
                TxtSertifika.Text = dt.SertifikaGetir(Convert.ToInt16(s))[0].SERTIFIKA;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter dt = new DataSet1TableAdapters.TBLSERTIFIKALARTableAdapter();
            dt.SertifikaGuncelle(TxtSertifika.Text, Convert.ToInt16(Txtid.Text));
            Response.Redirect("SertifikaListesi.Aspx");
        }
    }
}