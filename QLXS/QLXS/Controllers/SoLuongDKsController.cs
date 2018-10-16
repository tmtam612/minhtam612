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
    public class SoLuongDKsController : Controller
    {
        private QLVESOEntities db = new QLVESOEntities();

        // GET: SoLuongDKs
        public ActionResult Index()
        {
            var soLuongDKs = db.SoLuongDKs.Where(s=>s.Flag==true);
               
            return View(soLuongDKs.ToList());
        }

        // GET: SoLuongDKs/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SoLuongDK soLuongDK = db.SoLuongDKs.Find(id);
            if (soLuongDK == null)
            {
                return HttpNotFound();
            }
            return View(soLuongDK);
        }

        // GET: SoLuongDKs/Create
        public ActionResult Create()
        {
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy");
            return View();
        }

        // POST: SoLuongDKs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,MaDaiLy,NgayDK,SoLuongDK1,Flag")] SoLuongDK soLuongDK)
        {
            if (ModelState.IsValid)
            {
                var x = db.SoLuongDKs.Count()+1;
                var y = "DK";
                if (x < 10)
                {
                     y += "00" + x;
                }
                else if (x > 10 && x < 100)
                {
                     y += "0" + x;
                }
                else
                {
                     y +=   x;
                }
                soLuongDK.ID = y;
                soLuongDK.Flag = true;
                db.SoLuongDKs.Add(soLuongDK);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", soLuongDK.MaDaiLy);
            return View(soLuongDK);
        }

        // GET: SoLuongDKs/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SoLuongDK soLuongDK = db.SoLuongDKs.Find(id);
            if (soLuongDK == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", soLuongDK.MaDaiLy);
            return View(soLuongDK);
        }

        // POST: SoLuongDKs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,MaDaiLy,NgayDK,SoLuongDK1,Flag")] SoLuongDK soLuongDK)
        {
            if (ModelState.IsValid)
            {
                soLuongDK.Flag = true;
                db.Entry(soLuongDK).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaDaiLy = new SelectList(db.DaiLies, "MaDaiLy", "TenDaiLy", soLuongDK.MaDaiLy);
            return View(soLuongDK);
        }

        // GET: SoLuongDKs/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SoLuongDK soLuongDK = db.SoLuongDKs.Find(id);
            if (soLuongDK == null)
            {
                return HttpNotFound();
            }
            return View(soLuongDK);
        }

        // POST: SoLuongDKs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SoLuongDK soLuongDK = db.SoLuongDKs.Find(id);
            soLuongDK.Flag = false;
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
