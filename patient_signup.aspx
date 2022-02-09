<%@ Page Language="C#" AutoEventWireup="true" CodeFile="patient_signup.aspx.cs" Inherits="patient_signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type = "text/javascript" language = "javascript">

function Clientvalidate(s, a)
{ if(document.getElementById("rb_male").checked == false && document.getElementById("rb_female").checked == false)
    { a.IsValid = false; }

    else
    { a.IsValid = true; }

    }
    
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align = "right">
            <table align="center" class="style1">
            <tr>
                <td colspan="3" align="center">
                    <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" 
                        Text="Patient Signup "></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter First Name:"></asp:Label>
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_fname" ErrorMessage="Enter First name please" 
                        ValidationGroup="ps"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Last Name:"></asp:Label>
                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_lname" ErrorMessage="Enter Last Name please" 
                        ValidationGroup="ps"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Mobile No:<asp:Label 
                        ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_mobileno" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txt_mobileno" ErrorMessage="Enter mobile no. please" 
                        ValidationGroup="ps"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Gender:<asp:Label ID="Label7" 
                        runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rb_male" runat="server" Text="M" GroupName="gender"/>
                    <asp:RadioButton ID="rb_female" runat="server" Text="F" 
                        GroupName="gender" />
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ErrorMessage="Choose Gender please" ValidationGroup="ps" 
                        ClientValidationFunction="Clientvalidate" 
                        onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Date of Birth:<asp:Label 
                        ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dd_date" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem >16</asp:ListItem>
                        <asp:ListItem >17</asp:ListItem>
                        <asp:ListItem >18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem >30</asp:ListItem>
                        <asp:ListItem >31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_month" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem Value="1">January</asp:ListItem>
                        <asp:ListItem Value="2">February</asp:ListItem>
                        <asp:ListItem Value="3">March</asp:ListItem>
                        <asp:ListItem Value="4">April</asp:ListItem>
                        <asp:ListItem Value="5">May</asp:ListItem>
                        <asp:ListItem Value="6">June</asp:ListItem>
                        <asp:ListItem Value="7">July</asp:ListItem>
                        <asp:ListItem Value="8">August</asp:ListItem>
                        <asp:ListItem Value="9">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_year" runat="server" 
                        onselectedindexchanged="Page_Load">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="dd_date" ErrorMessage="Choose date" 
                        ValidationGroup="ps" InitialValue="SELECT"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="dd_month" ErrorMessage="Choose month" 
                        ValidationGroup="ps" InitialValue="SELECT"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="dd_year" ErrorMessage="Choose year" 
                        ValidationGroup="ps" InitialValue="SELECT"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email ID:<asp:Label 
                        ID="Label9" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txt_email" ErrorMessage="Enter your mail" 
                        ValidationGroup="ps"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_email" ErrorMessage="Enter a Valid Email ID" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="ps"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password:<asp:Label 
                        ID="Label10" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txt_pass" ErrorMessage="Enter password" ValidationGroup="ps"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Re-enter Password:<asp:Label 
                        ID="Label11" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_repass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txt_repass" ErrorMessage="Re-enter password" 
                        ValidationGroup="ps"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txt_pass" ControlToValidate="txt_repass" 
                        ErrorMessage="Password Mismatch" ValidationGroup="ps"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address:<asp:Label 
                        ID="Label13" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_add" runat="server" Height="42px" style="margin-left: 0px" 
                        Width="153px"></asp:TextBox>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    image upload:<asp:Label 
                        ID="Label12" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Sign Up"  ValidationGroup="ps" 
                        onclick="Button1_Click"  />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
