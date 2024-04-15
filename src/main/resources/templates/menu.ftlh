<#import "components/common.ftl" as c>

<@c.page>
    <h1 class="text-center">МЕНЮ РЕСТОРАНА</h1>
    </br>
    <#list dishTypes as dishType>
        <h2 class="text-center">${dishType.title}</h2>
        </br>
        <div class="card-group">
            <#list dishes as dish>
                <#if dishType.id = dish.dishType.id>
                    <div class="card my-2 mx-2 p-2">
                        <div class="row g-0">
                            <img src="${dish.imageUrl}" class="card-img-top" alt="Dish">
                            <div class="col-md-12">
                                <div class="card-body" width="100">
                                    <h5 class="card-title">${dish.title}</h5>
                                    <p class="card-text">${dish.description} / <i>${dish.weight}</i></p>
                                    </br>
                                    <h5 class="card-title">${dish.price} BYN</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </#if>
            </#list>
        </div>
        </br>
    </#list>
</@c.page>