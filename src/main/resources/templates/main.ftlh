<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>


<@c.page>
<@l.logout />
<span><a href="user">All users</a></span>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Input your message"/>
        <input type="text" name="tag" placeholder="Input tag"/>
        <input type="file" name="file" />
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Submit</button>
    </form>
</div>
<div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}}"/>
        <button type="submit">Submit</button>
    </form>
</div>
<div>Message List</div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <b>${message.authorName}</b>
    <div>
        <#if message.filename??>
            <img src="/img/${message.filename}">
        </#if>
    </div>
</div>
<#else>
No messages
</#list>
</@c.page>