<%@ Control Language="C#" AutoEventWireup="true" Inherits="App_Code.Controls.WidgetContainer" %>
<div class="Widget <%= Widget.Name.Replace(" ", String.Empty).ToLowerInvariant() %>" id="widget<%= Widget.WidgetId %>">
    <%= AdminLinks %>
    <% if (this.Widget.ShowTitle)
       { %>
   <div class="WidgetHeader">
        <%= Widget.Title%></div>
    <% } %>
    <div class="WidgetContent">
        <asp:PlaceHolder ID="phWidgetBody" runat="server"></asp:PlaceHolder>
    </div>
</div>