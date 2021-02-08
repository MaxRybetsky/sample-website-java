<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>


<@c.page>
<@l.logout />
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Input your message"/>
        <input type="text" name="tag" placeholder="Input tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Submit</button>
    </form>
</div>
<div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}"/>
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
</div>
<#else>
No messages
</#list>
</@c.page>