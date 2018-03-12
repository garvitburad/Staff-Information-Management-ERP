<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Faculty_Information_Management.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Registration ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="326px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" BackColor="White" BorderColor="Red" ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="326px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" BorderColor="Red" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
       
        <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="326px" TextMode="Number"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Qualifications"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea6" name="S6" rows="2" runat="server" draggable="auto"></textarea>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" BorderColor="Red" ControlToValidate="TextArea6" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Subjects Taught"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea1" name="S1" rows="2" runat="server" cols="45" draggable="auto"></textarea>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" BorderColor="Red" ControlToValidate="TextArea1" ErrorMessage="Required Field" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Labs Taken"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea2" cols="45" name="S2" rows="2" runat="server"></textarea> <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Achievements"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea3" cols="45" name="S3" rows="2" runat="server"></textarea><br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Papers Presented"></asp:Label>
&nbsp;<textarea id="TextArea4" cols="45" name="S4" rows="2" runat="server"></textarea><br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Area of Interests"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea5" cols="45" name="S5" rows="2" runat="server"></textarea><br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="Languages or"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <textarea id="TextArea7" name="S7" rows="2" runat="server"></textarea><br />
        <asp:Label ID="Label14" runat="server" Text=" Technologies Known"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Teaching From"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Number">Year</asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
<br />

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="223px" />
    </form>


</asp:Content>
