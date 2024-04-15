<div class="container text-center">
    <div class="row">
        <div class="col">
            <form action="/manager/dishType/add" method="post">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="titleType" class="form-label"><strong>НАЗВАНИЕ КАТЕГОРИИ*:</strong></label>
                                <input type="text" class="form-control" id="titleType" name="title">
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="ДОБАВИТЬ" class="btn btn-outline-dark"/>
                </div>
            </form>
        </div>
        <div class="col">
            <table class="table">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">НАЗВАНИЕ</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <#list dishTypes as dishType>
                                        <tr>
                                            <th scope="row"><input type="text" value="${dishType.id}" readonly="readonly"></th>
                                            <td>${dishType.title}</td>
                                            <td>
                                                <form action="/manager/dishType/remove/${dishType.id}" method="post">
                                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                                    <input type="submit" value="УДАЛИТЬ" class="btn btn-danger"/>
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
        </div>
    </div>
</div>