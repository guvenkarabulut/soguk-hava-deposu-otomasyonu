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
    public partial class siparisana : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";
        protected void GvBind()
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand("SELECT stokGiris.stokAd,stokGiris.stokBirim,arac.aracPlaka,musteri.musteriAd,musteri.musteriTC,siparis.siparisss,siparis.siparisTarih FROM siparis INNER JOIN stokGiris on siparis.stokNo = stokGiris.stokGirisID INNER JOIN arac on siparis.aracNo = arac.aracNo INNER JOIN musteri on siparis.musteriNo = musteri.musteriID ", baglan);
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


        //DataTable dt = new DataTable();

        //dt.Columns.Add("stokad");
        //dt.Columns.Add("stokmiktar");
        //dt.Columns.Add("stokbirim");
        //dt.Columns.Add("aracplaka");
        //dt.Columns.Add("musteriad");
        //dt.Columns.Add("musteritc");
        //dt.Columns.Add("siparistarih");
        //dt.Columns.Add("sipariss");

        //for (int i = 1; i < vt.siparis.Count()+1; i++)
        //{
        //    var liste = vt.siparis.Where(p => p.siparisNo == i).FirstOrDefault();
        //    DataRow dr = dt.NewRow();

        //    dr["stokad"] = liste.stokGiris.stokAd;
        //    dr["stokmiktar"] = liste.stokGiris.stokMiktarı; 
        //    dr["stokbirim"] = liste.stokGiris.stokBirim;
        //    dr["aracplaka"] = liste.arac.aracPlaka;
        //    dr["musteriad"] = liste.musteri.musteriAd;
        //    dr["musteritc"] = liste.musteri.musteriTC;
        //    dr["siparistarih"] = liste.siparisTarih;
        //    dr["sipariss"] = liste.siparisss;

        //    dt.Rows.Add(dr);
        //}

        //GridView1.DataSource = dt;
        //GridView1.DataBind();
    }
}
}