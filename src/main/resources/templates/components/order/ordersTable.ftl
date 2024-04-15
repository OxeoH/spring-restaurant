<table class="table">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">НАЗВАНИЕ</th>
                            <th scope="col">EMAIL</th>
                            <th scope="col">ТЕЛЕФОН</th>
                            <th scope="col">ДАТА</th>
                            <th scope="col">ВРЕМЯ</th>
                            <th scope="col">ГОСТЕЙ</th>
                            <th scope="col">ПОЖЕЛАНИЯ</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list orders as order>
                            <tr>
                                <th class="p-1" scope="row"><input type="text" value="${order.id}" readonly="readonly"></th>
                                <td class="p-1"><input type="text" value="${order.name}" readonly="readonly"></td>
                                <td class="p-1"><input type="text" value="${order.email}" readonly="readonly"></td>
                                <td class="p-1"><input type="text" value="${order.phone}" readonly="readonly"></td>
                                <td class="p-1"><input type="date" value="${order.date}" readonly="readonly"></td>
                                <td class="p-1"><input type="time" value="${order.time}" readonly="readonly"></td>
                                <td class="p-1">${order.personsCount}</td>
                                <td class="p-1"><textarea style="resize: none;" rows="3" cols="16" readonly="readonly">${order.comment}</textarea></td>
                                <td class="p-2">
                                    <form action="/manager/order/remove/${order.id}" method="post">
                                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                                        <input type="submit" value="X" class="btn btn-danger">
                                    </form>
                                </td>
                            </tr>
                        </#list>
                    </tbody>
                </div>
            </div>
        </div>
    </div>
</table>
