<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TextAndValuesPairs.aspx.cs" Inherits="Css_TextAndValuesPairs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function ace1_itemSelected(sender, e) {
            var ace1Value = $get('<%= ace1Value.ClientID %>');
            ace1Value.value = e.get_value();
        }

    </script>

    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Text and Value Pairs with the AutoCompleteExtender"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" Font-Bold="True" Text="@Using Text and Value Pairs with the AutoCompleteExtender"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="up">
        <ContentTemplate>
            <asp:Label ID="Label3" runat="server" Text="Movie Name:" Font-Bold="True" Font-Size="Medium" Height="20px" BorderStyle="None"></asp:Label>
            <asp:TextBox
                ID="TextBox1"
                runat="server"
                Height="20px"
                Width="300px" BorderStyle="None"></asp:TextBox>
            <ajaxToolkit:AutoCompleteExtender
                ID="TextBox1_AutoCompleteExtender"
                runat="server"
                ServiceMethod="GetMovie"
                TargetControlID="TextBox1"
                MinimumPrefixLength="1"
                OnClientItemSelected="ace1_itemSelected"
                FirstRowSelected="true">
            </ajaxToolkit:AutoCompleteExtender>
            <asp:Button ID="Button1" runat="server" Text="Find" BackColor="#4267B2" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="20px" OnClick="Button1_Click" />
            <asp:HiddenField
                ID="ace1Value"
                runat="server" />
            <hr />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Name: " Font-Bold="true" />
            <asp:Label ID="lblSelectedName" runat="server" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Primary Key: " Font-Bold="true" />
            <asp:Label ID="lblSelectedNameId" runat="server" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

