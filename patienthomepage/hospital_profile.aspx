<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hospital_profile.aspx.cs" Inherits="patienthomepage_hospital_profile" %>

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
            <td colspan="2">
                Hospital Guidance</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Location:</td>
            <td>
                <asp:Label ID="lbl_location" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Contact:</td>
            <td>
                <asp:Label ID="lbl_contact" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                  <table class="style22">
        <tr>
            <td class="style25">
                <asp:ListBox ID="ll_dept" runat="server" AutoPostBack="True" Font-Size="Large" 
                    Height="200px" Rows="5" Width="163px" 
                    onselectedindexchanged="ll_dept_SelectedIndexChanged">
                    <asp:ListItem Value="0">Cardiac</asp:ListItem>
                    <asp:ListItem Value="1">Dermatologists</asp:ListItem>
                    <asp:ListItem Value="2">Dietitian</asp:ListItem>
                    <asp:ListItem Value="3">ENT</asp:ListItem>
                    <asp:ListItem Value="4">Gastroenterologists</asp:ListItem>
                    <asp:ListItem Value="5">General Physician</asp:ListItem>
                    <asp:ListItem Value="6">General Surgeon</asp:ListItem>
                    <asp:ListItem Value="7">Gynocologist</asp:ListItem>
                    <asp:ListItem Value="8">Nefrologist</asp:ListItem>
                    <asp:ListItem Value="9">Neurologist</asp:ListItem>
                    <asp:ListItem Value="10">Orthopaedic</asp:ListItem>
                    <asp:ListItem Value="11">Oncologist</asp:ListItem>
                    <asp:ListItem Value="12">Pediatric</asp:ListItem>
                    <asp:ListItem Value="13">psychiatrist</asp:ListItem>
                    <asp:ListItem Value="14">Physiologists</asp:ListItem>
                    <asp:ListItem Value="15">Radiologist</asp:ListItem>
                </asp:ListBox>
            </td>
            <td class="style24">
                <asp:GridView ID="gv_doctor" runat="server" AllowPaging="True" 
                    onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                    AutoGenerateColumns = "False" 
                    onselectedindexchanged="gv_doctor_SelectedIndexChanged">
                    <Columns>

                    <asp:TemplateField HeaderText="reg no">
                        <ItemTemplate>
                            <asp:Label ID="lbl_regno" runat="server" Text='<%#Eval("regno") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                   <asp:TemplateField HeaderText="Timing">
                        <ItemTemplate>
                            <asp:Label ID="lbl_timing" runat="server" Text='<%#Eval("timing") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                         <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="lbl_photo" runat="server" ImageUrl='<%#Eval("photo") %>' Height=50px Width=50px></asp:Image>
                        </ItemTemplate></asp:TemplateField>

                        
                                           
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />

                        
                                           
                    </Columns>

                </asp:GridView>
            </td>
        </tr>
    </table></td>
        </tr>
    </table>
</asp:Content>

