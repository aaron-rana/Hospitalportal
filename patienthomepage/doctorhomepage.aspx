<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="doctorhomepage.aspx.cs" Inherits="doctorhomepage_doctorhomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
        .style23
        {
            height: 137px;
        }
        .style24
        {
            width: 261px;
        }
        .style25
        {
            height: 137px;
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22">
        <tr>
            <td>
                <asp:Image ID="img_doc" runat="server" Height="72px" Width="113px" />
            </td>
            <td class="style24">
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btn_edit" runat="server" Text="Edit Profile" 
                    onclick="btn_edit_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Morning"></asp:Label>
            </td>
            <td class="style24">
                <asp:Label ID="Label2" runat="server" Text="Afternoon"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Evening"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style23">
                <asp:GridView ID="gv_morning" runat="server" 
                    onselectedindexchanged="gv_morning_SelectedIndexChanged" 
                    AutoGenerateColumns="False">
                    <Columns>

                    <asp:TemplateField HeaderText="Appointment ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_aid" runat="server" Text='<%#Eval("appointmentid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="Patient ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_pid" runat="server" Text='<%#Eval("patientid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>




                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>




            <td class="style25">
                <asp:GridView ID="gv_afternoon" runat="server" 
                    onselectedindexchanged="gv_afternoon_SelectedIndexChanged" 
                    AutoGenerateColumns="False">
                    <Columns>
                     <asp:TemplateField HeaderText="Appointment ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_aid" runat="server" Text='<%#Eval("appointmentid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>


                    <asp:TemplateField HeaderText="Patient ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_pid" runat="server" Text='<%#Eval("patientid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>



                        <asp:CommandField HeaderText="select" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>





            <td class="style23">
                <asp:GridView ID="gv_evening" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="gv_evening_SelectedIndexChanged">
                    <Columns>
                     <asp:TemplateField HeaderText="Appointment ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_aid" runat="server" Text='<%#Eval("appointmentid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="Patient ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_pid" runat="server" Text='<%#Eval("patientid") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                    <asp:TemplateField HeaderText="name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                        </ItemTemplate></asp:TemplateField>


                        <asp:CommandField HeaderText="select" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

