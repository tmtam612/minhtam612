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
    public class PhieuChisController : Controller
    {
        private QLVeSoEntities db = new QLVeSoEntities();

        // GET: PhieuChis
        public ActionResult Index(string searchString,int? page)
        {
            var phieuchi = from d in db.PhieuChis where d.TinhTrang == true select d;
            if (!String.IsNullOrEmpty(searchString))
            {
                page = 1;
                try
                {
                    DateTime dateTime = DateTime.ParseExact(searchString, "dd/MM/yyyy", null);
                    phieuchi = phieuchi.Where(x => x.Ngay.Value == dateTime).Where(x => x.TinhTrang == true);
                }
                catch
                {
                    phieuchi = phieuchi.Where(x =>x.MaPhieuChi.Contains(searchString)).Where(x => x.TinhTrang == true);
                }

            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(phieuchi.OrderBy(i => i.MaPhieuChi).ToPagedList(pageNumber, pageSize));
        }

        // GET: PhieuChis/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuChi phieuChi = db.PhieuChis.Find(id);
            if (phieuChi == null)
            {
                return HttpNotFound();
            }
            return View(phieuChi);
        }

        // GET: PhieuChis/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: PhieuChis/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaPhieuChi,Ngay,TongTien,TinhTrang")] PhieuChi phieuChi)
        {
            if (ModelState.IsValid)
            {
                var result = db.PhieuChis.Count() + 1;
                string x = "PC";
                if (result < 10)
                {
                    x += "0" + result;
                }
                if (result > 10)
                {
                    x += result;
                }
                phieuChi.MaPhieuChi = x;
                phieuChi.TinhTrang = true;
                db.PhieuChis.Add(phieuChi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(phieuChi);
        }

        // GET: PhieuChis/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuChi phieuChi = db.PhieuChis.Find(id);
            if (phieuChi == null)
            {
                return HttpNotFound();
            }
            return View(phieuChi);
        }

        // POST: PhieuChis/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaPhieuChi,Ngay,TongTien,TinhTrang")] PhieuChi phieuChi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(phieuChi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(phieuChi);
        }

        // GET: PhieuChis/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PhieuChi phieuChi = db.PhieuChis.Find(id);
            if (phieuChi == null)
            {
                return HttpNotFound();
            }
            return View(phieuChi);
        }

        // POST: PhieuChis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            PhieuChi phieuChi = db.PhieuChis.Find(id);
            phieuChi.TinhTrang = false;
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
