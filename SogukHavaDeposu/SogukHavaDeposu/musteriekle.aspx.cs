using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class musteriekle : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        public void temizle()
        {
            txtAd.Text = "";
            txtCepTel.Text = "";
            txtMail.Text = "";
            txtSoyad.Text = "";
            txtTc.Text = "";
            dLCinsiyet.SelectedIndex = 0;
        }
        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT * FROM musteri where aktifMi='true'", baglan);
            SQLiteDataReader dr = komut.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            GvBind();
        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string musteriAd = txtAd.Text;
            string musteriCepTel = txtCepTel.Text;
            string musteriCinsiyet = dLCinsiyet.SelectedValue;
            string musteriEPosta = txtMail.Text;
            string musteriSoyad = txtSoyad.Text;
            string musteriTC = txtTc.Text;
            string musterikayitTarihi = DateTime.Now.ToString();
            string aktifMi = "true";

            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();

            SQLiteCommand komut = new SQLiteCommand("insert into musteri (musteriAd,musteriCepTel,musteriCinsiyet,musteriEPosta,musteriSoyad,musteriTC,musterikayitTarihi,aktifMi) values ('" + musteriAd + "','" + musteriCepTel + "','" + musteriCinsiyet + "','" + musteriEPosta + "','" + musteriSoyad + "','" +musteriTC  + "','" + musterikayitTarihi + "','"+aktifMi+"'); ", baglan);
            komut.ExecuteNonQuery();
            temizle();
            GvBind();
        }
    }
}