using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SogukHavaDeposu
{
    public partial class calisanekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void temizle()
        {
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtTc.Text = "";
            txtCepTel.Text = "";
            txtIl.Text = "";
            txtIlce.Text = "";
            txtAdres.Text = "";
            dLGun.SelectedIndex = 0;
            dLAy.SelectedIndex = 0;
            dLYil.SelectedIndex = 0;
            dLCinsiyet.SelectedIndex = 0;
            dLPozisyon.SelectedIndex = 0;
            dLEgitim.SelectedIndex = 0;

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            if (txtAdres.Text != "" && txtMail.Text != "" && txtIl.Text != "" && txtIlce.Text != "" && txtAd.Text != "" && txtSoyad.Text != "" && txtTc.Text != "" && txtCepTel.Text != "" && dLGun.SelectedValue != "Seçiniz" && dLAy.SelectedValue != "Seçiniz" && dLYil.SelectedValue != "Seçiniz" && dLCinsiyet.SelectedValue != "Seçiniz" && dLPozisyon.SelectedValue != "Seçiniz" && dLEgitim.SelectedValue != "Seçiniz")
            {
                SogukHavaEntities vt = new SogukHavaEntities();
                calisanTablo c = new calisanTablo();
                c.calisanAd = txtAd.Text;
                c.calisanSoyad = txtSoyad.Text;
                c.calisanTCNo = txtTc.Text;
                c.calisanTel = txtCepTel.Text;
                c.calisanMail = txtMail.Text;
                c.calisanDogumTarihi = dLGun.SelectedValue + "-" + dLAy.SelectedValue + "-" + dLYil.SelectedValue;
                c.calisanCinsiyet = dLCinsiyet.SelectedValue;
                c.calisanPozisyon = dLPozisyon.SelectedValue;
                c.calisanEgitimDurumu = dLEgitim.SelectedValue;
                c.calisanIl = txtIl.Text;
                c.calisanIlce = txtIlce.Text;
                c.calisanAdres = txtAdres.Text;
                c.aktifMi = true;
                vt.calisanTablo.Add(c);
                vt.SaveChanges();
                temizle();
                
            }
            else
            {
                Response.Write("<script>confirm('Lütfen Boş Alan Bırakmayınız')</script>");

            }
        }
    }
}