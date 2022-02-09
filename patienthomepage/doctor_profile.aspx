<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctor_profile.aspx.cs" Inherits="patienthomepage_doctor_guidance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table cellpadding="2" cellspacing="3" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    Doctor&#39;s Profile</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    &nbsp;</td>
                <td>
                    Registration number:
                    <asp:Label ID="lbl_regno" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" rowspan="4">
                    <asp:Image ID="img_p" runat="server" Height="100px" Width="100px"/>
                </td>
                <td>
                    Name:&nbsp;&nbsp; 
                    <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    starfield</td>
            </tr>
            <tr>
                <td>
                    Age:&nbsp;&nbsp;
                    <asp:Label ID="lbl_age" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    Gender:&nbsp;&nbsp;
                    <asp:Label ID="lbl_gender" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Address:</td>
                <td>
                    <asp:Label ID="lbl_add" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    About:</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" rowspan="2">
                    <asp:Label ID="lbl_about" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style5">
                    Qualification:</td>
                <td class="style5">
                    <asp:Label ID="lbl_qualification" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Specialization:</td>
                <td>
                    <asp:Label ID="lbl_spec" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Experience</td>
                <td>
                    <asp:Label ID="lbl_exp" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Hospital:</td>
                <td>
                    <asp:Label ID="lbl_hospital" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="dd_day" runat="server">
                        <asp:ListItem>Day</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_month" runat="server" Enabled="False">
                    
                        
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_year" runat="server" Enabled="False">
                      
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btn_appointment" runat="server" onclick="btn_appointment_Click" 
                        Text="Get Appoinment" ValidationGroup="r" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Smaller" ForeColor="Red" 
                        Text="Appointment possible for this month only"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="dd_day" ErrorMessage="Please enter date" InitialValue="Day" 
                        ValidationGroup="r"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

