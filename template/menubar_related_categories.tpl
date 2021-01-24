<h3>
	{'Related albums'|@translate}
</h3>
<div id="mbr_albums">
{assign var='ref_level' value=0}
{foreach from=$block->data.MENU_CATEGORIES item=cat}
  {if $cat.LEVEL > $ref_level}
  <ul>
  {else}
    </li>
    {'</ul></li>'|@str_repeat:($ref_level-$cat.LEVEL)}
  {/if}
  {if isset($cat.url)}
    <li data-role="collapsible" data-theme="d" data-mini="true">
  {else}
    <li data-role="collapsible" data-theme="c" data-mini="true">
  {/if}
        <h2>{'&nbsp;'|@str_repeat:($cat.LEVEL-1)}
  {if isset($cat.url)}
      <a href="{$cat.url}" title="{$cat.TITLE}">{$cat.name}</a>
  {else}
      {$cat.name}
  {/if}
  {if $cat.count_categories > 0}
      <span class="badge badgeCategories" title="{$cat.count_categories|translate_dec:'%d sub-album':'%d sub-albums'}">{$cat.count_categories} 📁</span>
  {/if}
  {if $cat.count_images > 0}
      <span class="badge" title="{$cat.count_images|translate_dec:'%d photo':'%d photos'}">{$cat.count_images} 🖼️</span>
  {/if}
        </h2>
  {assign var='ref_level' value=$cat.LEVEL}
{/foreach}
{'</li></ul>'|@str_repeat:$ref_level}
</div>
