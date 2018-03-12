using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;
namespace Faculty_Information_Management
{
    public partial class Register : System.Web.UI.Page
    {
        string email = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            email = Session["email"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from FaculltyBio where email='" + email + "' ", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("MyProfile.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string RegID = TextBox1.Text;
            string Name = TextBox2.Text;
            string Email = Session["email"].ToString();
            string Contact = TextBox4.Text;
            string Subjects = TextArea1.InnerText;
            string[] SubjectsSplit = Regex.Split(Subjects, ",");
            string Labs = TextArea2.InnerText;
            string[] LabsSplit = Regex.Split(Labs, ",");
            string Achievements = TextArea3.InnerText;
            string Papers = TextArea4.InnerText;
            string Interests = TextArea5.InnerText;
            string Experience = TextBox5.Text;
            string Qualification = TextArea6.InnerText;
            string[] QualificationsSplit = Regex.Split(Qualification, ",");
            string Languages = TextArea7.InnerText;
            string[] LanguagesSplit = Regex.Split(Languages, ",");

            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string query = "INSERT INTO FaculltyBio(ID,name,email,contact,achievements,papers,interests,experience) VALUES('" + RegID + "','" + Name + "','" + Email + "','" + Contact + "','" + Achievements + "','" + Papers + "','" + Interests + "','" + Experience + "')";

            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            //For splitting Subjects
            foreach (string objSub in SubjectsSplit)
            {

                SqlConnection conSub = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string querySub = "insert into Subjects(email,Subject) values ('" + Email + "','" + objSub + "')";
                conSub.Open();
                SqlCommand cmdSub = new SqlCommand(querySub, conSub);
                cmdSub.ExecuteNonQuery();
                conSub.Close();
            }

            //For splitting Labs
            foreach (string objLab in LabsSplit)
            {

                SqlConnection conLabs = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryLabs = "insert into Labs(email,Lab) values ('" + Email + "','" + objLab + "')";
                conLabs.Open();
                SqlCommand cmdLabs = new SqlCommand(queryLabs, conLabs);
                cmdLabs.ExecuteNonQuery();
                conLabs.Close();
            }

            //For splitting Qualifications
            foreach (string objQualifications in QualificationsSplit)
            {

                SqlConnection conQualifications = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryQualifications = "insert into Qualifications(email,Qualification) values ('" + Email + "','" + objQualifications + "')";
                conQualifications.Open();
                SqlCommand cmdQualifications = new SqlCommand(queryQualifications, conQualifications);
                cmdQualifications.ExecuteNonQuery();
                conQualifications.Close();
            }


            //For splitting Languages

            foreach (string objLanguages in LanguagesSplit)
            {

                SqlConnection conLanguages = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
                string queryLanguages = "insert into Languages(email,Languages) values ('" + Email + "','" + objLanguages + "')";
                conLanguages.Open();
                SqlCommand cmdLanguages = new SqlCommand(queryLanguages, conLanguages);
                cmdLanguages.ExecuteNonQuery();
                conLanguages.Close();
            }





        }

    }
}
