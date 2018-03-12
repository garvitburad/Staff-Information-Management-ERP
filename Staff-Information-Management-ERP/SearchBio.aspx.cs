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
    public partial class SearchBio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedValue = rblist1.SelectedValue;
            if(selectedValue=="1")
            {   
                string email = TextBox1.Text;
                 Session["email"]=email;
                 SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                 string query = "SELECT * FROM FaculltyBio WHERE email='" + email + "'";

                 con.Open();
                 SqlCommand cmd1 = new SqlCommand(query, con);
                 SqlDataReader reader = cmd1.ExecuteReader();
                 SqlDataAdapter sda = new SqlDataAdapter(query, con);
                 DataTable dt = new DataTable();
             
               /*  while (reader.Read())
                 {
                     // get the results of each column
                     string contact = (string)reader["ContactName"];
                     string company = (string)reader["CompanyName"];
                     string city = (string)reader["City"];

                     // print out the results
                    Response.Write( contact);
                    Response.Write( city);
                    Response.Write( company);
                   
                 }*/



                 SqlConnection conSub = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                 string querySub = "SELECT * FROM Subjects WHERE email='" + email + "'";
                 conSub.Open();
                 SqlCommand cmdSub = new SqlCommand(querySub, conSub);
                 SqlDataReader readerSub = cmdSub.ExecuteReader();
            
            }
            if (selectedValue == "2")
            {
                string subjects = TextBox1.Text;
                Session["Subjects"] = subjects;

                SqlConnection conSub = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string querySub = "SELECT * FROM Subjects WHERE Subject='" + subjects + "'";
                conSub.Open();
                SqlCommand cmdSub = new SqlCommand(querySub, conSub);
                SqlDataReader readerSub = cmdSub.ExecuteReader();

             /*   while (readerSub.Read())
                {
                    // get the results of each column
                    string email = (string)readerSub["email"];
                    string subject = (string)readerSub["Subject"];


                    // print out the results
                    Response.Write("<span id='Label1' style='height:16px;width:120px;Z-INDEX: 102; LEFT: 230px; POSITION: absolute; TOP: 420px'>Its not at the top left corner!</span>");
                    Response.Write("Email  :" + email);
                    Response.Write("Subject :" + subject);
                }
                conSub.Close();*/
            }
            if (selectedValue == "3")
            {
                string Lab = TextBox1.Text;
                Session["Labs"] = Lab;
                SqlConnection conLabs = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryLabs = "SELECT * FROM Labs WHERE Lab='" + Lab + "'";

                conLabs.Open();
                SqlCommand cmdLabs = new SqlCommand(queryLabs, conLabs);
                SqlDataReader readerLabs = cmdLabs.ExecuteReader();

            }
            if (selectedValue == "4")
            {
                string Language = TextBox1.Text;
                Session["Languages"]= Language;
                SqlConnection conLanguages = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryLanguages = "SELECT * FROM Languages WHERE languages='" + Language + "'";

                conLanguages.Open();
                SqlCommand cmdLanguages = new SqlCommand(queryLanguages, conLanguages);
                SqlDataReader readerLanguages = cmdLanguages.ExecuteReader();
            

            }
            if (selectedValue == "5")
            {
                string qualification = TextBox1.Text;
                Session["Qualifications"] =qualification;
                SqlConnection conQualification = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryQualification = "SELECT * FROM Qualifications WHERE Qualification='" + qualification + "'";

                conQualification.Open();
                SqlCommand cmdQualification = new SqlCommand(queryQualification, conQualification);
                SqlDataReader readerQualification = cmdQualification.ExecuteReader();
           

            }


        }
      

    }
}

