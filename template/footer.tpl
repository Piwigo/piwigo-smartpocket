{if !empty($cats_navbar)}
{include file='navigation_bar.tpl'|@get_extent:'navbar' navbar=$cats_navbar}
{elseif !empty($thumb_navbar)}
{include file='navigation_bar.tpl'|@get_extent:'navbar' navbar=$thumb_navbar}
{elseif !empty($navbar) and !isset($ELEMENT_CONTENT)}
{include file='navigation_bar.tpl'|@get_extent:'navbar'}
{else}
<div data-role="footer" class="pwg_footer">
  <h6>
	{'Powered by'|@translate}	<a href="{$PHPWG_URL}" class="Piwigo">Piwigo</a>
	{$VERSION}
	{if isset($CONTACT_MAIL)}
	- {'Contact'|@translate}
	<a href="mailto:{$CONTACT_MAIL}?subject={'A comment on your site'|@translate|@escape:url}">{'Webmaster'|@translate}</a>
	{/if}
  <br>{'View in'|@translate} :
<b>{'Mobile'|@translate}</b> | {if isset($TOGGLE_MOBILE_THEME_URL)} <a href="{$TOGGLE_MOBILE_THEME_URL}">{'Desktop'|@translate}</a> {/if}
  </h6>
</div>
{/if}
{footer_script require='jquery'}
document.cookie = 'screen_size='+jQuery(document).width()+'x'+jQuery(document).height();{if isset($COOKIE_PATH)}path={$COOKIE_PATH};{/if}
{/footer_script}
{get_combined_scripts load='footer'}
{if isset($footer_elements)}
{foreach $footer_elements as $v}
{$v}
{/foreach}
{/if}
</div><!-- /page -->

</body>
</html>