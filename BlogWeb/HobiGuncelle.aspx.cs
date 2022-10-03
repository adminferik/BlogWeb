using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class HobiGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            Txtid.Text = x.ToString();
            Txtid.Enabled = false;

            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLHOBILERTableAdapter dt = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
                TxtHobi.Text = dt.HobiGetir(Convert.ToInt16(Txtid.Text))[0].HOBI;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLHOBILERTableAdapter dt = new DataSet1TableAdapters.TBLHOBILERTableAdapter();
            dt.HobiGuncelle(TxtHobi.Text, Convert.ToInt16(Txtid.Text));
            Response.Redirect("HobiListesi.Aspx");
        }
    }
}