using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TextBox1.Text = x.ToString();
            TextBox1.Enabled = false;
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLYETENEKLERTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERTableAdapter();
                TextBox2.Text = dt.YetenekGetir(Convert.ToInt16(x))[0].YETENEK;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLYETENEKLERTableAdapter dt = new DataSet1TableAdapters.TBLYETENEKLERTableAdapter();
            dt.YetenekGuncelle(TextBox2.Text, Convert.ToInt16(TextBox1.Text));
            Response.Redirect("YetenekListesi.Aspx");
        }
    }
}