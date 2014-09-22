<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bowling_score_card.aspx.cs" Inherits="Bowling_score_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lbl_against" runat="server" Enabled="false" ></asp:Label>
    <asp:Label ID="lbl_date" runat="server" Enabled="false"></asp:Label>
        <asp:Label ID="lbl_headrer" runat="server" Text="Kaboom Bowling" CssClass="header"></asp:Label><br/><br/><br/>
    <asp:GridView ID="GridView1" runat="server" ShowFooter="True" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False"  GridLines="None">
        
        <Columns>
            
             <asp:TemplateField HeaderText="First Name" ItemStyle-Width="50px">
            <ItemTemplate>
                <%# Eval("fname") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_fname" runat="server" />
            </FooterTemplate>

<ItemStyle Width="10px"></ItemStyle>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <%# Eval("lname") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_lname" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Overs">
            <ItemTemplate>
                <%# Eval("over") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_over" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Maidens">
            <ItemTemplate>
                <%# Eval("maiden") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_maiden" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Wickets">
            <ItemTemplate>
                <%# Eval("wickets") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_wicket" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Runs">
            <ItemTemplate>
                <%# Eval("runs") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_runs" runat="server" />
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
        <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
            <tr>
             <th scope="col">
                First Name
            </th>
            <th scope="col">
                Last Name
            </th>
            <th scope="col">
                Overs
            </th>
             <th scope="col">
                Maidens
            </th>
            <th scope="col">
                Wickets
            </th>
            <th scope="col">
                Runs
            </th>
            <th scope="col">
                   
            </th>
                </tr>
            <td>
                <asp:TextBox ID="txt_fname" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_over" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_maiden" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txt_wicket" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_runs" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" CommandName = "EmptyDataTemplate" OnClick="Add" Width="100px"/>
            </td>
            </EmptyDataTemplate>
        
    </asp:GridView>
    </div>
    </form>
</body>
</html>
