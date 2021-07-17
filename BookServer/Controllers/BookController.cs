using BookServer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BookServer.Controllers
{
    public class BookController : ApiController
    {
        // Lấy toàn bộ book
        [HttpGet]
        public List<Book> GetBookLists()
        {
            DBBookDataContext db = new DBBookDataContext();
            return db.Books.ToList();
        }


        // Lấy 1 book theo khóa chính nào đó
        [HttpGet]
        public Book GetBook(int id)
        {
            DBBookDataContext db = new DBBookDataContext();
            return db.Books.FirstOrDefault(x => x.id == id);
        }

        [HttpPost]
        public bool InsertNewBook(Book obj)
        {
            try
            {
                DBBookDataContext db = new DBBookDataContext();
                Book book = new Book();
                book.name = obj.name;
                book.type = obj.type;
                book.price = int.Parse(obj.price.ToString());
                db.Books.InsertOnSubmit(book);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        [HttpPut]
        public bool UpdateBook(Book b)
        {
            try
            {
                DBBookDataContext db = new DBBookDataContext();
                //lấy Book tồn tại ra
                Book book = db.Books.FirstOrDefault(x => x.id == b.id);
                if (book == null) return false;//không tồn tại false
                book.name = b.name;
                book.type = b.type;
                book.price = b.price;
                db.SubmitChanges();//xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }

        [HttpDelete]
        public bool DeleteBook(string id)
        {
            DBBookDataContext db = new DBBookDataContext();
            //lấy food tồn tại ra
            Book book = db.Books.FirstOrDefault(x => x.id == int.Parse(id));
            if (book == null) return false;
            db.Books.DeleteOnSubmit(book);
            db.SubmitChanges();
            return true;
        }
    }
}
