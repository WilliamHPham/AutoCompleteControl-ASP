<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TextAndValuesPairs.aspx.cs" Inherits="Css_TextAndValuesPairs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function itemSelected(sender, e) {
            var hdMoviesID = $get('<%= hdMovieID.ClientID %>');
            hdMoviesID.value = e.get_value();
        }
    </script>


    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Text and Value Pairs with the AutoCompleteExtender"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="#90949C" Font-Bold="true" Text="@Using Text and Value Pairs with the AutoCompleteExtender"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="up">
        <ContentTemplate>
            <asp:Label ID="Label3" runat="server" Text="Movie Name:" Font-Bold="True" Font-Size="Medium" Height="20px"></asp:Label>
            <asp:TextBox
                ID="TextBox1"
                runat="server"
                Height="20px"
                Width="300px"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Find" BackColor="#4267B2" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="20px" OnClick="Button1_Click" />
            <ajaxToolkit:AutoCompleteExtender
                ID="TextBox1_AutoCompleteExtender"
                runat="server"
                BehaviorID="TextBox1_AutoCompleteExtender"
                ServiceMethod="GetMovie"
                TargetControlID="TextBox1"
                CompletionInterval="100"
                CompletionSetCount="10"
                MinimumPrefixLength="1"
                OnClientItemSelected="itemSelected"
                FirstRowSelected="true">
            </ajaxToolkit:AutoCompleteExtender>

            <asp:HiddenField ID="hdMovieID" runat="server" />

            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

