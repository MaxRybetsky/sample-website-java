<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div class="mb-1">Log In</div>
${message?ifExists}
<@l.login "/login" false/>
</@c.page>