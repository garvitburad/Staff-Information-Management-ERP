using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Faculty_Information_Management
{
    public partial class FacultyBio : System.Web.UI.Page
    {
        string email = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*  Response.Write("<script>" + Session["email"] + "</script>");
               bool iftr=false;
               try
               {
                  iftr = Convert.ToBoolean(Session["email"]);
               }
               catch(Exception)
                   {
                       Response.Write(Session["email"]);
                       Response.Write("<script>" + Session["email"] + "</script>");
                   }
               if (!iftr)
               {
                   //Response.Redirect("Login.aspx");
                   Response.Write("<script>" + Session["email"] + "</script>");
               }
               else
               {
                   if (iftr)
                   { */
            email = Session["email"].ToString();
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string query = "SELECT * FROM FaculltyBio WHERE email='" + email + "'";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(query, con);
            SqlDataReader reader = cmd1.ExecuteReader();
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            
            /*  sda.Fill(dt);
              ListView1.DataSourceID = ""; // Only This Line is Extra 
               ListView1.DataSource = dt;
               ListView1.DataBind();   */


            //Displaying Subject data in the text box


            SqlConnection conSub = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string querySub = "SELECT * FROM Subjects WHERE email='" + email + "'";
            conSub.Open();
            SqlCommand cmdSub = new SqlCommand(querySub, conSub);
            SqlDataReader readerSub = cmdSub.ExecuteReader();
           


            //DataBase Qualification

            SqlConnection conQualification = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string queryQualification = "SELECT * FROM Qualifications WHERE email='" + email + "'";

            conQualification.Open();
            SqlCommand cmdQualification = new SqlCommand(queryQualification, conQualification);
            SqlDataReader readerQualification = cmdQualification.ExecuteReader();
           

            //DataBase Labs

            SqlConnection conLabs = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string queryLabs = "SELECT * FROM Labs WHERE email='" + email + "'";

            conLabs.Open();
            SqlCommand cmdLabs = new SqlCommand(queryLabs, conLabs);
            SqlDataReader readerLabs = cmdLabs.ExecuteReader();
           
            //Databse Languages
            SqlConnection conLanguages = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            string queryLanguages = "SELECT * FROM Languages WHERE email='" + email + "'";

            conLanguages.Open();
            SqlCommand cmdLanguages = new SqlCommand(queryLanguages, conLanguages);
            SqlDataReader readerLanguages = cmdLanguages.ExecuteReader();
            


            if (reader.Read())
            {
                TextBox1.Text = reader["ID"].ToString();
                TextBox2.Text = reader["name"].ToString();
                TextBox3.Text = reader["email"].ToString();
                TextBox4.Text = reader["contact"].ToString();
                TextBox8.Text = reader["papers"].ToString();
                TextBox9.Text = reader["interests"].ToString();
                TextBox10.Text = reader["experience"].ToString();
                TextBox11.Text = reader["achievements"].ToString();

                reader.Close();
            }

            if (readerSub.Read())
            {
                string[] SubArr = new string[100];
                Int32 i = 0;
                while (readerSub.Read())
                {

                    SubArr[i] = readerSub["Subject"].ToString();

                    i++;
                }
                foreach (String item in SubArr)
                {

                    TextBox6.Text += item + ",";


                }
                string SubFinal = TextBox6.Text;
                string SubTrim = SubFinal.TrimEnd(new Char[] { ',', '*', '.' });
                TextBox6.Text = SubTrim;

                readerSub.Close();
            }

            //qualification
            if (readerQualification.Read())
            {
                string[] QualificationArr = new string[100];
                Int32 i = 0;
                while (readerQualification.Read())
                {

                    QualificationArr[i] = readerQualification["Qualification"].ToString();

                    i++;

                }
                foreach (String item in QualificationArr)
                {

                    TextBox5.Text += item + ",";


                }
                string QualificationFinal = TextBox5.Text;
                string QualificationTrim = QualificationFinal.TrimEnd(new Char[] { ',', '*', '.' });
                TextBox5.Text = QualificationTrim;

                readerQualification.Close();
            }




            if (readerLabs.Read())
            {
                string[] LabArr = new string[20];
                Int32 i = 0;
                while (readerLabs.Read())
                {

                    LabArr[i] = readerLabs["Lab"].ToString();
                    //   TextBox7.Text = readerLabs["Lab"].ToString();
                    i++;
                    //  TextBox7.Text = ",";
                }
                foreach (String item in LabArr)
                {

                    TextBox7.Text += item + ",";


                }
                string LabFinal = TextBox7.Text;
                string LabTrim = LabFinal.TrimEnd(new Char[] { ',', '*', '.' });
                TextBox7.Text = LabTrim;

                readerLabs.Close();
            }

            if (readerLanguages.Read())
            {
                string[] LanguagesArr = new string[20];
                Int32 i = 0;
                while (readerLanguages.Read())
                {

                    LanguagesArr[i] = readerLanguages["Languages"].ToString();

                    i++;
                }
                foreach (String item in LanguagesArr)
                {

                    TextBox12.Text += item + ",";


                }
                string LanguagesFinal = TextBox12.Text;
                string LanguagesTrim = LanguagesFinal.TrimEnd(new Char[] { ',', '*', '.' });
                TextBox12.Text = LanguagesTrim;
                readerLanguages.Close();

            }




        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            String ID = TextBox1.Text;
           String name= TextBox2.Text ;
           String email1 = TextBox3.Text;
           String contact= TextBox4.Text ;
          String papers =TextBox8.Text ;
           String interests= TextBox9.Text;
           String experience= TextBox10.Text ;
           String achievements= TextBox11.Text ;
            //faculltybio details ends here
           String subjects = TextBox6.Text;
           String qualifications = TextBox5.Text;
           String labs = TextBox7.Text;
           String languages = TextBox12.Text;

           String[] qualificationsSplit = Regex.Split(qualifications, ",");
           String[] SubjectsSplit = Regex.Split(subjects, ",");
           String[] LabsSplit = Regex.Split(labs, ",");
           String[] LanguagesSplit = Regex.Split(languages, ",");

           //first query for faculltybio table
           string query = "Update FaculltyBio SET ID='" + ID + "',name='" + name + "',contact='" + contact + "',achievements='" + achievements + "',papers='" + papers + "',interests='" + interests + "',experience='" + experience + "'WHERE email='" + email + "'";
           SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
            con.Open();
           SqlCommand cmd = new SqlCommand(query, con);
           cmd.ExecuteNonQuery();
           con.Close();


            //for subjects
           foreach (string objSub in SubjectsSplit)
           {

               SqlConnection conSub = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
               string querySub = "update Subjects set Subject='" + objSub + "' where email='" + email1 + "'";
               conSub.Open();
               SqlCommand cmdSub = new SqlCommand(querySub, conSub);
               cmdSub.ExecuteNonQuery();
               conSub.Close();
           }

           //For splitting Labs
           foreach (string objLab in LabsSplit)
           {

               SqlConnection conLabs = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
               string queryLabs = "update Labs set lab='"+objLab+"' where email='"+email1+"'";
               conLabs.Open();
               SqlCommand cmdLabs = new SqlCommand(queryLabs, conLabs);
               cmdLabs.ExecuteNonQuery();
               conLabs.Close();
           }

           //For splitting Qualifications
           foreach (string objQualifications in qualificationsSplit)
           {

               SqlConnection conQualifications = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
               string queryQualifications = "update Qualifications set Qualification='" + objQualifications + "' where email='" + email1 + "'";
               conQualifications.Open();
               SqlCommand cmdQualifications = new SqlCommand(queryQualifications, conQualifications);
               cmdQualifications.ExecuteNonQuery();
               conQualifications.Close();
           }


           //For splitting Languages

           foreach (string objLanguages in LanguagesSplit)
           {

               SqlConnection conLanguages = new SqlConnection("Data Source=(LocalDB)\\v11.0;Initial Catalog=FacultyManagement;Integrated Security=True");
               string queryLanguages = "update Languages set languages='" + objLanguages + "' where email='" + email1 + "'";
               conLanguages.Open();
               SqlCommand cmdLanguages = new SqlCommand(queryLanguages, conLanguages);
               cmdLanguages.ExecuteNonQuery();
               conLanguages.Close();
           }

           Session["email"] = email;
           Response.Write("<script>alert('Data Updated Successfully.Thank You!!')</script>");
           Response.Redirect("MyProfile.aspx");
         //  Response.Redirect("MyProfile.aspx");
            /*string name = TextBox3.Text;
            string email = TextBox4.Text;
            string phone = TextBox5.Text;
            string registration = TextBox6.Text;
            string department = TextBox7.Text;
            string profession = TextBox8.Text;
            string address = TextBox9.Text;
            string city = TextBox10.Text;
            string query = "Update Registration_details SET Name='" + name + "',Email_id='" + email + "',Phone_no='" + phone + "',Registration_no='" + registration + "',Department='" + department + "',Address='" + address + "',City='" + city + "'WHERE Email_id='" + email1 + "'";
            Response.Write(name);
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-K839A0U\\SQLEXPRESS;Initial Catalog=Student_Profile;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data Updated Successfully.Thank You!!')</script>");
            Session["email"] = email;
            Response.Redirect("grid_display_faculty.aspx");
            */



        }

        /*  else 
          {
              Response.Write("Congrats you have done it with distinction");
          }
             */
    }

}



