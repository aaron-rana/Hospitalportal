<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patient_profile.aspx.cs" Inherits="patienthomepage_patient_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            height: 26px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <table cellpadding="2" cellspacing="3" class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    Patient&#39;s Profile</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td align="center" colspan="2">
                    &nbsp;</td>
                <td>
                    Patient Id:
                    <asp:Label ID="lbl_pid" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" rowspan="4">
                    <asp:Image ID="img_p" runat="server" Height="100px" Width="100px"/>
                </td>
                <td colspan="2">
                    Name:&nbsp;&nbsp; 
                    <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
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
                <td colspan="2" rowspan="2">
                    <asp:Label ID="lbl_add" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Health Issue:</td>
                <td colspan="2" rowspan="2">
                    <asp:Label ID="lbl_hissue" runat="server" Text="Label"></asp:Label>
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
                    Status:</td>
                <td class="style5">
                    <asp:Label ID="lbl_status" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style5">
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Hospital Name:</td>
                <td>
                    <asp:Label ID="lbl_hospital" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    </td>
                <td class="style22">
                    Contact:</td>
                <td class="style22">
                    <asp:Label ID="lbl_mail" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style22">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Mobile:</td>
                <td>
                    <asp:Label ID="lbl_mobile" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style22">
                    </td>
                <td class="style22">
                    </td>
                <td class="style22">
                </td>
                <td class="style22">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_payment" runat="server" Text="Payment" 
                        onclick="btn_payment_Click" />
                </td>
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
    
    </div>
</asp:Content>

