{extends file="index.tpl"}

{block name="body"}
    <ul class="house-list">
        {foreach $data as $row}
            <li class="house-list__item">
                {if $row["NL_PROP_RESALE_PHOTO_URLS"][0]}
                    {html_image file=$row["NL_PROP_RESALE_PHOTO_URLS"][0] class="house-list__img" alt="{$row["NL_HOUSES_SHORT"]}" width="250" height="250"}
                    {else}
                    {html_image file="https://placehold.co/250" class="house-list__img" alt="{$row["NL_HOUSES_SHORT"]}" width="250" height="250"}
                {/if}
                <div class="house-list__info">
                    <div class="house-list__top">
                        <span class="house-list__type">{$row["NL_HOUSES_SHORT"]}</span>
                        <span class="house-list__price">{$row["NL_PROP_RESALE_COST_TOTAL"]} &#8381;</span>
                    </div>
                    <span class="house-list__square">Площадь: {$row["NL_PROP_RESALE_AREA_FULL"]}</span>
                    <span class="house-list__material">Материал дома: {$row["NL_MATERIAL_SHORT"]}</span>
                    <span class="house-list__floor">Этаж: {$row["NL_PROP_RESALE_FLOOR"]}</span>
                    <span class="house-list__view">Вид из окна: {$row["NL_VIEW_SHORT"]}</span>
                    {$row["NL_PROP_RESALE_DESCRIPTION"]}
                    <a class="house-list__phone" href="tel:{$row["NL_USER_PHONE"]}">{$row["NL_USER_PHONE"]}</a>
                </div>
            </li>
        {/foreach}
    </ul>
{/block}
