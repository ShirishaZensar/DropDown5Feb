<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown1.aspx.cs" Inherits="DropDown.DropDown1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
		&nbsp;</p>
	<form id="form1" runat="server">
	<p style="margin-left: 80px">
		&nbsp;</p>
		<p style="margin-left: 160px">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		DROPDOWN LIST FOR COUNTRY, STATE AND CITY</p>
	<p style="margin-left: 240px">
		&nbsp;</p>
		<p style="margin-left: 240px">
			SELECT COUNTRY&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:DropDownList ID="ddCountry" runat="server" OnSelectedIndexChanged="ddCountry_SelectedIndexChanged" style="margin-bottom: 0px" AutoPostBack="True" DataTextField="cname" DataValueField="cid">
			</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		<p style="margin-left: 240px">
			&nbsp;</p>
		<p style="margin-left: 240px">
			SELECT STATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:DropDownList ID="DDState" runat="server" OnSelectedIndexChanged="DDState_SelectedIndexChanged" style="margin-bottom: 0px" AutoPostBack="True" DataTextField="sname" DataValueField="sid">
			</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		<p style="margin-left: 240px">
			&nbsp;</p>
		<p style="margin-left: 240px">
			SELECT CITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:DropDownList ID="DDCity" runat="server" style="margin-bottom: 0px" DataTextField="ctname" DataValueField="cityid">
			</asp:DropDownList>
		</p>
		<p style="margin-left: 240px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
		<p style="margin-left: 240px">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		<p style="margin-left: 360px">
			&nbsp;</p>
		<p>
			<br />
		</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
		<p>
			&nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
