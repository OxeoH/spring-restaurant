<form action="/manager/dish/add" method="post">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <label for="title" class="form-label"><strong>НАЗВАНИЕ*:</strong></label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label"><strong>ОПИСАНИЕ*:</strong></label>
                    <input type="description" class="form-control" id="description" name="description">
                </div>
                <div class="mb-3">
                    <label for="dishType" class="form-label"><strong>КАТЕГОРИЯ*:</strong></label>
                    <select name="dishType" id="dishType" class="form-control">
                        <#list dishTypes as dishType>
                            <option value="${dishType.id}">${dishType.title}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="col">
                <div class="mb-3">
                    <label for="weight" class="form-label"><strong>ВЕС*:</strong></label>
                    <input type="number" class="form-control" name="weight" id="weight" min="1">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label"><strong>ЦЕНА*:</strong></label>
                    <input type="number" class="form-control" name="price" id="price" min="1">
                </div>
                <div class="mb-3">
                    <label for="imageUrl" class="form-label"><strong>ССЫЛКА НА ФОТО*:</strong></label>
                    <input type="text" class="form-control" name="imageUrl" id="imageUrl">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="ДОБАВИТЬ" class="btn btn-outline-dark"/>
            </div>
        </div>
    </div>
</form>