<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newplayer.aspx.cs" Inherits="Newplayer" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
     
    <asp:Label ID="lbl_name" runat="server" CssClass="label" Text="Name" ></asp:Label>
    <br/>
    <asp:TextBox ID="txt_fname" runat="server" CssClass="txtbox"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="txt_fname_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txt_fname" WatermarkText="First name" WatermarkCssClass="Watermarker">
    </asp:TextBoxWatermarkExtender>
    <asp:TextBox ID="txt_lname" runat="server" CssClass="txtbox"></asp:TextBox>
    <asp:TextBoxWatermarkExtender ID="txt_lname_TextBoxWatermarkExtender" runat="server" Enabled="True" TargetControlID="txt_lname" WatermarkText="Last name" WatermarkCssClass="Watermarker">
    </asp:TextBoxWatermarkExtender>
    &nbsp;<asp:RequiredFieldValidator ID="rfv_fname" runat="server" ControlToValidate="txt_fname" Display="Dynamic" ErrorMessage="Enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname" Display="Dynamic" ErrorMessage="Enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <asp:Label ID="lbl_dob" runat="server" CssClass="label" Text="Date of Birth"></asp:Label><br/>
    <asp:TextBox ID="txt_dob" runat="server" CssClass="txtbox" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfv_dob" runat="server" ControlToValidate="txt_dob" ErrorMessage="Select date of birth" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" Enabled="True" TargetControlID="txt_dob" Format="yyyy/MM/dd" >
    </asp:CalendarExtender>
    <asp:Label ID="lbl_role" runat="server"  Text="Role" ></asp:Label><br/>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:DropDownList ID="ddl_role" AutoPostBack="true" runat="server">
        <asp:ListItem  Value="0" Selected="True">---SELECT---</asp:ListItem>
        <asp:ListItem>Batting</asp:ListItem> 
        <asp:ListItem>Bowling</asp:ListItem>
        <asp:ListItem>All-rounder</asp:ListItem>
    </asp:DropDownList>&nbsp;<br/>
    <asp:Label ID="lbl_batstyle" runat="server" Text="Batting Style"></asp:Label><br/>
    <asp:DropDownList ID="ddl_batstyle" runat="server" AutoPostBack="true" >
        <asp:ListItem Value="0">---SELECT---</asp:ListItem>
        <asp:ListItem >Right-handed</asp:ListItem>
        <asp:ListItem>Left-handed</asp:ListItem>
    </asp:DropDownList><br/>
    <asp:Label ID="lbl_bowlstyle" runat="server" Text="Bowling Style"></asp:Label><br/>
    <asp:DropDownList ID="ddl_bowlstyle" runat="server" AutoPostBack="true">
        <asp:ListItem Value="0">---SELECT---</asp:ListItem>
        <asp:ListItem>Right-handed</asp:ListItem>
        <asp:ListItem>Left-handed</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddl_bowlingstyle" runat="server" AutoPostBack="true"  >
        <asp:ListItem Value="0">---SELECT---</asp:ListItem>
        <asp:ListItem>Fast</asp:ListItem>
        <asp:ListItem>Fast-medium</asp:ListItem> 
        <asp:ListItem>Off-spin</asp:ListItem>
        <asp:ListItem>Leg-spin</asp:ListItem>
    </asp:DropDownList><br/><br />
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn" OnClick="btn_submit_Click"></asp:Button> 
    &nbsp;<asp:Button ID="btn_reset" runat="server" Text="Reset"  CausesValidation="False" CssClass="btn" OnClick="btn_reset_Click"></asp:Button>

   
    


 </asp:Content>

