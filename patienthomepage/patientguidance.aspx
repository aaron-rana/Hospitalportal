<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="patientguidance.aspx.cs" Inherits="patienthomepage_patientguidance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                        Text="Patient Guidance"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Patient&#39;s Name<asp:Label ID="Label2" runat="server" 
                        Font-Size="Small" ForeColor="Red" Text="*"></asp:Label>
&nbsp;:</td>
                <td>
                    <asp:TextBox ID="txt_pname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_pname" ErrorMessage="Enter Patient's Name" 
                        ValidationGroup="pg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date of Birth<asp:Label 
                        ID="Label3" runat="server" Font-Size="Small" ForeColor="Red" Text="*"></asp:Label>
&nbsp;:</td>
                <td class="style2">
                    <asp:DropDownList ID="dd_day" runat="server" 
                        onselectedindexchanged="dd_day_SelectedIndexChanged">
                        <asp:ListItem>Day</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_month" runat="server">
                        <asp:ListItem>Month</asp:ListItem>
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
                        <asp:ListItem Value="11">November </asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="dd_year" runat="server" 
                        onselectedindexchanged="dd_year_SelectedIndexChanged">
                        <asp:ListItem>Year</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="dd_year" ErrorMessage="Enter Year" InitialValue="Year" 
                        ValidationGroup="pg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Relationship with Patient<asp:Label 
                        ID="Label4" runat="server" Font-Size="Small" ForeColor="Red" Text="*"></asp:Label>
&nbsp;:</td>
                <td>
                    <asp:DropDownList ID="dd_relation" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="dd_relation_SelectedIndexChanged">
                        <asp:ListItem>Relation</asp:ListItem>
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Brother</asp:ListItem>
                        <asp:ListItem>Sister</asp:ListItem>
                        <asp:ListItem>Son</asp:ListItem>
                        <asp:ListItem>Daughter</asp:ListItem>
                        <asp:ListItem>Husband</asp:ListItem>
                        <asp:ListItem>Wife</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txt_relation" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="dd_relation" 
                        ErrorMessage="Enter Relationship please for security reasons" 
                        ValidationGroup="pg" InitialValue="Relation"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txt_relation" ErrorMessage="Specify relation please" 
                        ValidationGroup="pg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    (<asp:Label ID="Label5" runat="server" Font-Size="Small" 
                        Text="for security reason"></asp:Label>
                    )</td>
                <td class="style2">
                    </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_search" runat="server" onclick="Button1_Click" 
                        Text="Search" ValidationGroup="pg" />
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
                <td>
                    &nbsp;</td>
                <td>
                    <asp:GridView ID="gv_patient" runat="server" 
                        onselectedindexchanged="gv_patient_SelectedIndexChanged" 
                        AutoGenerateColumns="False">
                        <Columns>
                         <asp:TemplateField HeaderText="Patient ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_pid" runat="server" Text='<%#Eval("patientid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="DOB">
                        <ItemTemplate>
                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                            <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                            
                        </Columns>

                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

