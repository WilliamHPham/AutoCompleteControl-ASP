<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Animation.aspx.cs" Inherits="Animation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Animation Control"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="#90949C" Font-Bold="true" Text="@Using the Animation Control"></asp:Label>
    
    <hr />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:Panel ID="pnl" runat="server" Width="200">
        <h3 style="color: Red; box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.3); padding-left:10px">Demo Using the Animation Control</h3>
    </asp:Panel>

    <ajaxToolkit:AnimationExtender ID="pnl_AnimationExtender" runat="server" BehaviorID="pnl_AnimationExtender" TargetControlID="pnl">
        <Animations>
            <OnMouseOver> 
                <Resize  Width="400" Unit="px"/> 
            </OnMouseOver>
        </Animations>
    </ajaxToolkit:AnimationExtender>
    
    <hr />
    <asp:Button runat="server" ID="btnPlay" Text="Show Time" OnClick="btnPlay_Click"></asp:Button>
    <asp:Panel ID="pnl1" runat="server">
        <asp:Label ID="Label3" runat="server" Font-Size="Large" Text=""></asp:Label>

        <ajaxToolkit:AnimationExtender
            ID="pnl1_AnimationExtender"
            runat="server"
            TargetControlID="btnPlay">
            <Animations>
            <OnClick>
                <Sequence>
                <Color 
                    Property="style" 
                    PropertyKey="backgroundColor" 
                    StartValue="#FF0000" 
                    EndValue="#666666" 
                    Duration="1000">
                </Color>
                <EnableAction Enabled="true">
                </EnableAction>        
                </Sequence>
            </OnClick>
            </Animations>
        </ajaxToolkit:AnimationExtender>
    </asp:Panel>
    
    <hr />
    <asp:Panel ID="pnl2" runat="server" Width="500px" Height="500px" BackImageUrl="~/images/image.jpg">
        <ajaxToolkit:AnimationExtender ID="pnl2_Animationextender" runat="server" TargetControlID="pnl2">
            <Animations>
                <OnMouseOver> 
                    <FadeOut 
                        Duration="3" 
                        Fps="20">
                    </FadeOut>
                </OnMouseOver>
                <OnMouseOut> 
                    <FadeIn 
                        Duration="3" 
                        Fps="20">
                    </FadeIn>
                </OnMouseOut>
            </Animations>
        </ajaxToolkit:AnimationExtender>
    </asp:Panel>
</asp:Content>

