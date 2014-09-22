<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit_delete_player.aspx.cs" Inherits="Edit_delete_player" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
<asp:Label ID="lbl_name" runat="server" Text="Enter first name"></asp:Label><br/>
    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox><br/>
    <asp:Label ID="lbl_lname" runat="server" Text="Enter last name"></asp:Label><br/><br/>
    <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox><br/><br/>
    <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit"/><br/><br/>
    <asp:GridView ID="gv_player" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Fname" HeaderText="First name" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Last name" SortExpression="Lname" />
            <asp:BoundField DataField="DOB" HeaderText="Date of birth" SortExpression="DOB" />
            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
            <asp:BoundField DataField="Batstyle" HeaderText="Batting style" SortExpression="Batstyle" />
            <asp:BoundField DataField="Bowlhand" HeaderText="Bowling hand" SortExpression="Bowlhand" />
            <asp:BoundField DataField="Bowlstyle" HeaderText="Bowling style" SortExpression="Bowlstyle" />
            <asp:ButtonField CommandName="Delete" Text="Button" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT * FROM [Player_info] WHERE (([Fname] = @Fname) AND ([Lname] = @Lname))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txt_name" Name="Fname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txt_lname" Name="Lname" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource><br/><br/>
    <asp:Button ID="btn_delete" runat="server" Text="Delete" Enabled="False" />
</asp:Content>

