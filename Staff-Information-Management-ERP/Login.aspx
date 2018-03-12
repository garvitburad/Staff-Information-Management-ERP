<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Faculty_Information_Management.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script src="js//jquery.js" type="text/javascript"></script>  
    <script type="text/javascript">  
    var OAUTHURL = 'https://accounts.google.com/o/oauth2/auth?';  
    var VALIDURL = 'https://www.googleapis.com/oauth2/v1/tokeninfo?access_token=';  
    var SCOPE = 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email';  
    var CLIENTID = '906998658300-5ns09kdace9on924unsmr5rbpj3d650o.apps.googleusercontent.com';
    var REDIRECT = 'http://localhost:6407/Redirect.aspx';
    var LOGOUT = 'http://accounts.google.com/Logout';  
    var TYPE = 'token';  
    var _url = OAUTHURL + 'scope=' + SCOPE + '&client_id=' + CLIENTID + '&redirect_uri=' + REDIRECT + '&response_type=' + TYPE;  
    var acToken;  
    var tokenType;  
    var expiresIn;  
    var user;  
    var loggedIn = false;  
    function login()  
    {  
  
        var win = window.open(_url, "windowname1", 'width=800, height=600');  
        var pollTimer = window.setInterval(function () {  
            try  
            {  
                console.log(win.document.URL);  
                if (win.document.URL.indexOf(REDIRECT) != -1)   
                {  
                    window.clearInterval(pollTimer);  
                    var url = win.document.URL;  
                    acToken = gup(url, 'access_token');  
                    tokenType = gup(url, 'token_type');
                    
                    expiresIn = gup(url, 'expires_in');  
                    win.close();  
                    validateToken(acToken);  
                }  
            }   
            catch (e)  
            {  
  
            }  
        }, 500);  
    }  
    function validateToken(token)  
    {  
        $.ajax(  
            {  
            url: VALIDURL + token,  
            data: null,  
            success: function (responseText)  
            {        
                getUserInfo();  
                loggedIn = true;  
                $('#loginText').hide();  
                $('#logoutText').show();  
            },  
            dataType: "jsonp"  
        });  
    }  
    function getUserInfo()   
    {  
        $.ajax({  
            url: 'https://www.googleapis.com/oauth2/v1/userinfo?access_token=' + acToken,  
            data: null,  
            success: function (resp)   
            {  
                user = resp;  
                console.log(user);  
                window.location = "Redirect.aspx?email=" + user.email+"&domain="+user.hd;
            },  
            dataType: "jsonp"  
        });  
    }  
    //credits: http://www.netlobo.com/url_query_string_javascript.html  
  
    function gup(url, name)  
    {  
        namename = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");  
        var regexS = "[\\#&]" + name + "=([^&#]*)";  
        var regex = new RegExp(regexS);  
        var results = regex.exec(url);  
        if (results == null)  
            return "";  
        else  
            return results[1];  
    }  
    function startLogoutPolling()  
    {  
        $('#loginText').show();  
        $('#logoutText').hide();  
        loggedIn = false;  
        $('#uName').val('Welcome ');  
        $('#imgHolder').attr('src', 'none.jpg');  
    }  
  
    
  
</script>



</asp:Content>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
       
    <br />
    
                       <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="243px" OnAuthenticate="Login1_Authenticate" Width="799px">
                           <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>


        <br />


&nbsp;<br />
    
         Login with Poornima Email to Update the Details 
        <br />
       <br />
                    Click Here to Login
                <td>
                <td>
                             <a href="#"/><img border="0" alt="Login with Google"  onClick='login();' id="loginText" src="images/google.png" width="300" height="60" />

        <a href="#" style="display:none" id="logoutText" target='myIFrame' onclick="myIFrame.location='https://www.google.com/accounts/Logout'; startLogoutPolling();return false;"> Click here to logout </a>  
        <iframe name='myIFrame' id="myIFrame" style='display:none'></iframe> 
                </td>
            </td>

    
 
</form>


   


</asp:Content>
