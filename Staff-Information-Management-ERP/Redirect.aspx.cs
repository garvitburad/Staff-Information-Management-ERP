using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Faculty_Information_Management
{
    public partial class Redirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Response.Redirect("MyProfile.aspx");
            string email = Request.QueryString["email"];
            string domain = Request.QueryString["domain"];




            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from LoginTable where username='" + email + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["email"] = email;
                Response.Redirect("MyProfile.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                Response.Write("<script>alert('Please enter valid Username and Password');window.location='https://www.google.com/accounts/Logout'; startLogoutPolling();</script>");
            }
            
                  
                //Response.Write(domain);

                if (domain == "poornima.org")
                {
                   // Response.Write("Hello Sir");
                   // Response.Write("<script>window.location='MyProfile.aspx';</script>");
                    Response.Redirect("MyProfile.aspx");
                }
                else
                {
                    //Response.Write("HIHihih");
                  //  Response.Write("<script>alert('Error');window.location='https://www.google.com/accounts/Logout'; startLogoutPolling();</script>");
                    Response.Redirect("Login.aspx");
                   
                }
            }
        }
}