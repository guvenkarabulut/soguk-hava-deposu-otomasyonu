using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class index : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void btn_Giris_Click(object sender, EventArgs e)
        {
            string kullanicii = txt_GirisKullanici.Value;
            string sifre = txt_GirisSifre.Value;
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteParameter prm1 = new SQLiteParameter("kullaniciAdi", txt_GirisKullanici.Value);
            SQLiteParameter prm2 = new SQLiteParameter("kullaniciSifre", txt_GirisSifre.Value);
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM kullanici where kullaniciAdi='" + kullanicii + "' and kullaniciSifre='" + sifre + "'", baglan);
            komut.Parameters.Add(prm1);
            komut.Parameters.Add(prm2);
            DataTable dt = new DataTable();
            SQLiteDataAdapter da = new SQLiteDataAdapter(komut);
            da.Fill(dt);
            if (dt.Rows.Count>0)
            {
                Session.Add("kullanici", txt_GirisKullanici.Value);
                Response.Redirect("calisan.aspx");

            }
            else
            {
                txt_GirisKullanici.Value = "";
                txt_GirisSifre.Value = "";
                Response.Write("<script>confirm('Girilen Bilgiler Yanlış Lütfen Tekrar Deneyin.')</script>");
            }
        }
    }
}