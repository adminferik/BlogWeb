using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogWeb
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TextBox6.Enabled = false;
            TextBox6.Text = x.ToString();
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
                TextBox1.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].BASLIK;

                TextBox2.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
                TextBox3.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
                TextBox4.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].TARIH;
                TextBox5.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].GNOT;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            dt.EgitimGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, Convert.ToInt16(TextBox6.Text));
            Response.Redirect("AdminEgitimler.Aspx");

            
        }
    }
}