<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaskedEdit.aspx.cs" Inherits="MaskedEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="MaskedEdit Control"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="#90949C" Font-Bold="true" Text="@Using the MaskedEdit Control"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Label
        ID="lblTitle"
        Text="Title:"
        AssociatedControlID="txtTitle"
        runat="server" />
    <asp:TextBox
        ID="txtTitle"
        runat="server" />

    <br />
    <br />

    <asp:Label
        ID="lblDateReleased"
        Text="Date Released:"
        AssociatedControlID="txtDateReleased"
        runat="server" />
    <asp:TextBox
        ID="txtDateReleased"
        runat="server" />
    <ajaxToolkit:MaskedEditExtender
        id="DateReleased_MaskedEditExtender"
        targetcontrolid="txtDateReleased"
        mask="99/99/9999"
        masktype="Date"
        runat="Server" />

    <br />
    <br />

    <asp:Button
        ID="btnSubmit"
        Text="Submit"
        runat="server" />
</asp:Content>

