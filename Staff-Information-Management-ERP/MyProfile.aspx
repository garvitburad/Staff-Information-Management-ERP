<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Faculty_Information_Management.FacultyBio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">


       <table>
           <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label1" runat="server" Text="Registration No."></asp:Label>
               </td>
               <td></td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox1" runat="server" Width="540px"></asp:TextBox>
                   <br />
                   <br />
               </td>
            </tr>
          
         
           <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
               </td>
                <td></td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox2" runat="server" Width="539px"></asp:TextBox>
                   <br />
                   <br />
               </td>
           </tr>
           
        
           <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Email "></asp:Label>
               </td>
                <td></td>
               <td class="auto-style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="539px"></asp:TextBox>
                    <br />
                    <br />
               </td>
           </tr>
          
           <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Contact No."></asp:Label>
               </td>
                <td>
                    <br />
               </td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox4" runat="server" Width="539px"></asp:TextBox>
                   <br />
                   <br />
               </td>
           </tr>
           
           <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label5" runat="server" Text="Qualifications"></asp:Label>
               </td>
                <td>
                    <br />
               </td>
               <td class="auto-style1">
                    <asp:TextBox ID="TextBox5" runat="server" Width="539px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
               </td>
           </tr>
           

            <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Subjects Taught"></asp:Label>
               </td>
                 <td>
                     <br />
                </td>
               <td class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="540px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
               </td>
           </tr>
           

            <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Labs Taken"></asp:Label>
               </td>
                 <td>
                     <br />
                </td>
               <td class="auto-style1">
                    <asp:TextBox ID="TextBox7" runat="server" Width="540px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
               </td>
           </tr>
          

            <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label8" runat="server" Text="Achievements"></asp:Label>
               </td>
                 <td>
                     <br />
                </td>
               <td class="auto-style1">
                    <asp:TextBox ID="TextBox11" runat="server" Width="540px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
               </td>
           </tr>


            <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label9" runat="server" Text="Papers Presented"></asp:Label>
               </td>
                 <td>
                     <br />
                </td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox8" runat="server" Height="24px" Width="540px" TextMode="MultiLine"></asp:TextBox>
                   <br />
                   <br />
               </td>
           </tr>


            <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Interests"></asp:Label>
               </td>
                 <td>
                     <br />
                </td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox9" runat="server" Width="540px" TextMode="MultiLine"></asp:TextBox>
                   <br />
                   <br />
               </td>
           </tr>


            <tr>
               <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Languages or"></asp:Label>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Technologies known"></asp:Label>
               </td>
                 <td>
                     &nbsp;</td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox12" runat="server" Width="540px" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>

            <tr>
               <td class="auto-style2">
                   <asp:Label ID="Label11" runat="server" Text="Teaching From"></asp:Label>
               </td>
                 <td>
                     <br />
                     <br />
                </td>
               <td class="auto-style1">
                   <asp:TextBox ID="TextBox10" runat="server" Width="540px"></asp:TextBox>
                   <br />
                   <br />
               </td>
           </tr>
          <tr>
              <td class="auto-style2"></td>
              <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
              <td></td>
          </tr>
         
       </table>
        <table>
            <tr>
                <td></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update/Edit Details" OnClick="Button1_Click" /></td>
            </tr>
        </table>

   
    </form>

    

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <style type="text/css">
        .auto-style1 {
            width: 697px;
        }
        .auto-style2 {
            width: 177px;
        }
    </style>
</asp:Content>

