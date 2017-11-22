<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PageMethod.aspx.cs" Inherits="PageMethod" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="AutoCompleteExtender with a Page Method" BorderStyle="None"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="#90949C" Font-Bold="True" Text="@Using the AutoCompleteExtender with a Page Method" BorderStyle="None"></asp:Label>

    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Label ID="Label3" runat="server" Text="Movie Name:" Font-Bold="True" Font-Size="Medium" Height="20px"></asp:Label>
    <asp:TextBox
        ID="TextBox1"
        runat="server"
        Height="20px"
        Width="300px">
    </asp:TextBox>
    <ajaxToolkit:AutoCompleteExtender
        ID="TextBox1_AutoCompleteExtender"
        runat="server"
        BehaviorID="TextBox1_AutoCompleteExtender"
        DelimiterCharacters=""
        ServiceMethod="SearchUser"
        TargetControlID="TextBox1"
        CompletionInterval="100"
        CompletionSetCount="10"
        MinimumPrefixLength="1">
    </ajaxToolkit:AutoCompleteExtender>
    
    <asp:Button ID="Button1" runat="server" Text="Find" BackColor="#4267B2" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="20px" OnClick="Button1_Click" />
        
    <asp:Button ID="Button2" runat="server" Text="?" BackColor="#4267B2" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="20px" Width="20px"/>
    
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

