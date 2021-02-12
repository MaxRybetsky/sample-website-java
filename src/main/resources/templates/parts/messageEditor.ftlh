<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Message Editor
</a>
<div class="collapse multi-collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" placeholder="Input your message"
                       class="form-control mr-3 ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>"/>
                <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
    </div>
    <div class="form-group">
        <input type="text" name="tag" placeholder="Input tag"
               class="form-control mr-3 ${(tagError??)?string('is-invalid', '')}"
               value="<#if message??>${message.tag}</#if>"/>
        <#if tagError??>
        <div class="invalid-feedback">
            ${tagError}
        </div>
    </#if>
    </div>
    <div class="form-group">
        <div class="custom-file">
            <input type="file" name="file" id="customFile"/>
            <label class="custom-file-label" for="customFile">Choose file</label>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
    <div class="form-group">
        <button type="submit" class="btn btn-primary ml-3">Add</button>
    </div>
</form>
</div>
</div>