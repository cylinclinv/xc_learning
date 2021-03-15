<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hello World!</title>
</head>
<body>
<table>
    <tr>
        <td>序号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>钱包</td>
    </tr>

    <#if stus??>
        <#list stus as stu>
    <tr>
        <td <#if stu.name =='小明'>style="background:red;"</#if>>${stu.name}</td>
        <td>${stu.age}</td>
        <td>${stu.mondy}</td>
    </tr>
        </#list>
    </#if>
<#list stuMap?keys as k>
<tr>
    <td>${k_index + 1}</td>
    <td>${stuMap[k].name}</td>
    <td>${stuMap[k].age}</td>
    <td>${stuMap[k].mondy}</td>
</tr>
</#list>

</table>

map名称${stuMap['stu1'].name}<br/>
map年龄${stuMap['stu1'].age}<br/>
map生日${stuMap.stu1.name}<br/>
mapmondy${stuMap.stu1.mondy}<br/>
${(stuMap.stu1.birthday?string("yyyy-MM-dd"))!}<br/>
<hr/>
<div>
    showlist
<#if stus?? && stu??>
    姓名:${stus.get(1).name}
</#if>

    ${(stuMap.stu1.name)!'default'}
    ${(stuMap.stsu1.name)!'default'}
</div>
<hr/>
<#assign text="{'bank':'工商银行','account':'10101920201920212'}" />
<#assign data=text?eval />
开户行：${data.bank}  账号：${data.account}

</body>
</html>