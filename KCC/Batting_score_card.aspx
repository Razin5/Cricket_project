<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Batting_score_card.aspx.cs" Inherits="Batting_score_card" %>

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
        <asp:Label ID="lbl_headrer" runat="server" Text="Kaboom Batting" CssClass="header"></asp:Label><br/><br/><br/>
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
            <asp:TemplateField HeaderText="Runs">
            <ItemTemplate>
                <%# Eval("run") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_run" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Balls faced">
            <ItemTemplate>
                <%# Eval("ballfaced") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_balls" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Out">
            <ItemTemplate>
                <%# Eval("how") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_out" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="Bolwer">
            <ItemTemplate>
                <%# Eval("who") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_bowler" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="4s">
            <ItemTemplate>
                <%# Eval("four") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_four" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField HeaderText="6s">
            <ItemTemplate>
                <%# Eval("six") %>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txt_six" runat="server" />
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
                Runs 
            </th>
             <th scope="col">
                Balls faced
            </th>
            <th scope="col">
                Out
            </th>
            <th scope="col">
                Bowler
            </th>
             <th scope="col">
                4s
            </th>
            <th scope="col">
                6s
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
                <asp:TextBox ID="txt_run" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_balls" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txt_out" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_bowler" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_four" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txt_six" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" CommandName = "EmptyDataTemplate" OnClick="Add" Width="100"/>
            </td>
            </EmptyDataTemplate>
        
    </asp:GridView>
        <asp:Button ID="btn_bowling" runat="server" Text="Bowling Sheet" Width="100px" OnClick="btn_bowling_Click"/>
    </div>
    </form>
</body>
</html>
