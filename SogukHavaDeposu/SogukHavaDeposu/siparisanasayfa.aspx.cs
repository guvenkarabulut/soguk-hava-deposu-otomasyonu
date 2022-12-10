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
    public partial class siparisanasayfa : System.Web.UI.Page
    {
        string a = string.Empty;
        string stokid = string.Empty;
        string aracid = string.Empty;
        string musteriid = string.Empty;
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        public DataTable sorgucalistir(string sorgu)
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand(sorgu, baglan);
            SQLiteDataAdapter adapter = new SQLiteDataAdapter(komut);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            baglan.Close();
            return dt;
        }
        protected void aracBind()
        {
            string sorgu = "SELECT * FROM arac";
            GridView2.DataSource = sorgucalistir(sorgu);
            GridView2.DataBind();
        }
        protected void musteriBind()
        {
            string sorgu = "SELECT * FROM musteri where aktifMi='true'";
            GridView3.DataSource = sorgucalistir(sorgu);
            GridView3.DataBind();
        }
        protected void stokBind()
        {
            string sorgu = "SELECT * FROM stokGiris where aktifMi='true'";
            GridView5.DataSource = sorgucalistir(sorgu);
            GridView5.DataBind();
        }
        protected void siparisBind()
        {
            int gun = DateTime.Now.Day;
            string ay = DateTime.Now.ToString("MM");
            int yil = DateTime.Now.Year;
            string buguntarih = (gun.ToString() + "." + ay + "." + yil.ToString());
            string sorgu = "SELECT * FROM siparis where siparisTarih like '%" + buguntarih + "%'";
            GridView4.DataSource = sorgucalistir(sorgu);
            GridView4.DataBind();
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
            stokBind();
            aracBind();
            musteriBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView2.SelectedIndex;
            GridViewRow row = GridView2.Rows[secili];
            TextBox2.Text = "";
            TextBox2.Text = row.Cells[1].Text;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView3.SelectedIndex;
            GridViewRow row = GridView3.Rows[secili];
            TextBox3.Text = "";
            TextBox3.Text = row.Cells[1].Text;
        }
        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView5.SelectedIndex;
            GridViewRow row = GridView5.Rows[secili];
            a = TextBox1.Text;
            TextBox1.Text = a + row.Cells[1].Text + ",";
        }
        public int siparisindex,stokdegistirindex;
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SQLiteConnection baglan = new SQLiteConnection(db_path);


            dt.Columns.Add("stokid");
            dt.Columns.Add("aracid");
            dt.Columns.Add("musteriid");

            string stokkk = TextBox1.Text;

            string yenistk = stokkk.Remove(stokkk.Length - 1);
            int araccc = int.Parse(TextBox2.Text);
            int müsteriii = int.Parse(TextBox3.Text);



            string[] stokidleri = yenistk.Split(',');
            for (int i = 0; i < stokidleri.Length; i++)
            {

                DataRow dr = dt.NewRow();
                dr["stokid"] = stokidleri[i];
                dr["aracid"] = araccc;
                dr["musteriid"] = müsteriii;

                dt.Rows.Add(dr);
            }
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";

          

            baglan.Open();
            string sorgu = "SELECT * FROM siparis ORDER BY siparisNo DESC LIMIT 1;";
            SQLiteCommand sonindexkomut = new SQLiteCommand(sorgu, baglan);

            SQLiteDataReader sonik = sonindexkomut.ExecuteReader();
            if (sonik.HasRows)
            {
                while (sonik.Read())
                {
                    siparisindex = int.Parse(sonik["siparisss"].ToString());
                }
            }

            foreach (DataRow row in dt.Rows)
            {
                stokid = row["stokid"].ToString();
                aracid = row["aracid"].ToString();
                musteriid = row["musteriid"].ToString();
                int siparisss = siparisindex + 1;
                int stokNo = int.Parse(stokid);
                int aracNo = int.Parse(aracid);
                int musteriNo = int.Parse(musteriid);
                string siparisTarih = DateTime.Now.ToString();
                int sorgustokid = int.Parse(stokid);
                string sorgu1 = "SELECT * FROM stokGiris where stokGirisID='"+ sorgustokid +"';";
                SQLiteCommand sorguu1 = new SQLiteCommand(sorgu1,baglan);
                SQLiteDataReader s2 = sorguu1.ExecuteReader();
                if (s2.HasRows)
                {
                    while (s2.Read())
                    {
                        stokdegistirindex = int.Parse(s2["stokGirisID"].ToString());
                    }
                    string sorgu2 = "update stokGiris set aktifMi='false' where stokGirisID='"+ stokdegistirindex+ "';";
                    SQLiteCommand sorguu2 = new SQLiteCommand(sorgu2, baglan);
                    sorguu2.ExecuteNonQuery();
                }

                string sorgu3 = "insert into siparis (siparisss,aracNo,musteriNo,stokNo,siparisTarih) Values('" + siparisss + "','" + aracNo + "','" + musteriNo + "','" + stokNo + "','" + siparisTarih + "');";
                SQLiteCommand sorguu3 = new SQLiteCommand(sorgu3, baglan);
                sorguu3.ExecuteNonQuery();
            }
            dt.Clear();
            stokBind();
            aracBind();
            musteriBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string yazi = txtPlaka.Text;
            string sorgu = "SELECT * FROM arac where aracPlaka like '%" + yazi + "%';";
            GridView2.DataSource = sorgucalistir(sorgu);
            GridView2.DataBind();
            if (yazi == "")
            {
                aracBind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string yazi = txtUrun.Text;
            string sorgu = "SELECT * FROM stokGiris where stokAd like '%" + yazi + "%' and aktifMi='true';";

            GridView5.DataSource = sorgucalistir(sorgu); 
            GridView5.DataBind();
            if (yazi == "")
            {
                stokBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string yazi = txtTx.Text;
            string sorgu = "SELECT * FROM musteri where musteriTC like '%" + yazi + "%' and aktifMi='true' ;";

            GridView3.DataSource = sorgucalistir(sorgu);
            GridView3.DataBind();
            if (yazi == "")
            {
                musteriBind();
            }
        }

        protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView5.PageIndex = e.NewPageIndex;
            stokBind();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            aracBind();
        }

        protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView3.PageIndex = e.NewPageIndex;
            musteriBind();
        }

        protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView4.PageIndex = e.NewPageIndex;
            siparisBind();
        }
    }
}
