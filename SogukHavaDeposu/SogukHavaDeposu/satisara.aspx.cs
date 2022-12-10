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
    public partial class satisara : System.Web.UI.Page
    {
        public static string db_path = @"data source = C:\Users\User\Desktop\SogukHavaDeposu\SogukHavaDeposu\SogukHavavt.db; Read Only=False";

        public DataTable sorgucalistir(string sorgu)
        {
            SQLiteConnection baglan = new SQLiteConnection(db_path);
            baglan.Open();
            SQLiteCommand komut = new SQLiteCommand(sorgu, baglan);
            SQLiteDataAdapter adapter = new SQLiteDataAdapter(komut);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;
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
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue== "Satış")
            {
                string sorgu = "SELECT * FROM satis";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
                txt_Arama.Disabled = true;
                btnAra.Enabled = false;

            }
            else if (DropDownList1.SelectedValue == "Bugünki Satış")
            {
                int gun = DateTime.Now.Day;
                string ay = DateTime.Now.ToString("MM");
                int yil = DateTime.Now.Year;
                string buguntarih = (gun.ToString() + "." + ay + "." + yil.ToString());
                string sorgu = "SELECT * FROM satis where satisTarihi LIKE'%" + buguntarih + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
                txt_Arama.Disabled = true;
                btnAra.Enabled = false;
            }
            else
            {
                txt_Arama.Disabled = false;
                btnAra.Enabled = true;
            }
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue== "Tarih ile Arama")
            {
                string sorgu = "SELECT * FROM satis where satisTarihi LIKE'%" + txt_Arama.Value + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();

            }
            if (DropDownList1.SelectedValue == "Ürün ile Arama")
            {
                string sorgu = "SELECT * FROM satis where satisUrunAdi LIKE'%" + txt_Arama.Value + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();

            }
            if (DropDownList1.SelectedValue == "Kod ile Arama")
            {
                string sorgu = "SELECT * FROM satis where satisUrunKodu LIKE'%" + txt_Arama.Value + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();

            }
        }
    }
}