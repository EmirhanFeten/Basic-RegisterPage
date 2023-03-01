using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RegisterPage
{
    public class RegisterCRUD
    {
        Db db = new Db();
        public bool addRegister(Register register)
        {
            int count;
            bool answer = true;
            db.open();
            SqlCommand command = new SqlCommand("insert into registertbl values(@a,@b,@c,@d,@e)", db.connection);
            command.Parameters.AddWithValue("@a", register.FName);
            command.Parameters.AddWithValue("@b", register.LName);
            command.Parameters.AddWithValue("@c", register.UsName);
            command.Parameters.AddWithValue("@d", register.Mail);
            command.Parameters.AddWithValue("@e", register.Psw);
            count = command.ExecuteNonQuery();
            if (count == 0)
            {
                answer = false;
            }
            db.close();
            return answer;
        }
    }
}