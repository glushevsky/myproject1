<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="webprimer1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Добро пожаловать в ASP.NET!
    </h2>
    <p>
     <asp:TextBox ID="TextBox1" runat="server" text="<%# outobject.Id %>" />
    </p>
    <p>
     <asp:TextBox ID="TextBox2" runat="server" text="<%# outobject.Name %>" />
    </p>
    <p>
     <asp:TextBox ID="TextBox3" runat="server" text="<%# outobject.Description %>" />
    </p>
    <p>
     <asp:TextBox ID="TextBox4" runat="server" text="<%# outobject.Type %>" />
    </p>
    <p>
     <asp:TextBox ID="TextBox5" runat="server" text="<%# outobject.Value %>" />
    </p>
    <p>
        Для получения дополнительных сведений об ASP.NET посетите веб-сайт <a href="http://www.asp.net" title="Веб-сайт ASP.NET">www.asp.net</a>.
    </p>
    <p>
        Кроме того, <a href="http://go.microsoft.com/fwlink/?LinkID=152368"
            title="Документация по ASP.NET на MSDN">документация по ASP.NET доступна на MSDN</a>.
    </p>
</asp:Content>
