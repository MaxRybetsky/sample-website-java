<#import "parts/common.ftlh" as c>

<@c.page>
<div class="form-row mb-3">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter?ifExists}" class="form-control mr-3"
               placeholder="Search by tag"/>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
<#include "parts/messageEditor.ftlh">
<#include "parts/messageList.ftlh">
</@c.page>