<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ParameterControl.ascx.cs" Inherits="webprimer2.ParameterControl" %>
    <!--<p>CONTROL</p>-->
   <div id="paramElement" runat="server" style="background-color:#a4b6bb">
        <h3 id="NameLabel" runat="server"></h3>
        <h5 id="DescriptionLabel" runat="server"></h5>
        <input id="TextInput" type="text" runat="server" visible="false"/>
        <input id="NumInput" type="text" runat="server" visible="false"/>
        <input id="CheckInput" type="checkbox" runat="server" visible="false"/>
     </div>