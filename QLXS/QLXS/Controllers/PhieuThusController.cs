using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;
using PagedList;
namespace QLXS.Controllers
{
    public class PhieuThusController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: PhieuThus
        public ActionResult Index(string searchString, int? page)
        {
            var phieuthu = from d in db.PhieuThus where d.TinhTrang == true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    phieuthu = phieuthu.Where(x => x.Ngay.Value == dateTime).Where(x => x.TinhTrang == true);
                }
                catch
                {
                    phieuthu = phieuthu.Where(x => x.MaDaiLy.Contains(searchString)||x.MaPhieuThu.Contains(searchString) || x.DaiLy.Ten.Contains(searchString)).Where(x => x.TinhTrang == true);
                }

            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(phieuthu.OrderBy(i=>i.MaPhieuThu).ToPagedList(pageNumber,pageSize));
        }

        // GET: PhieuThus/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuThu phieuThu = db.PhieuThus.Find(id);
            if (phieuThu == null)
            {
                return HttpNotFound();
            }
            return View(phieuThu);
        }

        // GET: PhieuThus/Create
        public ActionResult Create()
        {
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten");
            return View();
        }

        // POST: PhieuThus/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaPhieuThu,MaDaiLy,Ngay,TienThanhToan,SoTienThuDuoc,CongNo,HoaHong,GiaVe,TinhTrang")] PhieuThu phieuThu)
        {
            if (ModelState.IsValid)
            {
                var result = db.PhieuThus.Count() + 1;
                string x = "PT";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                phieuThu.MaPhieuThu = x;
                DateTime dateTime = Convert.ToDateTime(phieuThu.Ngay);
                DateTime date = dateTime.AddDays(-1);
                var model = db.PhanPhois.Where(s => s.MaDaiLy == phieuThu.MaDaiLy && s.NgayPhanPhoi.Value == date && s.TinhTrang == true).Select(s => s.SoLuongBan).Sum();
                Decimal temp = Convert.ToDecimal(model);
                var temp2 = (1 - phieuThu.HoaHong / 100);
                Decimal hoahong = Convert.ToDecimal(temp2);
                phieuThu.TienThanhToan = temp * phieuThu.GiaVe * hoahong;
                if(phieuThu.TienThanhToan<phieuThu.SoTienThuDuoc)
                {
                    SetAlert("Tiền Thu Được Nhiều Hơn Tiền Thanh Toán Dự Kiến", "warning");
                    return RedirectToAction("Create");
                }
                else
                {
                    phieuThu.CongNo = phieuThu.TienThanhToan - phieuThu.SoTienThuDuoc;
                }
                
                phieuThu.TinhTrang = true;
                db.PhieuThus.Add(phieuThu);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phieuThu.MaDaiLy);
            return View(phieuThu);
        }

        private void SetAlert(string message, string type)
        {
            TempData["AlertMessage"] = message;
            if (type == "success")
            {
                TempData["AlertType"] = "alert-success";
            }
            else if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";

            }
            else if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";

            }
        }

        // GET: PhieuThus/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuThu phieuThu = db.PhieuThus.Find(id);
            if (phieuThu == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phieuThu.MaDaiLy);
            return View(phieuThu);
        }

        // POST: PhieuThus/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaPhieuThu,MaDaiLy,Ngay,TienThanhToan,SoTienThuDuoc,CongNo,HoaHong,GiaVe,TinhTrang")] PhieuThu phieuThu)
        {
            if (ModelState.IsValid)
            {
                db.Entry(phieuThu).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "Ten", phieuThu.MaDaiLy);
            return View(phieuThu);
        }

        // GET: PhieuThus/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuThu phieuThu = db.PhieuThus.Find(id);
            if (phieuThu == null)
            {
                return HttpNotFound();
            }
            return View(phieuThu);
        }

        // POST: PhieuThus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            PhieuThu phieuThu = db.PhieuThus.Find(id);

            phieuThu.TinhTrang = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public decimal? DoanhThu(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            decimal? tong = 0;
            var model = db.PhieuThus.Where(x => x.TinhTrang == true&&x.Ngay.Value.Year== year).ToList();
            foreach (var item in model)
            {
                if(item.Ngay.Value.Month==i)
                {
                    tong = tong + item.TienThanhToan;
                }
            }
            return tong;
        }
        public decimal? TienThuDuoc(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            decimal? tong = 0;
            var model = db.PhieuThus.Where(x => x.TinhTrang == true && x.Ngay.Value.Year == year).ToList();
            foreach (var item in model)
            {
                if (item.Ngay.Value.Month == i)
                {
                    tong = tong + item.SoTienThuDuoc;
                }
            }
            return tong;
        }
        public decimal? CongNo(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            decimal? tong = 0;
            var model = db.PhieuThus.Where(x => x.TinhTrang == true && x.Ngay.Value.Year == year).ToList();
            foreach (var item in model)
            {
                if (item.Ngay.Value.Month == i)
                {
                    tong = tong + item.CongNo;
                }
            }
            return tong;
        }
        public int? vesophathanh(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            int? tong = 0;
            var model = db.PhanPhois.Where(x => x.TinhTrang == true && x.NgayPhanPhoi.Value.Year == year).ToList();
            foreach (var item in model)
            {
                if (item.NgayPhanPhoi.Value.Month == i)
                {
                    tong = tong + item.SoLuongGiao;
                }
            }
            return tong;
        }
        public int? vesodaban(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            int? tong = 0;
            var model = db.PhanPhois.Where(x => x.TinhTrang == true && x.NgayPhanPhoi.Value.Year == year).ToList();
            foreach (var item in model)
            {
                if (item.NgayPhanPhoi.Value.Month == i)
                {
                    tong = tong + item.SoLuongBan;
                }
            }
            return tong;
        }
        public decimal? tienchitra(int i)
        {
            DateTime dateTime = DateTime.Now;
            int year = dateTime.Year;
            decimal? tong = 0;
            var model = db.PhieuChis.Where(x => x.TinhTrang == true && x.Ngay.Value.Year == year).ToList();
            foreach (var item in model)
            {
                if (item.Ngay.Value.Month == i)
                {
                    tong = tong + item.TongTien;
                }
            }
            return tong;
        }
        public ActionResult ThongKe()
        {
            decimal?[] tienthanhtoan = new decimal?[13];
            decimal?[] sotienthuduoc = new decimal?[13];
            decimal?[] congno = new decimal?[13];
            decimal?[] tienchi = new decimal?[13];
            for(int i=1;i<=12;i++)
            {
                tienthanhtoan[i] = DoanhThu(i);
                sotienthuduoc[i] = TienThuDuoc(i);
                congno[i] = CongNo(i);
                tienchi[i] = tienchitra(i);
            }
            ViewBag.TienThanhToan = tienthanhtoan;
            ViewBag.SoTienThuDuoc = sotienthuduoc;
            ViewBag.CongNo = congno;
            ViewBag.TienChi = tienchi;
            return View();
        }
        public ActionResult ThongKeVeSo()
        {
            int?[] vesophathanh = new int?[13];
            int?[] vesothuve = new int?[13];
            int?[] vesodaban = new int?[13];
            for (int i = 1; i <= 12; i++)
            {
                vesophathanh[i] = this.vesophathanh(i);
                vesodaban[i] = this.vesodaban(i);
                vesothuve[i] = vesophathanh[i]-vesodaban[i];
            }
            ViewBag.VeSoPhatHanh = vesophathanh;
            ViewBag.VeSoThuVe = vesothuve;
            ViewBag.VeSoDaBan = vesodaban;
            return View();
        }
    }
}
