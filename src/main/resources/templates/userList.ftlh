<#import "parts/common.ftlh" as c>

<@c.page>
<table>
    <thead>
    <th>Name</th>
    <th>Role</th>
    <th>Cmd</th>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}">edit</a></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>