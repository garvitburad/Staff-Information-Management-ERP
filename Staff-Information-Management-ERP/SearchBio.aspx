<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchBio.aspx.cs" Inherits="Faculty_Information_Management.SearchBio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <







</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        Search By
        <br />
        <br />
         <asp:RadioButtonList ID="rblist1" runat="server" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="1" Height="16px" Width="811px">

    <asp:ListItem Text ="Email    " Value="1" />
    <asp:ListItem Text ="Subjects Taught  " Value="2" />
    <asp:ListItem Text ="Labs Taken  " Value="3" />
    <asp:ListItem Text ="Languages or Technologies Known" Value="4" />

             <asp:ListItem Value="5">Qualifications</asp:ListItem>

    </asp:RadioButtonList>
        <style type="text/css">
            .RadioButtonList {
                list-style: none;
                margin: 20px;
                padding: 20px;
            }

                .RadioButtonList.horizontal li {
                    display: inline;
                }

                .RadioButtonList label {
                    display: inline;
                }
        </style>

        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="746px">Enter Keyword Here</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        <br />
        <br />



        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
<br />contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                papers:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                experience:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                contact:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
                achievements:
                <asp:TextBox ID="achievementsTextBox" runat="server" Text='<%# Bind("achievements") %>' />
                <br />
                papers:
                <asp:TextBox ID="papersTextBox" runat="server" Text='<%# Bind("papers") %>' />
                <br />
                interests:
                <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>' />
                <br />
                experience:
                <asp:TextBox ID="experienceTextBox" runat="server" Text='<%# Bind("experience") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                contact:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
                achievements:
                <asp:TextBox ID="achievementsTextBox" runat="server" Text='<%# Bind("achievements") %>' />
                <br />
                papers:
                <asp:TextBox ID="papersTextBox" runat="server" Text='<%# Bind("papers") %>' />
                <br />
                interests:
                <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>' />
                <br />
                experience:
                <asp:TextBox ID="experienceTextBox" runat="server" Text='<%# Bind("experience") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
<br />contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                papers:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                experience:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
<br />contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                papers:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                experience:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT [ID], [name], [email], [contact], [achievements], [papers], [interests], [experience] FROM [FaculltyBio] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>



        <br />
        <br />
        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                Subject:
                <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />Subject:
                <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Subject:
                <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT [email], [Subject] FROM [Subjects] WHERE ([Subject] LIKE '%' + @Subject + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="Subject" SessionField="Subjects" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Lab:
                <asp:Label ID="LabLabel" runat="server" Text='<%# Eval("Lab") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                Lab:
                <asp:TextBox ID="LabTextBox" runat="server" Text='<%# Bind("Lab") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />Lab:
                <asp:TextBox ID="LabTextBox" runat="server" Text='<%# Bind("Lab") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Lab:
                <asp:Label ID="LabLabel" runat="server" Text='<%# Eval("Lab") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Lab:
                <asp:Label ID="LabLabel" runat="server" Text='<%# Eval("Lab") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT * FROM [Labs] WHERE ([Lab] LIKE '%' + @Lab + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="Lab" SessionField="Labs" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                languages:
                <asp:Label ID="languagesLabel" runat="server" Text='<%# Eval("languages") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                languages:
                <asp:TextBox ID="languagesTextBox" runat="server" Text='<%# Bind("languages") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />languages:
                <asp:TextBox ID="languagesTextBox" runat="server" Text='<%# Bind("languages") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                languages:
                <asp:Label ID="languagesLabel" runat="server" Text='<%# Eval("languages") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                languages:
                <asp:Label ID="languagesLabel" runat="server" Text='<%# Eval("languages") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT * FROM [Languages] WHERE ([languages] LIKE '%' + @languages + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="languages" SessionField="Languages" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Qualification:
                <asp:Label ID="QualificationLabel" runat="server" Text='<%# Eval("Qualification") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                Qualification:
                <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />Qualification:
                <asp:TextBox ID="QualificationTextBox" runat="server" Text='<%# Bind("Qualification") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Qualification:
                <asp:Label ID="QualificationLabel" runat="server" Text='<%# Eval("Qualification") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Qualification:
                <asp:Label ID="QualificationLabel" runat="server" Text='<%# Eval("Qualification") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT * FROM [Qualifications] WHERE ([Qualification] LIKE '%' + @Qualification + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="Qualification" SessionField="Qualifications" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
           <br />
        <br />
           <br />
        <br />
       <b> Take a Look at every Faculties Profile</b><br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="background-color: #FFF8DC;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                Email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Contact Number:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                Teaching From:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                Achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                Papers Published:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                Interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #008A8C;color: #FFFFFF;">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
               Name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                 Email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
Contact Number:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
               Teaching From:
                <asp:TextBox ID="experienceTextBox" runat="server" Text='<%# Bind("experience") %>' />
                <br />
                 Achievements:
                <asp:TextBox ID="achievementsTextBox" runat="server" Text='<%# Bind("achievements") %>' />
                <br />
                 Papers Published:
                <asp:TextBox ID="papersTextBox" runat="server" Text='<%# Bind("papers") %>' />
                <br />
                Interests:
                <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                Name:
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                <br />
                 Email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
               Contact Number:
                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                <br />
               Teaching From:
                <asp:TextBox ID="experienceTextBox" runat="server" Text='<%# Bind("experience") %>' />
                <br />
               Achievements:
                <asp:TextBox ID="achievementsTextBox" runat="server" Text='<%# Bind("achievements") %>' />
                <br />
                 Papers Published:
                <asp:TextBox ID="papersTextBox" runat="server" Text='<%# Bind("papers") %>' />
                <br />
                Interests:
                <asp:TextBox ID="interestsTextBox" runat="server" Text='<%# Bind("interests") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #DCDCDC;color: #000000;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                Email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Contact Number:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
               Teaching From:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                 Achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                Papers Published:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                 Interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                <br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div style="font-family: Verdana, Arial, Helvetica, sans-serif;" id="itemPlaceholderContainer" runat="server">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                 Email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                Contact Number:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                Teaching From:
                <asp:Label ID="experienceLabel" runat="server" Text='<%# Eval("experience") %>' />
                <br />
                 Achievements:
                <asp:Label ID="achievementsLabel" runat="server" Text='<%# Eval("achievements") %>' />
                <br />
                 Papers Published:
                <asp:Label ID="papersLabel" runat="server" Text='<%# Eval("papers") %>' />
                <br />
                 Interests:
                <asp:Label ID="interestsLabel" runat="server" Text='<%# Eval("interests") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacultyManagementConnectionString %>" SelectCommand="SELECT [ID], [name], [email], [contact], [experience], [achievements], [papers], [interests] FROM [FaculltyBio]"></asp:SqlDataSource>
    </form>
</asp:Content>
