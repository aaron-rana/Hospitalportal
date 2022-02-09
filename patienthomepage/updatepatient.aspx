<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updatepatient.aspx.cs" Inherits="patienthomepage_updatepatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22">
        <tr>
            <td colspan="3">
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Health Status"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dd_status" runat="server">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>Stable</asp:ListItem>
                    <asp:ListItem>Unstable</asp:ListItem>
                    <asp:ListItem>Ventilated</asp:ListItem>
                    <asp:ListItem>Deceased</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="dd_status" 
                    ErrorMessage="Select the health status of patient" InitialValue="SELECT" 
                    ValidationGroup="doc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Health issue"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_hissue" runat="server"></asp:TextBox>
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
                <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" 
                    Text="Update" ValidationGroup="doc" />
            </td>
        </tr>
    </table>
</asp:Content>

