<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet">
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        <img src="Images/kaboom.jpg" id="img" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lbl_username" runat="server" Text="Username:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_username" runat="server" ></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lbl_password" runat="server" Text="Password:" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
