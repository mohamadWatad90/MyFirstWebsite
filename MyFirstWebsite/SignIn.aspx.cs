using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MyFirstWebsite
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            this.lblTime.ForeColor = System.Drawing.Color.Blue;
            this.lblTime.BackColor = System.Drawing.Color.Beige;
            this.lblTime.Text = DateTime.Now.ToString();

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //Admin@admin.com
            //admin123456
            string email, password;
            
            email=this.txtEmail.Text;   
            password=this.txtPassword.Text;

            if (email == "Admin@admin.com" && password == "admin123456")
                Response.Redirect("MyAccount.aspx");
            else
            {
                this.lblMsg.Visible = true;
                this.lblMsg.ForeColor = Color.Red;
                this.lblMsg.Text = "Wrong Data,Try Again please!!!!!!!";
               
            }    
                
        }
    }
}