using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model.DbConection;

namespace Model.DAO
{
    public class UserDAO
    {
        DBContext db = new DBContext();
        public List<User> ListUser()
        {
            try
            {
                return db.Users.Where(x => x.Status == "A").ToList();
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
