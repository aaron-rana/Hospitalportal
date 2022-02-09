<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="phomepage.aspx.cs" Inherits="phomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style22
    {
        width: 100%;
        height: 507px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table class="style22">
    <tr>
        <td>
            <asp:ImageButton ID="ImageButton2" runat="server" 
                ImageUrl="~/images/buttons/doctorguidance.jpg" 
                onclick="ImageButton2_Click" />
        </td>
        <td>
            <asp:ImageButton ID="ImageButton3" runat="server" 
                ImageUrl="~/images/buttons/hospitalguidance.jpg" 
                onclick="ImageButton3_Click" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/images/buttons/patientguidance.jpg" 
                onclick="ImageButton1_Click" />
        </td>
        <td>
            <asp:ImageButton ID="ImageButton4" runat="server" 
                ImageUrl="~/images/buttons/areanearby.jpg" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>



</asp:Content>

