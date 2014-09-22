<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Score_sheet.aspx.cs" Inherits="Score_sheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:DropDownList ID="ddl_against" runat="server" DataSourceID="SqlDataSource1" DataTextField="against" DataValueField="against" AutoPostBack="true" AppendDataBoundItems="true"><asp:ListItem Selected="True" Value="0">---SELECT---</asp:ListItem></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddl_date" runat="server" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date" AutoPostBack="true" AppendDataBoundItems="true"><asp:ListItem Selected="True" Value="0">---SELECT---</asp:ListItem></asp:DropDownList>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT DISTINCT [date] FROM [baatingcard]"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT DISTINCT [against] FROM [baatingcard]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fname" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" ReadOnly="True" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="runs" HeaderText="runs" SortExpression="runs" />
                <asp:BoundField DataField="ballfaced" HeaderText="ballfaced" SortExpression="ballfaced" />
                <asp:BoundField DataField="how" HeaderText="how" SortExpression="how" />
                <asp:BoundField DataField="who" HeaderText="who" SortExpression="who" />
                <asp:BoundField DataField="four" HeaderText="four" SortExpression="four" />
                <asp:BoundField DataField="six" HeaderText="six" SortExpression="six" />
                <asp:BoundField DataField="against" HeaderText="against" SortExpression="against" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView><br/>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT * FROM [baatingcard] WHERE (([against] = @against) AND ([date] = @date))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddl_against" Name="against" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddl_date" Name="date" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
            <asp:BoundField DataField="over" HeaderText="over" SortExpression="over" />
            <asp:BoundField DataField="maiden" HeaderText="maiden" SortExpression="maiden" />
            <asp:BoundField DataField="wickets" HeaderText="wickets" SortExpression="wickets" />
            <asp:BoundField DataField="runs" HeaderText="runs" SortExpression="runs" />
            <asp:BoundField DataField="against" HeaderText="against" SortExpression="against" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT * FROM [bowlingcard] WHERE (([against] = @against) AND ([date] = @date))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl_against" Name="against" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddl_date" Name="date" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

