<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="patienthomepage_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
        .style23
        {
            width: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22">
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Appointment"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td align="left">
                <asp:Label ID="Label2" runat="server" Text="Patient Name:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td align="left">
                Doctor&#39;s Name:</td>
            <td>
                <asp:Label ID="lbl_dname" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td align="left">
                Time Slot:</td>
            <td>
                <asp:Label ID="lbl_timeslot" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td align="left">
                Date:</td>
            <td>
                <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_confirm" runat="server" onclick="btn_confirm_Click" 
                    Text="Confirm " />
            </td>
        </tr>
    </table>
</asp:Content>

