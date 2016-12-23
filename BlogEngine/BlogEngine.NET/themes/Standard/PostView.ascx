<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" Inherits="BlogEngine.Core.Web.Controls.PostViewBase" %>
<div class="post PostPad xfolkentry" id="post<%=Index %>">
    <h2 class="PostTitle">
        <a href="<%=Post.RelativeOrAbsoluteLink %>" class="taggedlink"><%=Server.HtmlEncode(Post.Title) %></a>
    </h2>
    <div class="PostInfo Clear">
        <span class="PubDate"><%=Post.DateCreated.ToString("d. MMMM yyyy HH:mm") %></span>
        <span> / </span>
        <span><a href="<%=BlogEngine.Core.Utils.AbsoluteWebRoot + "author/" + BlogEngine.Core.Utils.RemoveIllegalCharacters(Post.Author) + BlogEngine.Core.BlogConfig.FileExtension %>"><%=Post.AuthorProfile != null ? Post.AuthorProfile.DisplayName : Post.Author %></a></span>
        <span> / </span>
        <span class="CatPost"><%=CategoryLinks(" . ") %></span>
        <a rel="nofollow" class="Right" href="<%=Post.RelativeOrAbsoluteLink %>#comment"><%=Resources.labels.comments %> (<%=Post.ApprovedComments.Count %>)</a>
        <div class="Clearer"></div>
    </div>
    <div class="PostBody text">
        <asp:PlaceHolder ID="BodyContent" runat="server" />
    </div>
    <div class="PostRating">
        <%=Rating %>
    </div>
    <div class="PostTags">
        <%=Resources.labels.tags %> : <%=TagLinks(" . ") %>
    </div>
    <%=AdminLinks %>
</div>