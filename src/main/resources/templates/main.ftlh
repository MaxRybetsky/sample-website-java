<#import "parts/common.ftlh" as c>


<@c.page>

<div class="form-row mb-3">
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" value="${filter?ifExists}" class="form-control mr-3"
               placeholder="Search by tag"/>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse multi-collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" placeholder="Input your message" class="form-control mr-3"/></div>
            <div class="form-group">
                <input type="text" name="tag" placeholder="Input tag" class="form-control mr-3"/></div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile"/>
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary ml-3">Add</button>
            </div>
        </form>
    </div>
</div>
<div class="card-columns">
    <#list messages as message>
    <div class="card my-3">
        <div>
            <#if message.filename??>
            <img class="card-img-top" src="/img/${message.filename}">
        </#if>
        </div>
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
    </div>
    <#else>
    No messages
    </#list>
</div>
</@c.page>