<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaskedEdit.aspx.cs" Inherits="MaskedEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            width: 326px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="MaskedEdit Control"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" Font-Bold="True" Text="@Using the MaskedEdit Control"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <table class="auto-style2">
        <tr>
            <td class="auto-style1">
                <asp:Label
                    ID="lblName"
                    Text="Name:"
                    AssociatedControlID="txtName"
                    runat="server" />
            </td>
            <td class="auto-style1">
                <asp:TextBox
                    ID="txtName"
                    runat="server" BorderStyle="None" />

            </td>
        </tr>
        <tr>
            <td>

                <asp:Label
                    ID="lblDateReleased"
                    Text="Date Released:"
                    AssociatedControlID="txtDateReleased"
                    runat="server" />
            </td>
            <td>
                <asp:TextBox
                    ID="txtDateReleased"
                    runat="server" BorderStyle="None" />
                <ajaxToolkit:MaskedEditExtender
                    ID="DateReleased_MaskedEditExtender"
                    TargetControlID="txtDateReleased"
                    Mask="99/99/9999"
                    MaskType="Date"
                    runat="Server" />

            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style3">

                <asp:Button
                    ID="btnSubmit"
                    Text="Submit"
                    runat="server" BorderStyle="None" BackColor="#4267B2" ForeColor="White" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
    <asp:Label ID="lbShow" runat="server" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
</asp:Content>

