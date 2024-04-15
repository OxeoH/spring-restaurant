<table class="table">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">НИК</th>
                            <th scope="col">EMAIL</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list managers as manager>
                            <#if manager.username != "admin">
                                <tr>
                                    <th class="p-1" scope="row"><input type="text" value="${manager.id}" readonly="readonly"></th>
                                    <td class="p-1"><input type="text" value="${manager.username}" readonly="readonly"></td>
                                    <td class="p-1"><input type="text" value="${manager.email}" readonly="readonly"></td>
                                    <td class="p-2">
                                        <form action="/manager/remove/${manager.id}" method="post">
                                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                                            <input type="submit" value="X" class="btn btn-danger">
                                        </form>
                                    </td>
                                </tr>
                            </#if>
                        </#list>
                        </tr>
                    </tbody>
                </div>
            </div>
        </div>
    </div>
</table>