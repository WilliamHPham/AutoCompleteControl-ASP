﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FilteredTextBox.aspx.cs" Inherits="FilteredTextBox" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Filtered TextBox"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" Font-Bold="True" Text="@Using the Filtered TextBox Control"></asp:Label>
    
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <b style="color:white">Numbers and Digits</b><br />
    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
        TargetControlID="TextBox1" />

    <hr />
    <b style="color:white">Alphabets (Uppercase and Lowercase)</b><br />
    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
        TargetControlID="TextBox2" />

    <hr />
    <b style="color:white">Alphabets (Uppercase only)</b><br />
    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="UppercaseLetters"
        TargetControlID="TextBox3" />
    <hr />
    <b style="color:white">Alphabets (Lowercase only)</b><br />
    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="LowercaseLetters"
        TargetControlID="TextBox4" />

    <hr />
    <b style="color:white">Alphabets and Numbers (Alphanumeric)</b><br />
    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" FilterType="Numbers, UppercaseLetters, LowercaseLetters"
        TargetControlID="TextBox5" />

    <hr />
    <b style="color:white">Email Address (Lower case alphabets, numbers, @ and dot)</b><br />
    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" FilterType="Numbers, LowercaseLetters, Custom"
        ValidChars=".@" TargetControlID="TextBox6" />

    <hr />
    <b style="color:white">Decimal Number(Digits and dot)</b><br />
    <asp:TextBox ID="TextBox7" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" FilterType="Numbers, Custom"
        ValidChars="." TargetControlID="TextBox7" />

    <hr />
    <b style="color:white">Money or Currency (Digits, comma and dot)</b><br />
    <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None"></asp:TextBox>
    <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" FilterType="Numbers, Custom"
        ValidChars=".," TargetControlID="TextBox8" />
</asp:Content>

