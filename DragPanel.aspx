<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DragPanel.aspx.cs" Inherits="DragPanel" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="DragPanel Control"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="White" Font-Bold="True" Text="@Using the DragPanel Control"></asp:Label>

    <hr />

    <style type="text/css">
        .outerPanel {
            border: solid 1px #C0C0C0;
            background-color: #e1e1e1;
            width: 300px;
            height: 300px;
            z-index: 20;
            padding: 2px;
        }

        .dragPanel {
            border: solid 1px #C0C0C0;
            background-color: #4267B2;
            width: 300px;
            height: 25px;
            color: #FFFFFF;
            font-weight: bold;
            cursor: move;
        }

        .auto-style1 {
            text-align: center;
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <b> You can drag the following panel area at any where on the form. </b>
        <ajaxToolkit:DragPanelExtender ID="DragPanelExtender1" runat="server" TargetControlID="pnlCover"
            DragHandleID="pnlAdd"></ajaxToolkit:DragPanelExtender>
    
        <asp:Panel ID="pnlCover" runat="server" CssClass="outerPanel">
            
            <asp:Panel ID="pnlAdd" runat="server" CssClass="dragPanel">
                <div class="auto-style1">
                    <b>DragPanel</b>
                </div>
                <p style="color: #000000">This is a DragPanel Controls</p>
            </asp:Panel>
        </asp:Panel>

        <script type="text/javascript">
            function setBodyHeightToContentHeight() {
                document.body.style.height = Math.max(document.documentElement.scrollHeight, document.body.scrollHeight) + "px";
            }
            setBodyHeightToContentHeight();
        </script>
</asp:Content>

