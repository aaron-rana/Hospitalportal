<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patient_login.aspx.cs" Inherits="patient_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style>
      
body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 15px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(images/wal4.jpg);
	background-position: center;
	-webkit-filter: blur(8px);
	z-index: 0;
}



.header{
	position: absolute;
	top: calc(20% - 35px);
	left: calc(40% - 55px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 50px;
	font-weight: 50;
}

.header div span{
	color: #5379fa !important;
}

.login{
	position: absolute;
	top: calc(30% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 2px solid rgba(80,80,80,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	}

.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login image{
	width: 200px;
	height: 200px;
	background: #fff;
	border: 2px solid #fff;
	cursor: pointer;
	border-radius: 5px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	padding: 6px;
	margin-top: 10px;
}

.login button:hover{
	opacity: 0.8;
}

.login button:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(0,0,0,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(0,0,0,0.9);
}

.login button:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(80,80,80,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}


    </style>



</head>
<body>
  <form id="form1" runat="server">
    <div>
    
     <div class="header"><div class="div">Welcome     <asp:Label ID="lbl_patname" 
             runat="server" Text="Label"></asp:Label></div></div>
      
    <div class="body"></div>
		
	
		<div class="login">
            <br />
            <br />
            <br />
            <br />
				
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image class="image" ID="patient_image" runat="server" Height="200px" Width="200px" 
                ImageUrl="~/images/pat.jpg" EnableTheming="True" />
            <br />
            <br />
            <br />
				
           <asp:Login ID="Login2" runat="server" onauthenticate="Login2_Authenticate" 
                        onloggedin="Login2_LoggedIn" 
                        TitleText="Patient's Log In">
               <LayoutTemplate>
                   <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                       <tr>
                           <td>
                               <table cellpadding="0">
                                   <tr>
                                       <td align="center" colspan="2">
                                           </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           &nbsp;</td>
                                       <td>
                                           <asp:TextBox ID="UserName" runat="server" value="Username" Font-Size="Medium" 
                                               ForeColor="Black"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                               ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                               ToolTip="User Name is required." ValidationGroup="Login2" InitialValue="Username">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="right">
                                           &nbsp;</td>
                                       <td align="center">
                                           <asp:TextBox ID="Password" runat="server" TextMode="Password" value="Password" 
                                               ForeColor="Black"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                               ControlToValidate="Password" ErrorMessage="Password is required." 
                                               ToolTip="Password is required." ValidationGroup="Login2" InitialValue="Password">*</asp:RequiredFieldValidator>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." 
                                               ForeColor="Black" />
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2" style="color:Red;">
                                           <asp:Literal ID="WrongPassword" runat="server" EnableViewState="False"></asp:Literal>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2" style="color:Red;">
                                           &nbsp;</td>
                                   </tr>
                                   <tr>
                                       <td align="right" colspan="2">
                                           <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                               ValidationGroup="Login2" Width="262px" Height="44px" />
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                   </table>
               </LayoutTemplate>
                    </asp:Login>
           
        </div>

    </div>
    </form>
</body>
</html>
