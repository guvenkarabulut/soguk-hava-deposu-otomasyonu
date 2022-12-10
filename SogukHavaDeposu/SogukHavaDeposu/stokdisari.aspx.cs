using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SQLite;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class stokdisari : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            txt_Arama.Disabled = true;
            btnAra.Enabled = false;
        }
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
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex==1)
            {
                string sorgu = "SELECT * FROM stokGiris where aktifMi='true'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
                txt_Arama.Disabled=true;
                btnAra.Enabled = false;
            }
            if (DropDownList1.SelectedIndex == 2)
            {
                int gun = DateTime.Now.Day;
                string ay = DateTime.Now.ToString("MM");
                int yil = DateTime.Now.Year;
                string buguntarih = (gun.ToString() + "." + ay + "." + yil.ToString());
                string sorgu = "SELECT * FROM stokGiris where aktifMi='true' and stokGirisTarihi LIKE'%" + buguntarih + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
                txt_Arama.Disabled = true;
                btnAra.Enabled = false;
            }
            if (DropDownList1.SelectedIndex == 3)
            {
                string sorgu = "SELECT * FROM stokGiris where aktifMi='false'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
                txt_Arama.Disabled = true;
                btnAra.Enabled = false;
            }
            if (DropDownList1.SelectedIndex == 4)
            {
                txt_Arama.Disabled = false;
                btnAra.Enabled = true;

            }
            if (DropDownList1.SelectedIndex == 5)
            {
                txt_Arama.Disabled = false;
                btnAra.Enabled = true;

            }

        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 4)
            {
                string aranılacakkelmie = txt_Arama.Value;
                string sorgu = "SELECT * FROM stokGiris where aktifMi='true' and stokAd LIKE'%" + aranılacakkelmie + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
            }
            if (DropDownList1.SelectedIndex == 5)
            {
                string aranılacakkelmie = txt_Arama.Value;
                string sorgu = "SELECT * FROM stokGiris where aktifMi='true' and stokBirimKodu LIKE'%" + aranılacakkelmie + "%'";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind(); 
            }
        }
        

 

        protected void btnExceleAktar_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachement;filename=stokListe.xls");
            Response.ContentType = "application/excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter ht = new HtmlTextWriter(sw);
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
            {
                tableCell.Style["background-color"] = "#A55129";
            }
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                gridViewRow.BackColor = System.Drawing.Color.White;
                foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
                {
                    gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
                }
            }
            GridView1.RenderControl(ht);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void btnWordeAktar_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachement;filename=stokListe.doc");
            Response.ContentType = "application/word";
            StringWriter sw = new StringWriter();
            HtmlTextWriter ht = new HtmlTextWriter(sw);
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
            foreach (TableCell tableCell in GridView1.HeaderRow.Cells)
            {
                tableCell.Style["background-color"] = "#A55129";
            }
            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {
                gridViewRow.BackColor = System.Drawing.Color.White;
                foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
                {
                    gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
                }
            }
            GridView1.RenderControl(ht);
            Response.Write(sw.ToString());
            Response.End();
        }
    }
}