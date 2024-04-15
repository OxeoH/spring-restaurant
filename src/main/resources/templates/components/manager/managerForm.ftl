<form action="/manager/add" method="post">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <label for="username" class="form-label"><strong>LOGIN*:</strong></label>
                    <input type="text" class="form-control" id="username" name="username">
                </div>
                <div class="mb-3">
                    <label for="emailManager" class="form-label"><strong>EMAIL*:</strong></label>
                    <input type="text" class="form-control" id="emailManager" name="email" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label"><strong>PASSWORD*:</strong></label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="ДОБАВИТЬ" class="btn btn-outline-dark"/>
    </div>
</form>