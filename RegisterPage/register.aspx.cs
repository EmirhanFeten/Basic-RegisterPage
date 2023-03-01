using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Register register = new Register();
            RegisterCRUD registerCRUD = new RegisterCRUD();
            register.FName = TextBox1.Text;
            register.LName = TextBox2.Text;
            register.UsName = TextBox3.Text;
            register.Mail = TextBox4.Text;
            register.Psw = TextBox5.Text;
            bool answ = registerCRUD.addRegister(register);
            if (answ == true)
            {
                Label1.Text = "Registration Successful";
            }

        }
    }
}