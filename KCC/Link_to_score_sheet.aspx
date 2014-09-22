<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Link_to_score_sheet.aspx.cs" Inherits="Link_to_score_sheet" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server" >
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:Label ID ="lbl_against" runat="server" Text="Against"></asp:Label><br/>
    <asp:TextBox ID="txt_against" runat="server"></asp:TextBox><br/>
    <asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label><br/>
    <asp:TextBox ID="txt_date" runat="server" ></asp:TextBox>
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_date" Format="dd/MM/yyyy"></asp:CalendarExtender><br/><br/>
    <asp:Button ID="btn_done" runat="server" Text="Done" OnClick="btn_done_Click" CssClass="btn" />

</asp:Content>

