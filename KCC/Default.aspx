<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:Label ID="lbl_date" Enabled="false" runat="server"></asp:Label>
    <asp:Label ID="lbl_against" Enabled="false" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" Width="550px" AutoGenerateColumns="false"
    AlternatingRowStyle-BackColor="#C2D69B" HeaderStyle-BackColor="green" ShowFooter="true" ShowHeader="true" ShowHeaderWhenEmpty="true">
    <Columns>
        <asp:TemplateField HeaderText="Customer Name">
            <ItemTemplate>
                <%# Eval("CustomerName") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCustomerName" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Company Name">
            <ItemTemplate>
                <%# Eval("CompanyName") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCompanyName" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="City">
            <ItemTemplate>
                <%# Eval("City") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="City2">
            <ItemTemplate>
                <%# Eval("City2") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:Label ID="lbl_city2" runat ="server"></asp:Label>
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>
            </ItemTemplate>
            <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add"  CommandName = "Footer" OnClick="Add"/>
            </FooterTemplate>
        </asp:TemplateField>
    </Columns>
    <AlternatingRowStyle BackColor="#C2D69B" />
    <EmptyDataTemplate>
        <tr style="background-color: Green;">
            <th scope="col">
                Customer Name
            </th>
            <th scope="col">
                Company Name
            </th>
            <th scope="col">
                City
            </th>
            <th scope="col">
                   
            </th>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtCustomerName" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtCompanyName" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" />
            </td>
            <td>
                <asp:Label ID="lbl_city2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" CommandName = "EmptyDataTemplate" OnClick="Add"/>
            </td>
        </tr>
    </EmptyDataTemplate>
</asp:GridView>
</asp:Content>

