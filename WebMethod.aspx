<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebMethod.aspx.cs" Inherits="Css_WebMethod" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="AutoCompleteExtender with a Web Service Method"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" Font-Bold="True" Text="@Using the AutoCompleteExtender with a Web Service Method"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
         <Services>
                <asp:ServiceReference Path="~/WebService.asmx" />
            </Services>
    </asp:ScriptManager>
    <asp:Label ID="Label3" runat="server" Text="Movie Name:" Font-Bold="True" Font-Size="Medium" Height="20px" BorderStyle="None"></asp:Label>
    <asp:TextBox
        ID="TextBox1"
        runat="server"
        Height="20px"
        Width="300px" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender
        ID="TextBox1_AutoCompleteExtender"
        runat="server"
        BehaviorID="TextBox1_AutoCompleteExtender"
        DelimiterCharacters="" 
        ServicePath="~/WebService.asmx" 
        ServiceMethod="SearchMovie"
        TargetControlID="TextBox1" 
        Enabled="true" 
        EnableCaching="true"
        CompletionInterval="100"
        CompletionSetCount="10"
        MinimumPrefixLength="1">
    </ajaxToolkit:AutoCompleteExtender>
    <asp:Button ID="Button1" runat="server" Text="Find" BackColor="#4267B2" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="20px" OnClick="Button1_Click" Width="42px" />
    
<br />
<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    
</asp:Content>

