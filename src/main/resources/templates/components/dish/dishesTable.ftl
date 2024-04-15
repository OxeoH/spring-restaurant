<table class="table">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">НАЗВАНИЕ</th>
                            <th scope="col">ОПИСАНИЕ</th>
                            <th scope="col">КАТЕГОРИЯ</th>
                            <th scope="col">ВЕС</th>
                            <th scope="col">ЦЕНА</th>
                            <th scope="col">ФОТО</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list dishTypes as dishType>
                            <tr>
                                <td class="text-center p-1" scope="row"><h5 class="text-center">${dishType.title}</h5></th>
                            <#list dishes as dish>
                                <#if dishType.id == dish.dishType.id>
                                    <tr>
                                        <th class="p-1" scope="row"><input type="text" value="${dish.id}" readonly="readonly"></th>
                                        <td class="p-1"><input type="text" value="${dish.title}" readonly="readonly"></td>
                                        <td class="p-1"><input type="text" value="${dish.description}" readonly="readonly"></td>
                                        <td class="p-1"><input type="text" value="${dishType.title}" readonly="readonly"></td>
                                        <td class="p-1"><input type="number" value="${dish.weight}" readonly="readonly"></td>
                                        <td class="p-1"><input type="number" value="${dish.price}" readonly="readonly"></td>
                                        <td class="p-1"><img src="${dish.imageUrl}" style="width: 70px;"/></td>
                                        <td class="p-2">
                                            <form action="/manager/dish/remove/${dish.id}" method="post">
                                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                <input type="submit" value="X" class="btn btn-danger">
                                            </form>
                                        </td>
                                    </tr>
                                </#if>
                            </#list>
                            </tr>
                        </#list>
                    </tbody>
                </div>
            </div>
        </div>
    </div>
</table>