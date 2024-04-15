<form action="/order/create" method="post" class="mt-2">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <label for="name" class="form-label"><strong>ИМЯ*:</strong></label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"><strong>EMAIL*:</strong></label>
                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label"><strong>ТЕЛЕФОН*:</strong></label>
                    <input type="text" class="form-control" name="phone" id="phone">
                </div>
            </div>
            <div class="col">
                <div class="mb-3">
                    <label for="phone" class="form-label"><strong>ДАТА*:</strong></label>
                    <input type="date" class="form-control" name="date" id="date">
                </div>
                <div class="mb-3">
                    <label for="time" class="form-label"><strong>ВРЕМЯ*:</strong></label>
                    <input type="time" class="form-control" name="time" id="time">
                </div>
                <div class="mb-3">
                    <label for="personsCount" class="form-label"><strong>КОЛ-ВО ГОСТЕЙ*:</strong></label>
                    <input type="number" value="1" min="1" class="form-control" name="personsCount" id="personsCount">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="mb-3">
                <label for="comment" class="form-label"><strong>ДОПОЛНИТЕЛЬНЫЕ ПОЖЕЛАНИЯ*:</strong></label>
                <textarea type="number" value="1" min="1" class="form-control" name="comment" id="comment" rows="4" style="resize: none;"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="ЗАБРОНИРОВАТЬ" class="btn btn-outline-dark"/>
            </div>
        </div>
    </div>
</form>
<script>
    let today = new Date();
    let dd = today.getDate();
    let mm = today.getMonth() + 1;
    let yyyy = today.getFullYear();
    if(dd < 10){
dd='0' + dd
}
if(mm < 10){
mm='0' + mm
}

today = yyyy + '-' + mm + '-' + dd;
document.getElementById("date").setAttribute("min", today);
</script>