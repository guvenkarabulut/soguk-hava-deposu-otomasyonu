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
    public partial class aracdisari : System.Web.UI.Page
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
        protected void btnAra_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedValue=="Plaka")
            {
                string sorgu = "SELECT * FROM arac where aracPlaka LIKE'%"+txt_Arama.Value+"%' ";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();

            }

            if (DropDownList1.SelectedValue == "Marka")
            {
                string sorgu = "SELECT * FROM arac where aracMarka LIKE'%" + txt_Arama.Value + "%' ";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Seçiniz")
            {
                string sorgu = "SELECT * FROM arac ";
                GridView1.DataSource = sorgucalistir(sorgu);
                GridView1.DataBind();
            }
        }



        protected void btnExceleAktar_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachement;filename=aracListe.xls");
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
            Response.AppendHeader("content-disposition", "attachement;filename=aracListe.doc");
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