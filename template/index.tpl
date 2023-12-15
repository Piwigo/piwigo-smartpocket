<div data-role="content">
{if isset($SEARCH_IN_SET_BUTTON) and $SEARCH_IN_SET_BUTTON}
	<div class="mcs-side-results search-in-set-button">
	  <div>
	  <p><a href="{$SEARCH_IN_SET_URL}" class="pwg-icon-search-folder">{'Search in this set'|translate}</a></p>
	  </div>
	</div>
{/if}
{if !empty($CATEGORIES)}{$CATEGORIES}{/if}
{if !empty($SEARCH_ID)}
  {include file='themes/default/template/include/search_filters.inc.tpl'}
  {combine_script id='mcs_sp' path='themes/smartpocket/js/mcs_sp.js' require='jquery'}
{/if}
{if !empty($THUMBNAILS)}
{$THUMBNAILS}
{else if !empty($SEARCH_ID)}
	
	<div class="mcs-no-result">
	  <div class="text">
		<span class="top">{'No results are available.'|@translate}</span>
		<span class="bot">{'You can try to edit your filters and perform a new search.'|translate}</span>
	  </div>
	</div>
{/if}
{if !empty($CONTENT_DESCRIPTION)}
<div class="additional_info">
	{$CONTENT_DESCRIPTION}
</div>
{/if}
{if !empty($CONTENT)}{$CONTENT}{/if}
</div>

