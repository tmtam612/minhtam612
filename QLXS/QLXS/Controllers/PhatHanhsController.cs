using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLXS.Models;

namespace QLXS.Controllers
{
    public class PhatHanhsController : Controller
    {
        private QLVESOEntities db = new QLVESOEntities();

        // GET: PhatHanhs
        public ActionResult Index()
        {
            var phatHanhs = db.PhatHanhs.Include(p => p.DaiLy).Include(p => p.LoaiVeso).Where(p=>p.Flag==true);
            return View(phatHanhs.ToList());
        }

        // GET: PhatHanhs/Details/5
        public ActionResult Details(int? id,string madaily,string maveso)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhatHanh phatHanh = db.PhatHanhs.Find(id,madaily,maveso);
            if (phatHanh == null)
            {
                return HttpNotFound();
            }
            return View(phatHanh);
        }

        // GET: PhatHanhs/Create
        public ActionResult Create()
        {
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy");
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVesoes, "MaLoaiVeSo", "Tinh");
            return View();
        }

        // POST: PhatHanhs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,MaDaiLy,MaLoaiVeSo,SoLuong,NgayNhan,SLBan,DoanhThuDPH,HoaHong,TienThanhToan,Flag")] PhatHanh phatHanh)
        {
            if (ModelState.IsValid)
            {
                var result = db.PhatHanhs.Count(s => s.MaDaiLy == phatHanh.MaDaiLy);
                if (result > 3) result = 3;
                if (result == 3)
                {
                    var result1 = db.PhatHanhs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayNhan).Select(s => s.SLBan *1.0 / s.SoLuong).Take(3).Sum();
                    var result2 = db.SoLuongDKs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s=>s.NgayDK).Select(s=>s.SoLuongDK1*1.0).Take(1).Sum();
                    var sl = (result1 / result) * result2;
                    phatHanh.SoLuong = Convert.ToInt32(sl);
                }
                if(result==2)
                {
                    var result1 = db.PhatHanhs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayNhan).Select(s => s.SLBan * 1.0 / s.SoLuong).Take(2).Sum();
                    var result2 = db.SoLuongDKs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayDK).Select(s => s.SoLuongDK1 * 1.0).Take(1).Sum();
                    var sl = result1 / result * result2;
                    phatHanh.SoLuong = Convert.ToInt32(sl);
                }
                if(result==1)
                {
                    var result1 = db.PhatHanhs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayNhan).Select(s => s.SLBan * 1.0 / s.SoLuong).Take(1).Sum();
                    var result2 = db.SoLuongDKs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayDK).Select(s => s.SoLuongDK1 * 1.0).Take(1).Sum();
                    var sl = result1 / result * result2;
                    phatHanh.SoLuong = Convert.ToInt32(sl);
                }
                if(result==0)
                {
                    var result2 = db.SoLuongDKs.Where(s => s.MaDaiLy == phatHanh.MaDaiLy).OrderByDescending(s => s.NgayDK).Select(s => s.SoLuongDK1 * 1.0).Take(1).Sum();
                    phatHanh.SoLuong = Convert.ToInt32(result2);
                }
                phatHanh.Flag = true;
                db.PhatHanhs.Add(phatHanh);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", phatHanh.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVesoes, "MaLoaiVeSo", "Tinh", phatHanh.MaLoaiVeSo);
            return View(phatHanh);
        }

        // GET: PhatHanhs/Edit/5
        public ActionResult Edit(int? id,string madaily,string maveso)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhatHanh phatHanh = db.PhatHanhs.Find(id,madaily,maveso);
            if (phatHanh == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", phatHanh.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVesoes, "MaLoaiVeSo", "Tinh", phatHanh.MaLoaiVeSo);
            return View(phatHanh);
        }

        // POST: PhatHanhs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,MaDaiLy,MaLoaiVeSo,SoLuong,NgayNhan,SLBan,DoanhThuDPH,HoaHong,TienThanhToan,Flag")] PhatHanh phatHanh)
        {
            if (ModelState.IsValid)
            {
                phatHanh.DoanhThuDPH = phatHanh.SLBan * 10000;
                phatHanh.TienThanhToan = phatHanh.DoanhThuDPH - (phatHanh.HoaHong * phatHanh.DoanhThuDPH);
                db.Entry(phatHanh).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", phatHanh.MaDaiLy);
            ViewBag.MaLoaiVeSo = new SelectList(db.LoaiVesoes, "MaLoaiVeSo", "Tinh", phatHanh.MaLoaiVeSo);
            return View(phatHanh);
        }

        // GET: PhatHanhs/Delete/5
        public ActionResult Delete(int? id,string madaily,string maveso)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhatHanh phatHanh = db.PhatHanhs.Find(id,madaily,maveso);
            if (phatHanh == null)
            {
                return HttpNotFound();
            }
            return View(phatHanh);
        }

        // POST: PhatHanhs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id,string madaily,string maveso)
        {
            PhatHanh phatHanh = db.PhatHanhs.Find(id,madaily,maveso);
            phatHanh.Flag = false;
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
    }
}
