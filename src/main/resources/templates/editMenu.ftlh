<#import "components/common.ftl" as c>

<@c.page>
    <h1 class="text-center">АДМИН ПАНЕЛЬ</h1>
    </br>

    <div class="d-flex flex-column align-items-center justify-content-center" id="collapseManagerForm">
        <a class="btn btn-outline-dark btn-lg" data-bs-toggle="collapse" href="#collapseOrderForm" role="button" aria-expanded="false" aria-controls="collapseOrderForm">
            Редактировать бронь
        </a>
        </br>
        <div class="collapse my-2 p-3 border border-dark-subtle rounded" id="collapseOrderForm">
            <#include "components/order/editOrder.ftl">
        </div>
        </br>

        <a class="btn btn-outline-dark btn-lg" data-bs-toggle="collapse" href="#collapseDishForm" role="button" aria-expanded="false" aria-controls="collapseDishForm">
            Редактировать меню
        </a>
        </br>
        <div class="collapse my-2 p-3 border border-dark-subtle rounded" id="collapseDishForm">
            <#include "components/dish/editDish.ftl">
        </div>
        </br>

        <a class="btn btn-outline-dark btn-lg" data-bs-toggle="collapse" href="#collapseDishTypeForm" role="button" aria-expanded="false" aria-controls="collapseDishTypeForm">
            Редактировать категории
        </a>
        </br>
        <div class="collapse my-2 p-3 border border-dark-subtle rounded" id="collapseDishTypeForm">
            <#include "components/dishTypeForm.ftl">
        </div>
        </br>

        <a class="btn btn-outline-dark btn-lg" data-bs-toggle="collapse" href="#collapseManagerForm" role="button" aria-expanded="false" aria-controls="collapseManagerForm">
            Редактировать менеджеров
        </a>
        </br>
        <div class="collapse my-2 p-3 border border-dark-subtle rounded" id="collapseManagerForm">
            <#include "components/manager/editManagers.ftl">
        </div>
        </br>
        <div class="d-flex flex-row align-items-center justify-content-center" id="collapseManagerForm">
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="LOGOUT" class="btn btn-warning btn-lg">
            </form>
        </div>
    </div>


</@c.page>